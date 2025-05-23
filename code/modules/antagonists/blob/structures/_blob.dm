//I will need to recode parts of this but I am way too tired atm //I don't know who left this comment but they never did come back
/obj/structure/blob
	name = "blob"
	icon = 'icons/mob/blob.dmi'
	light_range = 2
	desc = "A thick wall of writhing tendrils."
	density = TRUE
	opacity = FALSE
	anchored = TRUE
	layer = BELOW_MOB_LAYER
	can_atmos_pass = ATMOS_PASS_PROC
	obj_flags = CAN_BE_HIT|BLOCK_Z_OUT_DOWN // stops blob mobs from falling on multiz.
	var/point_return = 0 //How many points the blob gets back when it removes a blob of that type. If less than 0, blob cannot be removed.
	max_integrity = 30
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 80, ACID = 70)
	var/health_regen = 2 //how much health this blob regens when pulsed
	var/pulse_timestamp = 0 //we got pulsed when?
	var/heal_timestamp = 0 //we got healed when?
	var/brute_resist = 0.5 //multiplies brute damage by this
	var/fire_resist = 1 //multiplies burn damage by this
	var/atmosblock = TRUE //if the blob blocks atmos and heat spread
	var/mob/camera/blob/overmind

/obj/structure/blob/Initialize(mapload, owner_overmind)
	. = ..()
	if(owner_overmind)
		overmind = owner_overmind
		var/area/Ablob = get_area(src)
		if(Ablob.blob_allowed) //Is this area allowed for winning as blob?
			overmind.blobs_legit += src
	GLOB.blobs += src //Keep track of the blob in the normal list either way
	setDir(pick(GLOB.cardinals))
	update_appearance(UPDATE_ICON)
	if(atmosblock)
		air_update_turf()
	ConsumeTile()

/obj/structure/blob/proc/creation_action() //When it's created by the overmind, do this.
	return

/obj/structure/blob/Destroy()
	if(atmosblock)
		atmosblock = FALSE
		air_update_turf()
	if(overmind)
		overmind.blobs_legit -= src  //if it was in the legit blobs list, it isn't now
	GLOB.blobs -= src //it's no longer in the all blobs list either
	playsound(src.loc, 'sound/effects/splat.ogg', 50, 1) //Expand() is no longer broken, no check necessary.
	return ..()

/obj/structure/blob/blob_act()
	return

/obj/structure/blob/Adjacent(atom/neighbour)
	. = ..()
	if(.)
		var/result = 0
		var/direction = get_dir(src, neighbour)
		var/list/dirs = list("[NORTHWEST]" = list(NORTH, WEST), "[NORTHEAST]" = list(NORTH, EAST), "[SOUTHEAST]" = list(SOUTH, EAST), "[SOUTHWEST]" = list(SOUTH, WEST))
		for(var/A in dirs)
			if(direction == text2num(A))
				for(var/B in dirs[A])
					var/C = locate(/obj/structure/blob) in get_step(src, B)
					if(C)
						result++
		. -= result - 1

/obj/structure/blob/BlockThermalConductivity()
	return atmosblock

/obj/structure/blob/CanAllowThrough(atom/movable/mover, turf/target)
	. = ..()
	if(istype(mover) && (mover.pass_flags & PASSBLOB))
		return TRUE
	return FALSE

/obj/structure/blob/can_atmos_pass(turf/target_turf, vertical = FALSE)
	return !atmosblock

/obj/structure/blob/CanAStarPass(ID, dir, caller_but_not_a_byond_built_in_proc)
	. = 0
	if(ismovable(caller_but_not_a_byond_built_in_proc))
		var/atom/movable/mover = caller_but_not_a_byond_built_in_proc
		. = . || (mover.pass_flags & PASSBLOB)

