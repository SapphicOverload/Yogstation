///////////////////////////////////
//////////Autolathe Designs ///////
///////////////////////////////////

/datum/design/airlock_scanner
	name = "Airlock Scanner"
	id = "airlock_scanner"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/airlock_scanner
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/bucket
	name = "Bucket"
	id = "bucket"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1000)
	build_path = /obj/item/reagent_containers/glass/bucket
	category = list("initial","Tools","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/mop
	name = "Mop"
	id = "mop"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1000)
	build_path = /obj/item/mop
	category = list("initial","Tools","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/broom
	name="Broom"
	id="broom"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 2000)
	build_path = /obj/item/broom
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/crowbar
	name = "Pocket Crowbar"
	id = "crowbar"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50)
	build_path = /obj/item/crowbar
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/flashlight
	name = "Flashlight"
	id = "flashlight"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 20)
	build_path = /obj/item/flashlight
	category = list("initial","Tools","Equipment")

/datum/design/blastdoorcontroller
	name = "Blast Door Controller"
	id = "blastdoorcontroller"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 20)
	build_path = /obj/item/assembly/control
	category = list("initial","Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/extinguisher
	name = "Fire Extinguisher"
	id = "extinguisher"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 90)
	build_path = /obj/item/extinguisher
	category = list("initial","Tools","Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/pocketfireextinguisher
	name = "Pocket Fire Extinguisher"
	id = "pocketfireextinguisher"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 40)
	build_path = /obj/item/extinguisher/mini
	category = list("initial","Tools","Equipment")

/datum/design/multitool
	name = "Multitool"
	id = "multitool"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 20)
	build_path = /obj/item/multitool
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/analyzer
	name = "Analyzer"
	id = "analyzer"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 30, /datum/material/glass = 20)
	build_path = /obj/item/analyzer
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/tscanner
	name = "T-Ray Scanner"
	id = "tscanner"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 150)
	build_path = /obj/item/t_scanner
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/weldingtool
	name = "Welding Tool"
	id = "welding_tool"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 70, /datum/material/glass = 20)
	build_path = /obj/item/weldingtool
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/mini_weldingtool
	name = "Emergency Welding Tool"
	id = "mini_welding_tool"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 30, /datum/material/glass = 10)
	build_path = /obj/item/weldingtool/mini
	category = list("initial","Tools")

/datum/design/screwdriver
	name = "Screwdriver"
	id = "screwdriver"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 75)
	build_path = /obj/item/screwdriver
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/wirecutters
	name = "Wirecutters"
	id = "wirecutters"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 80)
	build_path = /obj/item/wirecutters
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/wrench
	name = "Wrench"
	id = "wrench"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 150)
	build_path = /obj/item/wrench
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/plunger
	name = "Plunger"
	id = "plunger"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 150)
	build_path = /obj/item/plunger
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_CARGO | DEPARTMENTAL_FLAG_MEDICAL //yogs, no plumbing so only cargo (miners) and medical

/datum/design/welding_helmet
	name = "Welding Helmet"
	id = "welding_helmet"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 1750, /datum/material/glass = 400)
	build_path = /obj/item/clothing/head/welding
	category = list("initial","Tools")

/datum/design/cable_coil
	name = "Cable Coil"
	id = "cable_coil"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 10, /datum/material/glass = 5)
	build_path = /obj/item/stack/cable_coil/random
	category = list("initial","Tools","Tool Designs")
	maxstack = MAXCOIL
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/ethernet_coil
	name = "Ethernet Coil"
	id = "ethernet_coil"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 10, /datum/material/glass = 5)
	build_path = /obj/item/stack/ethernet_coil
	category = list("initial","Tools","Tool Designs")
	maxstack = MAXCOIL
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/toolbox
	name = "Toolbox"
	id = "tool_box"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500)
	build_path = /obj/item/storage/toolbox
	category = list("initial","Tools")

