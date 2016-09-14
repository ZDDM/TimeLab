/world
	fps = 30
	icon_size = 32
	view = "16x16"
	mob = /mob/new_player
	area = /area/underground

	/world/New()
		..()
		HUDS()																								// Creates HUDs.

	/world/proc/HUDS()
		CREATE_BUTTON("8, 1", "LeftHand", "HLeft")
		CREATE_BUTTON("8, 1", "LeftHandActive", "AHLeft")
		CREATE_BUTTON("9, 1", "RightHand", "HRight")
		CREATE_BUTTON("9, 1", "RightHandActive", "AHRight")
		CREATE_BUTTON("10, 1", "Pocket", "Pocket")
		CREATE_BUTTON("11, 1", "Pocket1", "Pocket1")
		CREATE_STATUS("16,12", "Health", "HealthDisplay")
		CREATE_STATUS("16,12", "Health1", "HealthDisplay1")
		CREATE_STATUS("16,12", "Health2", "HealthDisplay2")
		CREATE_STATUS("16,12", "Health3", "HealthDisplay3")
		CREATE_BUTTON("15, 1", "IntentButton", "Intent")
		CREATE_BUTTON("15, 1", "IntentButton1", "Intent1")
