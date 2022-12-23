/mob/observer/eye/stop_following()
	if(following && owner)
		to_chat(owner, SPAN_WARNING("Stopped following \the [following]"))
	..()

/mob/observer/eye/start_following(var/atom/a)
	..()
	if(owner)
		to_chat(owner, SPAN_NOTICE("Now following \the [a]"))

/mob/observer/eye/keep_following(var/atom/movable/moving_instance, var/atom/old_loc, var/atom/new_loc)
	setLoc(get_turf(new_loc))

/mob/observer/eye/EyeMove()
	stop_following()
	. = ..()