/datum/design/apc_board
	name = "APC Module"
	id = "power control"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 100, /datum/material/glass = 100)
	build_path = /obj/item/electronics/apc
	category = list("initial", "Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/airlock_board
	name = "Airlock Electronics"
	id = "airlock_board"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/electronics/airlock
	category = list("initial", "Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/firelock_board
	name = "Firelock Circuitry"
	id = "firelock_board"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/electronics/firelock
	category = list("initial", "Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/airalarm_electronics
	name = "Air Alarm Electronics"
	id = "airalarm_electronics"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/electronics/airalarm
	category = list("initial", "Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/acc_electronics
	name = "Airlock Controller Electronics"
	id = "aac_electronics"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/electronics/advanced_airlock_controller
	category = list("initial", "Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/firealarm_electronics
	name = "Fire Alarm Electronics"
	id = "firealarm_electronics"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/electronics/firealarm
	category = list("initial", "Electronics")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/camera
	name = "Camera"
	id = "camera"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 100)
	build_path = /obj/item/camera
	category = list("initial", "Miscellaneous")

/datum/design/camera_film
	name = "Camera Film Cartridge"
	id = "camera_film"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 10, /datum/material/glass = 10)
	build_path = /obj/item/camera_film
	category = list("initial", "Miscellaneous")

/datum/design/earmuffs
	name = "Earmuffs"
	id = "earmuffs"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 500)
	build_path = /obj/item/clothing/ears/earmuffs
	category = list("initial", "Miscellaneous")

/datum/design/pipe_painter
	name = "Pipe Painter"
	id = "pipe_painter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 2000)
	build_path = /obj/item/pipe_painter
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/airlock_painter
	name = "Airlock Painter"
	id = "airlock_painter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/airlock_painter
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/decal_painter
	name = "Decal Painter"
	id = "decal_painter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/airlock_painter/decal
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/tile_painter
	name = "Tile Painter"
	id = "tile_painter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50, /datum/material/glass = 50)
	build_path = /obj/item/airlock_painter/decal/tile
	category = list("initial","Tools","Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/emergency_oxygen
	name = "Emergency Oxygen Tank"
	id = "emergency_oxygen"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 500)
	build_path = /obj/item/tank/internals/emergency_oxygen/empty
	category = list("initial","Miscellaneous","Equipment")

/datum/design/emergency_oxygen_engi
	name = "Extended-Capacity Emergency Oxygen Tank"
	id = "emergency_oxygen_engi"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 750)
	build_path = /obj/item/tank/internals/emergency_oxygen/engi/empty
	category = list("hacked","Miscellaneous","Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_CARGO

/datum/design/plasmaman_tank_belt
	name = "Plasmaman Belt Tank"
	id = "plasmaman_tank_belt"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 800)
	build_path = /obj/item/tank/internals/plasmaman/belt/empty
	category = list("hacked","Miscellaneous","Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_CARGO

/datum/design/vox_tank
	name = "Vox Nitrogen Tank"
	id = "vox_tank"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 800)
	build_path = /obj/item/tank/internals/emergency_oxygen/vox/empty
	category = list("hacked","Miscellaneous","Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_CARGO

/datum/design/metal
	name = "Metal"
	id = "metal"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = MINERAL_MATERIAL_AMOUNT)
	build_path = /obj/item/stack/sheet/metal
	category = list("initial","Construction")
	maxstack = 50

/datum/design/glass
	name = "Glass"
	id = "glass"
	build_type = AUTOLATHE
	materials = list(/datum/material/glass = MINERAL_MATERIAL_AMOUNT)
	build_path = /obj/item/stack/sheet/glass
	category = list("initial","Construction")
	maxstack = 50

/datum/design/rglass
	name = "Reinforced Glass"
	id = "rglass"
	build_type = AUTOLATHE | SMELTER | PROTOLATHE
	materials = list(/datum/material/iron = 1000, /datum/material/glass = MINERAL_MATERIAL_AMOUNT)
	build_path = /obj/item/stack/sheet/rglass
	category = list("initial","Construction","Stock Parts")
	maxstack = 50

/datum/design/rods
	name = "Metal Rod"
	id = "rods"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 1000)
	build_path = /obj/item/stack/rods
	category = list("initial","Construction")
	maxstack = 50

