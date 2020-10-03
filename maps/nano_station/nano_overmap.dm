/obj/effect/overmap/visitable/ship/nano
	name = "NTSS Nano"
	desc = "Una estacion diminuta experimental de NT."
	fore_dir = WEST
	vessel_mass = 100
	burn_delay = 2 SECONDS
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_IN_SPACE|OVERMAP_SECTOR_BASE
	known_ships = list( /obj/effect/overmap/visitable/ship/landable/guppy)
	contact_class = /decl/ship_contact_class/nano

	initial_restricted_waypoints = list(
		"NTRP Femto" = list("nav_hangar_guppy")
	)

	initial_generic_waypoints = list(
		//start Bridge Deck
		"nav_merc_deck5",
		"nav_ninja_deck5",
		"nav_skipjack_deck5",
		"nav_ert_deck5",
		"nav_bridge_guppy",

		//start First Deck
		"nav_merc_deck1",
		"nav_ninja_deck1",

		//start Second Deck
		"nav_merc_deck2",
		"nav_ninja_deck2",

		//start Third Deck
		"nav_merc_deck3",
		"nav_ninja_deck3",

		//start Forth Deck
		"nav_merc_deck4",
		"nav_ninja_deck4",

		//start Hanger Deck
		"nav_merc_hanger",
		"nav_ninja_hanger",
		"nav_skrellscoutsh_altdock",
		"nav_ert_dock"
	)

/decl/ship_contact_class/nano
	class_short = "MAKO"
	class_long = "Mako-Class Frigate"
	max_ship_mass = 100

/obj/effect/overmap/visitable/ship/landable/guppy
	name = "NTRP Femto"
	desc = "Una pequeña capsula de recuperacion. Es capaz de realizar un independiente viaje espacial con un limite. Esta marcado como 'NTRP Femto'."
	shuttle = "NTRP Femto"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 50 //very inefficient pod
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "Consola de control del Femto"
	shuttle_tag = "NTRP Femto"
	req_access = list(access_guppy_helm)