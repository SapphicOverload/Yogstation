

/mob/living/simple_animal/attack_hand(mob/living/carbon/human/M, modifiers)
	..()
	if(modifiers && modifiers[RIGHT_CLICK])
		M.do_attack_animation(src, ATTACK_EFFECT_DISARM)
		playsound(src, 'sound/weapons/thudswoosh.ogg', 50, TRUE, -1)
		var/shove_dir = get_dir(M, src)
		if(move_resist > M.move_force || !Move(get_step(src, shove_dir), shove_dir))
			log_combat(M, src, "shoved", "failing to move it")
			M.visible_message(span_danger("[M.name] shoves [src]!"),
				span_danger("You shove [src]!"), span_hear("You hear aggressive shuffling!"), COMBAT_MESSAGE_RANGE, list(src))
			to_chat(src, span_userdanger("You're shoved by [M.name]!"))
			return TRUE
		log_combat(M, src, "shoved", "pushing it")
		M.visible_message(span_danger("[M.name] shoves [src], pushing [p_them()]!"),
			span_danger("You shove [src], pushing [p_them()]!"), span_hear("You hear aggressive shuffling!"), COMBAT_MESSAGE_RANGE, list(src))
		to_chat(src, span_userdanger("You're pushed by [name]!"))
		return TRUE
	else if(M.combat_mode)
		if(HAS_TRAIT(M, TRAIT_PACIFISM))
			to_chat(M, span_notice("You don't want to hurt [src]!"))
			return
		if(!synth_check(M, SYNTH_ORGANIC_HARM))
			to_chat(M, span_notice("You don't want to hurt [src]!"))
			return
		last_damage = "fist"
		M.do_attack_animation(src, ATTACK_EFFECT_PUNCH)
		visible_message(span_danger("[M] [response_harm] [src]!"),\
		span_userdanger("[M] [response_harm] [src]!"), null, COMBAT_MESSAGE_RANGE)
		playsound(loc, attacked_sound, 25, 1, -1)
		attack_threshold_check(harm_intent_damage)
		log_combat(M, src, "attacked")
		updatehealth()
		return TRUE
	else
		if (health > 0)
			visible_message(span_notice("[M] [response_help] [src]."))
			playsound(loc, 'sound/weapons/thudswoosh.ogg', 50, 1, -1)	

/mob/living/simple_animal/attack_hulk(mob/living/carbon/human/user, does_attack_animation = 0)
	if(user.combat_mode)
		if(HAS_TRAIT(user, TRAIT_PACIFISM))
			to_chat(user, span_notice("You don't want to hurt [src]!"))
			return FALSE
		..(user, 1)
		playsound(loc, "punch", 25, 1, -1)
		visible_message(span_danger("[user] has punched [src]!"), \
			span_userdanger("[user] has punched [src]!"), null, COMBAT_MESSAGE_RANGE)
		adjustBruteLoss(15)
		return TRUE

/mob/living/simple_animal/attack_paw(mob/living/carbon/monkey/M, modifiers)
	if(..()) //successful monkey bite.
		if(stat != DEAD)
			var/damage = rand(1, 3)
			attack_threshold_check(damage)
			return 1
	if (!M.combat_mode)
		if (health > 0)
			visible_message(span_notice("[M.name] [response_help] [src]."))
			playsound(loc, 'sound/weapons/thudswoosh.ogg', 50, 1, -1)


/mob/living/simple_animal/attack_alien(mob/living/carbon/alien/humanoid/M, modifiers)
	if(..()) //punching or shoving.
		if(modifiers && modifiers[RIGHT_CLICK])
			playsound(loc, 'sound/weapons/pierce.ogg', 25, 1, -1)
			visible_message(span_danger("[M] [response_disarm] [name]!"), \
					span_userdanger("[M] [response_disarm] [name]!"), null, COMBAT_MESSAGE_RANGE)
			log_combat(M, src, "disarmed")
		else
			var/damage = rand(15, 30)
			visible_message(span_danger("[M] has slashed at [src]!"), \
					span_userdanger("[M] has slashed at [src]!"), null, COMBAT_MESSAGE_RANGE)
			playsound(loc, 'sound/weapons/slice.ogg', 25, 1, -1)
			attack_threshold_check(damage)
			log_combat(M, src, "attacked")
		return 1