/datum/design/rcd_ammo
	name = "Compressed Matter Cartridge"
	id = "rcd_ammo"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 12000, /datum/material/glass=8000)
	build_path = /obj/item/rcd_ammo
	category = list("initial","Construction")

/datum/design/kitchen_knife
	name = "Kitchen Knife"
	id = "kitchen_knife"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 12000)
	build_path = /obj/item/kitchen/knife
	category = list("initial","Dinnerware")

/datum/design/fork
	name = "Fork"
	id = "fork"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 80)
	build_path = /obj/item/kitchen/fork
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/tray
	name = "Tray"
	id = "tray"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 3000)
	build_path = /obj/item/storage/bag/tray
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/plate
	name = "Plate"
	id = "plate"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1500)
	build_path = /obj/item/plate
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/bowl
	name = "Bowl"
	id = "bowl"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 500)
	build_path = /obj/item/reagent_containers/glass/bowl
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/mixbowl
	name = "Mixing Bowl"
	id = "mixing_bowl"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1750)
	build_path = /obj/item/reagent_containers/glass/mixbowl
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/drinking_glass
	name = "Drinking Glass"
	id = "drinking_glass"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 500)
	build_path = /obj/item/reagent_containers/food/drinks/drinkingglass
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/shot_glass
	name = "Shot Glass"
	id = "shot_glass"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 100)
	build_path = /obj/item/reagent_containers/food/drinks/drinkingglass/shotglass
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/shaker
	name = "Shaker"
	id = "shaker"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1500)
	build_path = /obj/item/reagent_containers/food/drinks/shaker
	category = list("initial","Dinnerware","Service")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/cultivator
	name = "Cultivator"
	id = "cultivator"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron=50)
	build_path = /obj/item/cultivator
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/plant_analyzer
	name = "Plant Analyzer"
	id = "plant_analyzer"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 30, /datum/material/glass = 20)
	build_path = /obj/item/plant_analyzer
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/shovel
	name = "Shovel"
	id = "shovel"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50)
	build_path = /obj/item/shovel
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/spade
	name = "Spade"
	id = "spade"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 50)
	build_path = /obj/item/shovel/spade
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/hatchet
	name = "Hatchet"
	id = "hatchet"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/hatchet
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/rsf
	name = "Rapid Service Fabricator (RSF)"
	id = "rsf"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 7500)
	build_path = /obj/item/rsf
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/rls
	name = "Remote Light Switch (RLS)"
	id = "rls"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 15000, /datum/material/glass = 7500)
	build_path = /obj/item/rls
	category = list("initial","Miscellaneous", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_SERVICE

/datum/design/foilhat
	name = "Tinfoil Hat"
	id = "tinfoil_hat"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 5500)
	build_path = /obj/item/clothing/head/foilhat
	category = list("hacked", "Miscellaneous")

/datum/design/scalpel
	name = "Scalpel"
	id = "scalpel"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 4000, /datum/material/glass = 1000)
	build_path = /obj/item/scalpel
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/circular_saw
	name = "Circular Saw"
	id = "circular_saw"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 6000)
	build_path = /obj/item/circular_saw
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/bonesetter
	name = "Bonesetter"
	id = "bonesetter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1000)
	build_path = /obj/item/bonesetter
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/surgicaldrill
	name = "Surgical Drill"
	id = "surgicaldrill"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 6000)
	build_path = /obj/item/surgicaldrill
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/retractor
	name = "Retractor"
	id = "retractor"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 6000, /datum/material/glass = 3000)
	build_path = /obj/item/retractor
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/cautery
	name = "Cautery"
	id = "cautery"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 2500, /datum/material/glass = 750)
	build_path = /obj/item/cautery
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/hemostat
	name = "Hemostat"
	id = "hemostat"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 5000, /datum/material/glass = 2500)
	build_path = /obj/item/hemostat
	category = list("initial", "Medical", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/beaker
	name = "Beaker"
	id = "beaker"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 500)
	build_path = /obj/item/reagent_containers/glass/beaker
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SERVICE

