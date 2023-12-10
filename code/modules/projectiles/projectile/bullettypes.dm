/*
IMPORTANT

There are important things regarding this file:

 * Wounding multiplier is generally based on bullet width
 * The caliber amount was lowered for a reason, don't add more bloat. If you need different values, use gun vars.
 * Defaultrmor divisor is 1 for shorter calibers
 * Step delays - default value is 1. Lower value makes bullet go faster, higher value makes bullet go slower.

 * Rubbers are non sharp, embed incapable objects, with halved armor divisors. Their agony damage is generally lower than actual one.
 * HV exists as an antag option for better ammo, keeps wounding multiplier and increased armor divisor.
 * Scrap ammunition has less armor divisor and more recoil without impacting raw damage.
*/
//Low-caliber pistols and SMGs .35
/obj/item/projectile/bullet/pistol
	name = ".35 caliber bullet"
	/// 24 with wound mult
	damage_types = list(BRUTE = 12)
	armor_divisor = 1
	wounding_mult = 2
	can_ricochet = TRUE
	penetrating = 2
	recoil = 3

/obj/item/projectile/bullet/pistol/hv
	armor_divisor = 1.3
	step_delay = 0.75

/obj/item/projectile/bullet/pistol/practice
	name = "practice bullet"
	damage_types = list(BRUTE = 4, HALLOSS = 2)
	embed = FALSE
	sharp = FALSE
	can_ricochet = FALSE

/obj/item/projectile/bullet/pistol/rubber
	icon_state = "rubber"
	name = "rubber bullet"
	damage_types = list(BRUTE = 2, HALLOSS = 10)
	embed = FALSE
	sharp = FALSE
	wounding_mult = WOUNDING_SMALL

/obj/item/projectile/bullet/pistol/scrap
	armor_divisor = 0.8
	recoil = 3.5

//Carbines and rifles

// .20 rifle

/obj/item/projectile/bullet/srifle
	name = ".20 caliber bullet"
	damage_types = list(BRUTE = 34)
	armor_divisor = 1
	penetrating = 2
	can_ricochet = TRUE
	recoil = 3.6

/obj/item/projectile/bullet/srifle/nomuzzle
	muzzle_type = null

/obj/item/projectile/bullet/srifle/practice
	name = "practice bullet"
	damage_types = list(BRUTE = 4, HALLOSS = 1)
	embed = FALSE
	sharp = FALSE
	can_ricochet = FALSE

/obj/item/projectile/bullet/srifle/hv
	armor_divisor = 1.4
	step_delay = 0.75

/obj/item/projectile/bullet/srifle/rubber
	icon_state = "rubber"
	name = "rubber bullet"
	damage_types = list(BRUTE = 9, HALLOSS = 9)
	embed = FALSE
	sharp = FALSE

/obj/item/projectile/bullet/srifle/scrap
	armor_divisor = 0.7
	recoil = 5

// .25 caseless rifle

/obj/item/projectile/bullet/clrifle
	name = ".25 caliber bullet"
	damage_types = list(BRUTE = 27)
	armor_divisor = 1
	penetrating = 2
	can_ricochet = FALSE //to reduce collateral damage and FF, since IH use it in their primary firearm
	recoil = 2.8
	step_delay = 0.9

/obj/item/projectile/bullet/clrifle/practice
	name = "practice bullet"
	damage_types = list(BRUTE = 3, HALLOSS = 2)
	embed = FALSE
	sharp = FALSE
	can_ricochet = FALSE

/obj/item/projectile/bullet/clrifle/hv
	armor_divisor = 1.4
	step_delay = 0.7
	can_ricochet = TRUE

/obj/item/projectile/bullet/clrifle/rubber
	icon_state = "rubber"
	name = "rubber bullet"
	damage_types = list(BRUTE = 5, HALLOSS = 10)
	embed = FALSE
	sharp = FALSE
	can_ricochet = TRUE

/obj/item/projectile/bullet/clrifle/scrap
	armor_divisor = 0.8
	recoil = 4.5

// .30 rifle , heavy hitting and heavy recoil

/obj/item/projectile/bullet/lrifle
	name = ".30 caliber bullet"
	damage_types = list(BRUTE = 45)
	penetrating = 2
	can_ricochet = TRUE
	recoil = 5

/obj/item/projectile/bullet/lrifle/practice
	name = "practice bullet"
	damage_types = list(BRUTE = 3, HALLOSS = 3)
	embed = FALSE
	sharp = FALSE
	can_ricochet = FALSE

/obj/item/projectile/bullet/lrifle/hv
	armor_divisor = 1.3
	step_delay = 0.75

/obj/item/projectile/bullet/lrifle/rubber
	icon_state = "rubber"
	name = "rubber bullet"
	damage_types = list(BRUTE = 8, HALLOSS = 19)
	embed = FALSE
	sharp = FALSE

/obj/item/projectile/bullet/lrifle/scrap
	armor_divisor = 0.7
	recoil = 7

//Revolvers and high-caliber pistols .40
/obj/item/projectile/bullet/magnum
	name = " .40 caliber bullet"
	damage_types = list(BRUTE = 50)
	armor_divisor = 1
	can_ricochet = TRUE
	penetrating = 2
	recoil = 8
	step_delay =  1.1