/mob/living/simple_animal/attack_larva(mob/living/carbon/alien/larva/L, modifiers)
	. = ..()
	if(. && stat != DEAD) //successful larva bite
		var/damage = rand(5, 10)
		. = attack_threshold_check(damage)
		if(.)
			L.amount_grown = min(L.amount_grown + damage, L.max_grown)

/mob/living/simple_animal/attack_animal(mob/living/simple_animal/M)
	. = ..()
	if(.)
		var/damage = rand(M.melee_damage_lower, M.melee_damage_upper)
		return attack_threshold_check(damage, M.melee_damage_type)

/mob/living/simple_animal/attack_slime(mob/living/simple_animal/slime/M)
	if(..()) //successful slime attack
		var/damage = rand(15, 25)
		if(M.is_adult)
			damage = rand(20, 35)
		return attack_threshold_check(damage)

/mob/living/simple_animal/attack_drone(mob/living/simple_animal/drone/M)
	if(M.combat_mode) //No kicking dogs even as a rogue drone. Use a weapon.
		return
	return ..()

/mob/living/simple_animal/proc/attack_threshold_check(damage, damagetype = BRUTE, armorcheck = MELEE)
	var/temp_damage = damage
	if(!damage_coeff[damagetype])
		temp_damage = 0
	else
		temp_damage *= damage_coeff[damagetype]

	if(temp_damage >= 0 && temp_damage <= force_threshold)
		visible_message(span_warning("[src] looks unharmed."))
		return FALSE
	else
		apply_damage(damage, damagetype, null, getarmor(null, armorcheck))
		return TRUE

/mob/living/simple_animal/bullet_act(obj/projectile/Proj)
	apply_damage(Proj.damage, Proj.damage_type)
	last_damage = Proj.name
	Proj.on_hit(src)
	return BULLET_ACT_HIT

/mob/living/simple_animal/ex_act(severity, target, origin)
	if(origin && istype(origin, /datum/spacevine_mutation) && isvineimmune(src))
		return
	..()
	if(QDELETED(src))
		return
	switch (severity)
		if (EXPLODE_DEVASTATE)
			ex_act_devastate()
		if (EXPLODE_HEAVY)
			ex_act_heavy()

		if (EXPLODE_LIGHT)
			ex_act_light()

/// Called when a devastating explosive acts on this mob
/mob/living/simple_animal/proc/ex_act_devastate()
	var/bomb_armor = getarmor(null, BOMB)
	if(prob(bomb_armor))
		adjustBruteLoss(500)
	else
		gib()

/// Called when a heavy explosive acts on this mob
/mob/living/simple_animal/proc/ex_act_heavy()
	var/bomb_armor = getarmor(null, BOMB)
	var/bloss = 60
	if(prob(bomb_armor))
		bloss = bloss / 1.5
	adjustBruteLoss(bloss)

/// Called when a light explosive acts on this mob
/mob/living/simple_animal/proc/ex_act_light()
	var/bomb_armor = getarmor(null, BOMB)
	var/bloss = 30
	if(prob(bomb_armor))
		bloss = bloss / 1.5
	adjustBruteLoss(bloss)

/mob/living/simple_animal/blob_act(obj/structure/blob/B)
	adjustBruteLoss(20)
	return

/mob/living/simple_animal/do_attack_animation(atom/A, visual_effect_icon, used_item, no_effect)
	if(!no_effect && !visual_effect_icon && melee_damage_upper)
		if(attack_vis_effect && !iswallturf(A)) // override the standard visual effect.
			visual_effect_icon = attack_vis_effect
		else if(melee_damage_upper < 10)
			visual_effect_icon = ATTACK_EFFECT_PUNCH
		else
			visual_effect_icon = ATTACK_EFFECT_SMASH
	..()