/datum/design/large_beaker
	name = "Large Beaker"
	id = "large_beaker"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 2500)
	build_path = /obj/item/reagent_containers/glass/beaker/large
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SERVICE

/datum/design/vial
	name = "Vial"
	id = "vial"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 250)
	build_path = /obj/item/reagent_containers/glass/bottle/vial
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SERVICE

/datum/design/healthanalyzer
	name = "Health Analyzer"
	id = "healthanalyzer"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 50)
	build_path = /obj/item/healthanalyzer
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/pillbottle
	name = "Pill Bottle"
	id = "pillbottle"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 20, /datum/material/glass = 100)
	build_path = /obj/item/storage/pill_bottle
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/beanbag_slug
	name = "Beanbag Slug"
	id = "beanbag_slug"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 2000)
	build_path = /obj/item/ammo_casing/shotgun/beanbag
	category = list("initial", "Security")

/datum/design/rubbershot
	name = "Rubber Shot"
	id = "rubber_shot"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 4000)
	build_path = /obj/item/ammo_casing/shotgun/rubbershot
	category = list("initial", "Security")

/datum/design/recorder
	name = "Universal Recorder"
	id = "recorder"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 60, /datum/material/glass = 30)
	build_path = /obj/item/taperecorder/empty
	category = list("initial", "Miscellaneous")

/datum/design/recorder_tape
	name = "Tape"
	id = "recorder_tape"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 20, /datum/material/glass = 5)
	build_path = /obj/item/tape/random
	category = list("initial", "Miscellaneous")

/datum/design/igniter
	name = "Igniter"
	id = "igniter"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 50)
	build_path = /obj/item/assembly/igniter
	category = list("initial", "Miscellaneous")

/datum/design/signaler
	name = "Remote Signaling Device"
	id = "signaler"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 400, /datum/material/glass = 120)
	build_path = /obj/item/assembly/signaler
	category = list("initial", "T-Comm", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/signalbutton
	name = "Remote Signaling Button"
	id = "signalbutton"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 400, /datum/material/glass = 120)
	build_path = /obj/item/assembly/signaler/button
	category = list("initial", "T-Comm", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/mousetrap
	name = "Mousetrap"
	id = "mousetrap"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 100)
	build_path = /obj/item/assembly/mousetrap
	category = list("initial", "Miscellaneous", "Service")

/datum/design/radio_headset
	name = "Radio Headset"
	id = "radio_headset"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 75)
	build_path = /obj/item/radio/headset
	category = list("initial", "T-Comm")

/datum/design/bounced_radio
	name = "Station Bounced Radio"
	id = "bounced_radio"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 75, /datum/material/glass = 25)
	build_path = /obj/item/radio/off
	category = list("initial", "T-Comm", "Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SERVICE

/datum/design/intercom_frame
	name = "Intercom Frame"
	id = "intercom_frame"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 75, /datum/material/glass = 25)
	build_path = /obj/item/wallframe/intercom
	category = list("initial", "T-Comm", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SERVICE

/datum/design/infrared_emitter
	name = "Infrared Emitter"
	id = "infrared_emitter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 1000, /datum/material/glass = 500)
	build_path = /obj/item/assembly/infra
	category = list("initial", "Miscellaneous", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/health_sensor
	name = "Health Sensor"
	id = "health_sensor"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 800, /datum/material/glass = 200)
	build_path = /obj/item/assembly/health
	category = list("initial", "Medical", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/timer
	name = "Timer"
	id = "timer"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 50)
	build_path = /obj/item/assembly/timer
	category = list("initial", "Miscellaneous", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/voice_analyser
	name = "Voice Analyser"
	id = "voice_analyser"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 50)
	build_path = /obj/item/assembly/voice
	category = list("initial", "Miscellaneous", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/light_tube
	name = "Light Tube"
	id = "light_tube"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 100)
	build_path = /obj/item/light/tube
	category = list("initial", "Construction", "Service")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SERVICE

/datum/design/light_bulb
	name = "Light Bulb"
	id = "light_bulb"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/glass = 100)
	build_path = /obj/item/light/bulb
	category = list("initial", "Construction", "Service")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SERVICE

