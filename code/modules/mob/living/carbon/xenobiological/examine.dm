/mob/living/carbon/slime/examine(mob/user)
	. = ..()
	var/msg = ""
	if (src.stat == DEAD)
		msg += "[SPAN_DEADSAY("It is limp and unresponsive.")]\n"
	else
		if (src.getBruteLoss())
			msg += "<span class='warning'>"
			if (src.getBruteLoss() < 40)
				msg += "It has some punctures in its flesh!"
			else
				msg += "<B>It has severe punctures and tears in its flesh!</B>"
			msg += "</span>\n"

		switch(powerlevel)

			if(2 to 3)
				msg += "It is flickering gently with a little electrical activity.\n"

			if(4 to 5)
				msg += "It is glowing gently with moderate levels of electrical activity.\n"

			if(6 to 9)
				msg += "[SPAN_WARNING("It is glowing brightly with high levels of electrical activity.")]\n"

			if(10)
				msg += "[SPAN_WARNING("<B>It is radiating with massive levels of electrical activity!</B>")]\n"

	msg += "*---------*"
	to_chat(user, msg)
	return