/obj/structure/blob/update_icon(updates=ALL) //Updates color based on overmind color if we have an overmind.
	. = ..()
	if(overmind)
		add_atom_colour(overmind.blobstrain.color, FIXED_COLOUR_PRIORITY)
	else
		remove_atom_colour(FIXED_COLOUR_PRIORITY)

/obj/structure/blob/proc/Pulse_Area(mob/camera/blob/pulsing_overmind, claim_range = 10, pulse_range = 3, expand_range = 2)
	if(QDELETED(pulsing_overmind))
		pulsing_overmind = overmind
	Be_Pulsed()
	var/expanded = FALSE
	if(prob(70) && expand())
		expanded = TRUE
	var/list/blobs_to_affect = list()
	for(var/obj/structure/blob/B in urange(claim_range, src, 1))
		blobs_to_affect += B
	shuffle_inplace(blobs_to_affect)
	for(var/L in blobs_to_affect)
		var/obj/structure/blob/B = L
		if(!B.overmind && !istype(B, /obj/structure/blob/core) && prob(30))
			B.overmind = pulsing_overmind //reclaim unclaimed, non-core blobs.
			B.update_appearance(UPDATE_ICON)
		var/distance = get_dist(get_turf(src), get_turf(B))
		var/expand_probablity = max(20 - distance * 8, 1)
		if(B.Adjacent(src))
			expand_probablity = 20
		if(distance <= expand_range)
			var/can_expand = TRUE
			if(blobs_to_affect.len >= 120 && B.heal_timestamp > world.time)
				can_expand = FALSE
			if(can_expand && B.pulse_timestamp <= world.time && prob(expand_probablity))
				var/obj/structure/blob/newB = B.expand(null, null, !expanded) //expansion falls off with range but is faster near the blob causing the expansion
				if(newB)
					if(expanded)
						qdel(newB)
					expanded = TRUE
		if(distance <= pulse_range)
			B.Be_Pulsed()

/obj/structure/blob/proc/Be_Pulsed()
	if(pulse_timestamp <= world.time)
		ConsumeTile()
		if(heal_timestamp <= world.time)
			update_integrity(min(max_integrity, atom_integrity + health_regen))
			heal_timestamp = world.time + 20
		update_appearance(UPDATE_ICON)
		pulse_timestamp = world.time + 10
		return 1 //we did it, we were pulsed!
	return 0 //oh no we failed

/obj/structure/blob/proc/ConsumeTile()
	for(var/atom/A in loc)
		A.blob_act(src)
	if(iswallturf(loc))
		loc.blob_act(src) //don't ask how a wall got on top of the core, just eat it

/obj/structure/blob/proc/blob_attack_animation(atom/A = null, controller) //visually attacks an atom
	var/obj/effect/temp_visual/blob/O = new /obj/effect/temp_visual/blob(src.loc)
	O.setDir(dir)
	if(controller)
		var/mob/camera/blob/BO = controller
		O.color = BO.blobstrain.color
		O.alpha = 200
	else if(overmind)
		O.color = overmind.blobstrain.color
	if(A)
		O.do_attack_animation(A) //visually attack the whatever
	return O //just in case you want to do something to the animation.

