/obj/aura/starborn
	name = "starborn's gift"
	icon = 'icons/effects/effects.dmi'
	icon_state = "white_electricity_constant"
	color = "#33cc33"
	layer = MOB_LAYER

/obj/aura/starborn/bullet_act(var/obj/item/projectile/P, var/def_zone)
	if (P.damage_type == DAMAGE_BURN)
		user.visible_message(SPAN_WARNING("\The [P] seems to only make \the [user] stronger."))
		user.adjustBruteLoss(-P.damage)
		return AURA_FALSE
	return 0

/obj/aura/starborn/attackby(var/obj/item/I, var/mob/i_user)
	if(I.damtype == DAMAGE_BURN)
		to_chat(i_user, SPAN_WARNING("\The [I] seems to only feed into \the [user]'s flames."))
		user.adjustBruteLoss(-I.force)
		return AURA_FALSE
	return 0