/datum/design/camera_assembly
	name = "Camera Assembly"
	id = "camera_assembly"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 400, /datum/material/glass = 250)
	build_path = /obj/item/wallframe/camera
	category = list("initial", "Construction", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/newscaster_frame
	name = "Newscaster Frame"
	id = "newscaster_frame"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 14000, /datum/material/glass = 8000)
	build_path = /obj/item/wallframe/newscaster
	category = list("initial", "Construction", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SERVICE

/datum/design/bounty_board_frame
	name = "Bounty Board Frame"
	id = "bountyboard_frame"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 14000, /datum/material/glass = 8000)
	build_path = /obj/item/wallframe/bounty_board
	category = list("initial", "Construction")

/datum/design/syringe
	name = "Syringe"
	id = "syringe"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 10, /datum/material/glass = 20)
	build_path = /obj/item/reagent_containers/syringe
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/dropper
	name = "Dropper"
	id = "dropper"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 30, /datum/material/glass = 10)
	build_path = /obj/item/reagent_containers/dropper
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/prox_sensor
	name = "Proximity Sensor"
	id = "prox_sensor"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 800, /datum/material/glass = 200)
	build_path = /obj/item/assembly/prox_sensor
	category = list("initial", "Miscellaneous", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/foam_dart
	name = "Box of Foam Darts"
	id = "foam_dart"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500)
	build_path = /obj/item/ammo_box/foambox
	category = list("initial", "Miscellaneous")

//hacked autolathe recipes

/datum/design/rpd
	name = "Rapid Pipe Dispenser (RPD)"
	id = "rpd"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 22000, /datum/material/glass = 18000)
	build_path = /obj/item/pipe_dispenser
	category = list("hacked", "Construction", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/electropack
	name = "Electropack"
	id = "electropack"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 2500)
	build_path = /obj/item/electropack
	category = list("hacked", "Tools")

/datum/design/large_welding_tool
	name = "Industrial Welding Tool"
	id = "large_welding_tool"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 70, /datum/material/glass = 60)
	build_path = /obj/item/weldingtool/largetank
	category = list("hacked", "Tools", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING

/datum/design/handcuffs
	name = "Handcuffs"
	id = "handcuffs"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 500)
	build_path = /obj/item/restraints/handcuffs
	category = list("hacked", "Security", "Equipment")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_ARMORY

/datum/design/receiver
	name = "Modular Receiver"
	id = "receiver"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/weaponcrafting/receiver
	category = list("hacked", "Security", "Weapons")
	departmental_flags = DEPARTMENTAL_FLAG_SECURITY | DEPARTMENTAL_FLAG_ARMORY

/datum/design/shotgun_slug
	name = "Shotgun Slug"
	id = "shotgun_slug"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 4000)
	build_path = /obj/item/ammo_casing/shotgun
	category = list("hacked", "Security")

/datum/design/buckshot_shell
	name = "Buckshot Shell"
	id = "buckshot_shell"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 4000)
	build_path = /obj/item/ammo_casing/shotgun/buckshot
	category = list("hacked", "Security")

/datum/design/shotgun_dart
	name = "Shotgun Dart"
	id = "shotgun_dart"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 4000)
	build_path = /obj/item/ammo_casing/shotgun/dart
	category = list("hacked", "Security")

/datum/design/incendiary_slug
	name = "Incendiary Slug"
	id = "incendiary_slug"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 4000)
	build_path = /obj/item/ammo_casing/shotgun/incendiary
	category = list("hacked", "Security")

/datum/design/riot_dart
	name = "Foam Riot Dart"
	id = "riot_dart"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 1000) //Discount for making individually - no box = less metal!
	build_path = /obj/item/ammo_casing/reusable/foam_dart/riot
	category = list("hacked", "Security")

/datum/design/riot_darts
	name = "Foam Riot Dart Box"
	id = "riot_darts"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 50000) //Comes with 40 darts
	build_path = /obj/item/ammo_box/foambox/riot
	category = list("hacked", "Security")