/obj/structure/blob/proc/expand(turf/T = null, controller = null, expand_reaction = 1)
	if(!T)
		var/list/dirs = list(1,2,4,8)
		for(var/i = 1 to 4)
			var/dirn = pick(dirs)
			dirs.Remove(dirn)
			T = get_step(src, dirn)
			if(!(locate(/obj/structure/blob) in T))
				break
			else
				T = null
	if(!T)
		return 0
	var/make_blob = TRUE //can we make a blob?

	if(isspaceturf(T) && !(locate(/obj/structure/lattice) in T) && prob(80))
		make_blob = FALSE
		playsound(src.loc, 'sound/effects/splat.ogg', 50, 1) //Let's give some feedback that we DID try to spawn in space, since players are used to it

	ConsumeTile() //hit the tile we're in, making sure there are no border objects blocking us
	if(!T.CanPass(src, T)) //is the target turf impassable
		make_blob = FALSE
		T.blob_act(src) //hit the turf if it is
	for(var/atom/A in T)
		if(!A.CanPass(src, T)) //is anything in the turf impassable
			make_blob = FALSE
		A.blob_act(src) //also hit everything in the turf

	if(make_blob) //well, can we?
		var/obj/structure/blob/B = new /obj/structure/blob/normal(src.loc, (controller || overmind))
		B.density = TRUE
		if(T.Enter(B,src)) //NOW we can attempt to move into the tile
			B.density = initial(B.density)
			B.forceMove(T)
			B.update_appearance(UPDATE_ICON)
			if(B.overmind && expand_reaction)
				B.overmind.blobstrain.expand_reaction(src, B, T, controller)
			return B
		else
			blob_attack_animation(T, controller)
			T.blob_act(src) //if we can't move in hit the turf again
			qdel(B) //we should never get to this point, since we checked before moving in. destroy the blob so we don't have two blobs on one tile
			return null
	else
		blob_attack_animation(T, controller) //if we can't, animate that we attacked
	return null

/obj/structure/blob/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF)
		return
	if(severity > 0)
		if(overmind)
			overmind.blobstrain.emp_reaction(src, severity)
		if(prob(40 + (severity * 6)))
			new /obj/effect/temp_visual/emp(get_turf(src))

/obj/structure/blob/tesla_act(source, power, zap_range, tesla_flags, list/shocked_targets)
	. = ..()
	if(overmind)
		if(overmind.blobstrain.tesla_reaction(src, power))
			take_damage(power/400, BURN, ELECTRIC)
	else
		take_damage(power/400, BURN, ELECTRIC)

/obj/structure/blob/extinguish()
	..()
	if(overmind)
		overmind.blobstrain.extinguish_reaction(src)

/obj/structure/blob/hulk_damage()
	return 15

/obj/structure/blob/attackby(obj/item/I, mob/user, params)
	if(I.tool_behaviour == TOOL_ANALYZER)
		user.changeNext_move(CLICK_CD_MELEE)
		to_chat(user, "<b>The analyzer beeps once, then reports:</b><br>")
		SEND_SOUND(user, sound('sound/machines/ping.ogg'))
		if(overmind)
			to_chat(user, "<b>Progress to Critical Mass:</b> [span_notice("[overmind.blobs_legit.len]/[overmind.blobwincount].")]")
			to_chat(user, chemeffectreport(user).Join("\n"))
		else
			to_chat(user, "<b>Blob core neutralized. Critical mass no longer attainable.</b>")
		to_chat(user, typereport(user).Join("\n"))
	else
		return ..()

/obj/structure/blob/proc/chemeffectreport(mob/user)
	RETURN_TYPE(/list)
	. = list()
	if(overmind)
		. += list("<b>Material: <font color=\"[overmind.blobstrain.color]\">[overmind.blobstrain.name]</font>[span_notice(".")]</b>",
		"<b>Material Effects:</b> [span_notice("[overmind.blobstrain.analyzerdescdamage]")]",
		"<b>Material Properties:</b> [span_notice("[overmind.blobstrain.analyzerdesceffect]")]")
	else
		. += "<b>No Material Detected!</b>"

/obj/structure/blob/proc/typereport(mob/user)
	RETURN_TYPE(/list)
	return list("<b>Blob Type:</b> [span_notice("[uppertext(initial(name))]")]",
							"<b>Health:</b> [span_notice("[atom_integrity]/[max_integrity]")]",
							"<b>Effects:</b> [span_notice("[scannerreport()]")]")

/obj/structure/blob/attack_animal(mob/living/simple_animal/M)
	if(ROLE_BLOB in M.faction) //sorry, but you can't kill the blob as a blobbernaut
		return
	..()