/obj/item/projectile/bullet/magnum/practice
	name = "practice bullet"
	damage_types = list(BRUTE = 5, HALLOSS = 4)
	embed = FALSE
	sharp = FALSE
	can_ricochet = FALSE

/obj/item/projectile/bullet/magnum/hv
	armor_divisor = 1.3
	step_delay = 0.9

/obj/item/projectile/bullet/magnum/rubber
	icon_state = "rubber"
	name = "rubber bullet"
	damage_types = list(BRUTE = 10, HALLOSS = 25)
	embed = FALSE
	sharp = FALSE

/obj/item/projectile/bullet/magnum/scrap
	armor_divisor = 0.8
	recoil = 9

//Sniper rifles .60
/obj/item/projectile/bullet/antim
	name = ".60 caliber bullet"
	damage_types = list(BRUTE = 55)
	armor_divisor = 1.3
	penetrating = 2
	step_delay = 0.8
	recoil = 15 // Good luck shooting these from a revolver

/obj/item/projectile/bullet/antim/emp
	damage_types = list(BRUTE = 43)
	armor_divisor = 1.5

/obj/item/projectile/bullet/antim/emp/on_hit(atom/target, blocked = FALSE)
	. = ..()
	empulse(target, 0, 0)

/obj/item/projectile/bullet/antim/uranium
	damage_types = list(BRUTE = 45)
	armor_divisor = 5
	irradiate = 200

/obj/item/projectile/bullet/antim/breach
	damage_types = list(BRUTE = 40, HALLOSS = 20)
	armor_divisor = 1
	penetrating = -5
	nocap_structures = TRUE
	kill_count = 30

/obj/item/projectile/bullet/antim/breach/proc/get_tiles_passed(var/distance)
	var/tiles_passed = distance
	return ROUND_PROB(tiles_passed)

/obj/item/projectile/bullet/antim/breach/get_structure_damage()
	var/distance = get_dist(loc, starting)
	return  22 * get_tiles_passed(distance)


/obj/item/projectile/bullet/antim/breach/on_hit(atom/target, blocked = FALSE)
	. = ..()
	fragment_explosion_angled(target, starting ,/obj/item/projectile/bullet/pellet/fragment/strong, 5)
	playsound(target, 'sound/effects/explosion1.ogg', 100, 25, 8, 8)




/obj/item/projectile/bullet/antim/scrap
	armor_divisor = 1
	recoil = 20

//Shotguns .50
/obj/item/projectile/bullet/shotgun
	name = "slug"
	icon_state = "slug"
	damage_types = list(BRUTE = 55)
	armor_divisor = 1
	knockback = 1
	step_delay = 1
	recoil = 9

/obj/item/projectile/bullet/shotgun/scrap
	armor_divisor = 0.8
	recoil = 10

/obj/item/projectile/bullet/shotgun/beanbag
	name = "beanbag"
	icon_state = "buckshot"
	check_armour = ARMOR_BULLET //neverforget
	damage_types = list(BRUTE = 10, HALLOSS = 45)
	embed = FALSE
	sharp = TRUE

/obj/item/projectile/bullet/shotgun/beanbag/scrap
	damage_types = list(BRUTE = 5, HALLOSS = 35)
	recoil = 10

/obj/item/projectile/bullet/shotgun/practice
	name = "practice slug"
	damage_types = list(BRUTE = 4, HALLOSS = 6)
	embed = FALSE
	knockback = 0

/obj/item/projectile/bullet/shotgun/incendiary
	damage_types = list(BRUTE = 38)
	knockback = 0

	var/fire_stacks = 4

/obj/item/projectile/bullet/shotgun/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()

//Overall less damage than slugs vs armor for more damage to unarmored
//Has a small wounding modifier due to /bullet/pellet
/obj/item/projectile/bullet/pellet/shotgun
	name = "shrapnel"
	icon_state = "birdshot-1"
	damage_types = list(BRUTE = 8)
	armor_divisor = 1
	pellets = 9
	range_step = 1
	spread_step = 10
	pellet_to_knockback_ratio = 2
	recoil = 5

/obj/item/projectile/bullet/pellet/shotgun/Initialize()
	. = ..()
	icon_state = "birdshot-[rand(1,4)]"

/obj/item/projectile/bullet/pellet/shotgun/scrap
	armor_divisor = 0.8
	recoil = 5

//Miscellaneous
/obj/item/projectile/bullet/blank
	invisibility = 101
	damage_types = list(BRUTE = 1)
	embed = FALSE

/obj/item/projectile/bullet/cap
	name = "cap"
	damage_types = list(HALLOSS = 0)
	nodamage = TRUE
	embed = FALSE
	sharp = FALSE
	recoil = 1 // Pop

/obj/item/projectile/bullet/bolt
	icon_state = "SpearFlight"
	name = "bolt"
	damage_types = list(BRUTE = 55)
	armor_divisor = 1
	embed = FALSE
	can_ricochet = TRUE
	/// extreme recoil from firing flash forged bolts
	recoil = 25

/obj/item/projectile/bullet/bolt/on_hit(mob/living/target, def_zone = BP_CHEST)
    if(istype(target))
        var/obj/item/ammo_casing/crossbow/bolt/R = new(null)
        target.embed(R, def_zone)