/datum/design/c38_rubber
	name = ".38 Rubber Speedloader"
	id = "c38_rubber"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 20000)
	build_path = /obj/item/ammo_box/c38/rubber
	category = list("initial", "Security")

/datum/design/c38
	name = ".38 Speedloader"
	id = "c38"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 20000)
	build_path = /obj/item/ammo_box/c38
	category = list("hacked", "Security")

/datum/design/a357
	name = ".357 Bullet"
	id = "a357"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 2000)
	build_path = /obj/item/ammo_casing/a357
	category = list("hacked", "Security")

/datum/design/a357/ironfeather
	name = ".357 Ironfeather Bullet"
	id = "a357_ironfeather"
	build_path = /obj/item/ammo_casing/a357/ironfeather

/datum/design/c10mm
	name = "Ammo Box (10mm)"
	id = "c10mm"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 30000)
	build_path = /obj/item/ammo_box/c10mm
	category = list("hacked", "Security")

/datum/design/c10mm/disk
	id = "c10mm_disk"
	category = list("Security")

/datum/design/c10mm/cs
	name = "Ammo Box (10mm caseless)"
	id = "c10mm_cs"
	build_path = /obj/item/ammo_box/c10mm/cs

/datum/design/c10mm/cs/disk
	id = "c10mm_cs_disk"
	category = list("Security")

/datum/design/c10mm/sp
	name = "Ammo Box (10mm soporific)"
	id = "c10mm_sp"
	build_path = /obj/item/ammo_box/c10mm/sp

/datum/design/c10mm/sp/disk
	id = "c10mm_sp_disk"
	category = list("Security")

/obj/item/disk/design_disk/illegal_ammo
	name = "Illegal Ammo Design Disk"
	desc = "A disk containing designs for both standard and non-standard 10mm and .357 bullet designs."
	icon_state = "datadisk1"
	var/list/ammo_types = list(/datum/design/c10mm/disk, /datum/design/c10mm/cs/disk, /datum/design/c10mm/sp/disk, /datum/design/c10mm/ap, /datum/design/c10mm/hp, /datum/design/c10mm/inc, /datum/design/c10mm/emp,
								/datum/design/box_a357/disk, /datum/design/box_a357/ironfeather/disk, /datum/design/box_a357/nutcracker, /datum/design/box_a357/metalshock, /datum/design/box_a357/heartpiercer, /datum/design/box_a357/wallstake)

/obj/item/disk/design_disk/illegal_ammo/Initialize(mapload)
	. = ..()
	max_blueprints = ammo_types.len
	for(var/design in ammo_types)
		var/datum/design/new_design = design
		blueprints += new new_design

/datum/design/c10mm/ap
	name = "Ammo Box (10mm armor-piercing)"
	id = "c10mm_ap"
	materials = list(/datum/material/iron = 45000)
	build_path = /obj/item/ammo_box/c10mm/ap
	category = list("Security")

/datum/design/c10mm/hp
	name = "Ammo Box (10mm hollow-point)"
	id = "c10mm_hp"
	materials = list(/datum/material/iron = 45000)
	build_path = /obj/item/ammo_box/c10mm/hp
	category = list("Security")

/datum/design/c10mm/inc
	name = "Ammo Box (10mm incendiary)"
	id = "c10mm_inc"
	materials = list(/datum/material/iron = 45000)
	build_path = /obj/item/ammo_box/c10mm/inc
	category = list("Security")

/datum/design/c10mm/emp
	name = "Ammo Box (10mm EMP)"
	id = "c10mm_emp"
	materials = list(/datum/material/iron = 45000)
	build_path = /obj/item/ammo_box/c10mm/emp
	category = list("Security")

/datum/design/c45
	name = "Ammo Box (.45)"
	id = "c45"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 30000)
	build_path = /obj/item/ammo_box/c45
	category = list("hacked", "Security")

/datum/design/c9mm
	name = "Ammo Box (9mm)"
	id = "c9mm"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 30000)
	build_path = /obj/item/ammo_box/c9mm
	category = list("hacked", "Security")