/obj/structure/blob/play_attack_sound(damage_amount, damage_type = BRUTE, damage_flag = 0)
	switch(damage_type)
		if(BRUTE)
			if(damage_amount)
				playsound(src.loc, 'sound/effects/attackblob.ogg', 50, 1)
			else
				playsound(src, 'sound/weapons/tap.ogg', 50, 1)
		if(BURN)
			playsound(src.loc, 'sound/items/welder.ogg', 100, 1)

/obj/structure/blob/run_atom_armor(damage_amount, damage_type, damage_flag = 0, attack_dir)
	switch(damage_type)
		if(BRUTE)
			damage_amount *= brute_resist
		if(BURN)
			damage_amount *= fire_resist
		if(CLONE)
			damage_amount = damage_amount //no change
		else
			return 0
	var/armor_protection = 0
	if(damage_flag)
		armor_protection = armor.getRating(damage_flag)
	damage_amount = round(damage_amount * (100 - armor_protection)*0.01, 0.1)
	if(overmind && damage_flag)
		damage_amount = overmind.blobstrain.damage_reaction(src, damage_amount, damage_type, damage_flag)
	return damage_amount

/obj/structure/blob/take_damage(damage_amount, damage_type = BRUTE, damage_flag = 0, sound_effect = TRUE, attack_dir, armour_penetration = 0)
	. = ..()
	if(. && atom_integrity > 0)
		update_appearance(UPDATE_ICON)

/obj/structure/blob/atom_destruction(damage_flag)
	if(overmind)
		overmind.blobstrain.death_reaction(src, damage_flag)
	..()

/obj/structure/blob/proc/change_to(type, controller)
	if(!ispath(type))
		CRASH("change_to(): invalid type for blob")
	var/obj/structure/blob/B = new type(src.loc, controller)
	B.creation_action()
	B.update_appearance(UPDATE_ICON)
	B.setDir(dir)
	qdel(src)
	return B

/obj/structure/blob/examine(mob/user)
	. = ..()
	var/datum/atom_hud/hud_to_check = GLOB.huds[DATA_HUD_MEDICAL_ADVANCED]
	if(user.research_scanner || hud_to_check.hud_users[user])
		. += "<b>Your HUD displays an extensive report...</b><br>"
		if(overmind)
			. += overmind.blobstrain.examine(user)
		else
			. += "<b>Core neutralized. Critical mass no longer attainable.</b>"
		. += chemeffectreport(user)
		. += typereport(user)
	else
		if((user == overmind || isobserver(user)) && overmind)
			. += overmind.blobstrain.examine(user)
		. += "It seems to be made of [get_chem_name()]."

/obj/structure/blob/proc/scannerreport()
	return "A generic blob. Looks like someone forgot to override this proc, adminhelp this."

/obj/structure/blob/proc/get_chem_name()
	if(overmind)
		return overmind.blobstrain.name
	return "some kind of organic tissue"

/obj/structure/blob/normal
	name = "normal blob"
	icon_state = "blob"
	light_range = 0
	max_integrity = 25
	health_regen = 1
	brute_resist = 0.25

/obj/structure/blob/normal/Initialize(mapload, owner_overmind)
	. = ..()
	update_integrity(21) //doesn't start at full health

/obj/structure/blob/normal/scannerreport()
	if(atom_integrity <= 15)
		return "Currently weak to brute damage."
	return "N/A"

/obj/structure/blob/normal/update_appearance(updates=ALL)
	. = ..()
	if(atom_integrity <= 15)
		icon_state = "blob_damaged"
		name = "fragile blob"
		desc = "A thin lattice of slightly twitching tendrils."
		brute_resist = 0.5
	else if (overmind)
		icon_state = "blob"
		name = "blob"
		desc = "A thick wall of writhing tendrils."
		brute_resist = 0.25
	else
		icon_state = "blob"
		name = "dead blob"
		desc = "A thick wall of lifeless tendrils."
		brute_resist = 0.25
