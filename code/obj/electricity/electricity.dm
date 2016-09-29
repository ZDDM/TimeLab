/obj/electricity																	// Base object for all electricity-powered objects.
	var/powered = 1 															// Just for debugging.
	var/required_watts = 0
	var/obj/electricity/provider/provider = null								// Links to the object's energy provider. Should be set to "1" if
																				// this object's provider is itself.
	/obj/electricity/proc/Consume_power()
		powered = 0
		if (!provider || provider == 1)
			return
		else
			if (provider.stored_joules)
				provider.stored_joules -= required_watts
				powered = 1