/datum/design/box_a357
	name = "Ammo Box (.357)"
	id = "box_a357"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 40000)
	build_path = /obj/item/ammo_box/no_direct/a357
	category = list("hacked", "Security")

/datum/design/box_a357/disk
	id = "box_a357_disk"
	category = list("Security")

/datum/design/box_a357/ironfeather
	name = "Ammo Box (.357 Ironfeather)"
	id = "box_a357_ironfeather"
	build_path = /obj/item/ammo_box/no_direct/a357/ironfeather

/datum/design/box_a357/ironfeather/disk
	id = "box_a357_ironfeather_disk"
	category = list("Security")

/datum/design/box_a357/nutcracker
	name = "Ammo Box (.357 Nutcracker)"
	id = "box_a357_nutcracker"
	materials = list (/datum/material/iron = 60000)
	build_path = /obj/item/ammo_box/no_direct/a357/nutcracker
	category = list ("Security")

/datum/design/box_a357/metalshock
	name = "Ammo Box (.357 Metalshock)"
	id = "box_a357_metalshock"
	materials = list (/datum/material/iron = 60000)
	build_path = /obj/item/ammo_box/no_direct/a357/metalshock
	category = list ("Security")

/datum/design/box_a357/heartpiercer
	name = "Ammo Box (.357 Heartpiercer)"
	id = "box_a357_heartpiercer"
	materials = list (/datum/material/iron = 60000)
	build_path = /obj/item/ammo_box/no_direct/a357/heartpiercer
	category = list ("Security")

/datum/design/box_a357/wallstake
	name = "Ammo Box (.357 Wallstake)"
	id = "box_a357_wallstake"
	materials = list (/datum/material/iron = 60000)
	build_path = /obj/item/ammo_box/no_direct/a357/wallstake
	category = list ("Security")

/datum/design/box_a38
	name = "Ammo Box (.38 Special)"
	id = "box_a38"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 40000)
	build_path = /obj/item/ammo_box/no_direct/a38
	category = list("hacked", "Security")

/datum/design/box_a38/rubber
	name = "Ammo Box (.38 Rubber)"
	id = "box_a38_rubber"
	build_path = /obj/item/ammo_box/no_direct/a38/rubber
	category = list("initial", "Security")

/datum/design/cleaver
	name = "Butcher's Cleaver"
	id = "cleaver"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 18000)
	build_path = /obj/item/kitchen/knife/butcher
	category = list("hacked", "Dinnerware")

/datum/design/spraycan
	name = "Spraycan"
	id = "spraycan"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 100, /datum/material/glass = 100)
	build_path = /obj/item/toy/crayon/spraycan
	category = list("initial", "Tools")

/datum/design/desttagger
	name = "Destination Tagger"
	id = "desttagger"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 250, /datum/material/glass = 125)
	build_path = /obj/item/destTagger
	category = list("initial", "Electronics")

/datum/design/handlabeler
	name = "Hand Labeler"
	id = "handlabel"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 150, /datum/material/glass = 125)
	build_path = /obj/item/hand_labeler
	category = list("initial", "Electronics")

/datum/design/geiger
	name = "Geiger Counter"
	id = "geigercounter"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 150, /datum/material/glass = 150)
	build_path = /obj/item/geiger_counter
	category = list("initial", "Tools", "Tool Designs")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE

/datum/design/turret_control_frame
	name = "Turret Control Frame"
	id = "turret_control"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 12000)
	build_path = /obj/item/wallframe/turret_control
	category = list("initial", "Construction")

/datum/design/conveyor_belt
	name = "Conveyor Belt"
	id = "conveyor_belt"
	build_type = AUTOLATHE | MECHFAB | PROTOLATHE
	materials = list(/datum/material/iron = 1000)
	build_path = /obj/item/stack/conveyor
	category = list("initial", "Construction", "Misc", "Assemblies")
	maxstack = 30
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE | DEPARTMENTAL_FLAG_CARGO


