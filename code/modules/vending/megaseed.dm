/obj/machinery/vending/hydroseeds
	name = "\improper MegaSeed Servitor"
	desc = "When you need seeds fast!"
	product_slogans = "THIS'S WHERE TH' SEEDS LIVE! GIT YOU SOME!;Hands down the best seed selection on the station!;Also certain mushroom varieties available, more for experts! Get certified today!"
	product_ads = "We like plants!;Grow some crops!;Grow, baby, growww!;Aw h'yeah son!"
	icon_state = "seeds"
	panel_type = "panel2"
	light_mask = "seeds-light-mask"
	products = list(/obj/item/seeds/aloe = 3,
					/obj/item/seeds/ambrosia = 3,
					/obj/item/seeds/apple = 3,
					/obj/item/seeds/banana = 3,
					/obj/item/seeds/berry = 3,
					/obj/item/seeds/cabbage = 3,
					/obj/item/seeds/carrot = 3,
					/obj/item/seeds/cherry = 3,
					/obj/item/seeds/chanter = 3,
					/obj/item/seeds/chili = 3,
					/obj/item/seeds/cinnamomum = 3,
					/obj/item/seeds/cocoapod = 3,
					/obj/item/seeds/coconut = 3,
					/obj/item/seeds/coffee = 3,
					/obj/item/seeds/corn = 3,
					/obj/item/seeds/cotton = 3,
					/obj/item/seeds/cucumber = 3,
					/obj/item/seeds/eggplant = 3,
					/obj/item/seeds/garlic = 3,
					/obj/item/seeds/grape = 3,
					/obj/item/seeds/grass = 3,
					/obj/item/seeds/ute_nut = 3,
					/obj/item/seeds/lanternfruit = 3,
					/obj/item/seeds/lemon = 3,
					/obj/item/seeds/lime = 3,
					/obj/item/seeds/onion = 3,
					/obj/item/seeds/orange = 3,
					/obj/item/seeds/peanut = 3,
					/obj/item/seeds/peas = 3,
					/obj/item/seeds/pineapple = 3,
					/obj/item/seeds/potato = 3,
					/obj/item/seeds/poppy = 3,
					/obj/item/seeds/pumpkin = 3,
					/obj/item/seeds/replicapod = 3,
					/obj/item/seeds/wheat/rice = 3,
					/obj/item/seeds/soya = 3,
					/obj/item/seeds/sugarcane = 3,
					/obj/item/seeds/sunflower = 3,
					/obj/item/seeds/tea = 3,
					/obj/item/seeds/tobacco = 3,
					/obj/item/seeds/tomato = 3,
					/obj/item/seeds/tower = 3,
					/obj/item/seeds/watermelon = 3,
					/obj/item/seeds/wheat = 3,
					/obj/item/seeds/whitebeet = 3)
	contraband = list(/obj/item/seeds/amanita = 2,
					  /obj/item/seeds/liberty = 2,
					  /obj/item/seeds/nettle = 2,
					  /obj/item/seeds/plump = 2,
					  /obj/item/seeds/reishi = 2,
					  /obj/item/seeds/cannabis = 3,
					  /obj/item/seeds/starthistle = 2,
					  /obj/item/seeds/fungus = 3,
					  /obj/item/seeds/random = 3)
	premium = list(/obj/item/reagent_containers/spray/waterflower = 1)
	armor = list(MELEE = 100, BULLET = 100, LASER = 100, ENERGY = 100, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 50, ELECTRIC = 100)
	resistance_flags = FIRE_PROOF
	refill_canister = /obj/item/vending_refill/hydroseeds
	default_price = 10
	extra_price = 50
	light_mask = "seeds-light-mask"
	light_color = LIGHT_COLOR_BLUE
	payment_department = ACCOUNT_SRV

/obj/item/vending_refill/hydroseeds
	machine_name = "MegaSeed Servitor"
	icon_state = "refill_plant"

/obj/machinery/vending/hydroseeds/weak
	name = "\improper Seed Servitor"
	product_slogans = "THIS'S WHERE TH' SEEDS LIVE! GIT YOU SOME!;Hands down the best seed selection on the station for intrepid gardeners!"
	products = list(/obj/item/seeds/apple = 2,
					/obj/item/seeds/banana = 2,
					/obj/item/seeds/cocoapod = 2,
					/obj/item/seeds/grape = 2,
					/obj/item/seeds/grass = 2,
					/obj/item/seeds/orange = 2,
					/obj/item/seeds/poppy = 2,
					/obj/item/seeds/watermelon = 2,
					/obj/item/seeds/wheat = 2)
	contraband = list(/obj/item/seeds/cannabis = 1)
	premium = list(/obj/item/seeds/sugarcane = 2,
					/obj/item/seeds/tower = 2)
	refill_canister = /obj/item/vending_refill/hydroseeds
	default_price = 15
	extra_price = 40