/datum/design/conveyor_switch
	name = "Conveyor Belt Switch"
	id = "conveyor_switch"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 450, /datum/material/glass = 190)
	build_path = /obj/item/conveyor_switch_construct
	category = list("initial", "Construction", "Assemblies")
	departmental_flags = DEPARTMENTAL_FLAG_ENGINEERING | DEPARTMENTAL_FLAG_SCIENCE | DEPARTMENTAL_FLAG_CARGO

/datum/design/laptop
	name = "Laptop Frame"
	id = "laptop"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 10000, /datum/material/glass = 1000)
	build_path = /obj/item/modular_computer/laptop/buildable
	category = list("initial","Miscellaneous")

/datum/design/tablet
	name = "Tablet Frame"
	id = "tablet"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 2000, /datum/material/glass = 1000)
	build_path = /obj/item/modular_computer/tablet
	category = list("initial","Miscellaneous")

/datum/design/phone
	name = "Phone Frame"
	id = "phone"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 250)
	build_path = /obj/item/modular_computer/tablet/phone
	category = list("initial","Miscellaneous")

/datum/design/pda
	name = "PDA Frame"
	id = "pda"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 250)
	build_path = /obj/item/modular_computer/tablet/pda
	category = list("initial","Miscellaneous")

/datum/design/slime_scanner
	name = "Slime Scanner"
	id = "slime_scanner"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 300, /datum/material/glass = 200)
	build_path = /obj/item/slime_scanner
	category = list("initial", "Miscellaneous")

/datum/design/pet_carrier
	name = "Pet Carrier"
	id = "pet_carrier"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 7500, /datum/material/glass = 100)
	build_path = /obj/item/pet_carrier
	category = list("initial", "Miscellaneous")

/datum/design/miniature_power_cell
	name = "Light Fixture Battery"
	id = "miniature_power_cell"
	build_type = AUTOLATHE
	materials = list(/datum/material/glass = 20)
	build_path = /obj/item/stock_parts/cell/emergency_light
	category = list("initial", "Electronics")

/datum/design/packageWrap
	name = "Package Wrapping"
	id = "packagewrap"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 200, /datum/material/glass = 200)
	build_path = /obj/item/stack/packageWrap
	category = list("initial", "Miscellaneous", "Equipment")
	maxstack = 30

/datum/design/holodisk
	name = "Holodisk"
	id = "holodisk"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 100, /datum/material/glass = 100)
	build_path = /obj/item/disk/holodisk
	category = list("initial", "Miscellaneous")

/datum/design/circuit
	name = "Blue Circuit Tile"
	id = "circuit"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 500)
	build_path = /obj/item/stack/tile/circuit
	category = list("initial", "Miscellaneous")
	maxstack = 50

/datum/design/circuitgreen
	name = "Green Circuit Tile"
	id = "circuitgreen"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 500)
	build_path = /obj/item/stack/tile/circuit/green
	category = list("initial", "Miscellaneous")
	maxstack = 50

/datum/design/circuitred
	name = "Red Circuit Tile"
	id = "circuitred"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 500, /datum/material/glass = 500)
	build_path = /obj/item/stack/tile/circuit/red
	category = list("initial", "Miscellaneous")
	maxstack = 50

/datum/design/penlight
	name = "Penlight"
	id = "penlight"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 100, /datum/material/glass = 20)
	build_path = /obj/item/flashlight/pen
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/stethoscope
	name = "Stethoscope"
	id = "stethoscope"
	build_type = AUTOLATHE | PROTOLATHE
	materials = list(/datum/material/iron = 300)
	build_path = /obj/item/clothing/neck/stethoscope
	category = list("initial", "Medical", "Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL

/datum/design/a762
	name = "Stripper clip (7.62mm)"
	id = "a762"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 20000)
	build_path = /obj/item/ammo_box/a762
	category = list("hacked", "Security")

/datum/design/n762box
	name = "Ammo Box (7.62mmR)"
	id = "n762"
	build_type = AUTOLATHE
	materials = list(/datum/material/iron = 15000)
	build_path = /obj/item/ammo_box/no_direct/n762
	category = list("hacked", "Security")
