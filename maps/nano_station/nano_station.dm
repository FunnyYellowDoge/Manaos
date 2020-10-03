#if !defined(using_map_DATUM)

	#include "nano_announcements.dm"
	#include "../torch/torch_antagonism.dm"
	#include "nano_areas.dm"
	#include "../torch/torch_areas.dm"
	#include "nano_lobby.dm"
	#include "../torch/torch_map_templates.dm"
	#include "nano_overmap.dm"
	#include "nano_presets.dm"
	#include "nano_ranks.dm"
	#include "nano_ranks_boh.dm"
	#include "../torch/torch_security_state.dm"
	#include "nano_setup.dm"
	#include "nano_shuttles.dm"
	#include "nano_unit_testing.dm"
	#include "../torch/torch_misc_overrides.dm"

	#include "../torch/datums/access.dm"
	#include "../torch/datums/uniforms.dm"
	#include "../torch/datums/uniforms_expedition.dm"
	//#include "datums/uniforms_fleet.dm"
	#include "../torch/datums/uniforms_exp_fleet.dm"
	#include "../torch/datums/uniforms_marine-corps.dm"
	#include "../torch/datums/reports/command.dm"
	#include "../torch/datums/reports/corporate.dm"
	#include "../torch/datums/reports/exploration.dm"
	#include "../torch/datums/reports/medical.dm"
	#include "../torch/datums/reports/robotics.dm"
	#include "../torch/datums/reports/science.dm"
	#include "../torch/datums/reports/security.dm"
	#include "../torch/datums/reports/solgov.dm"
	#include "../torch/datums/reports/deck.dm"
	#include "../torch/datums/shackle_law_sets.dm"
	#include "../torch/datums/supplypacks/security.dm"
	#include "../torch/datums/supplypacks/science.dm"
	#include "../torch/datums/supplypacks/emergency.dm"
	#include "../torch/datums/department_exploration.dm"
	#include "../torch/datums/game_modes/torch_revolution.dm"

	#include "../torch/game/antagonist/outsider/deathsquad.dm"
	#include "../torch/game/antagonist/outsider/ert.dm"
	#include "../torch/game/antagonist/outsider/foundation.dm"
	#include "../torch/game/antagonist/outsider/mercenary.dm"
	#include "../torch/game/antagonist/outsider/raider.dm"

	#include "../torch/infantry/firearms.dm"
	#include "../torch/infantry/outfits.dm"
	#include "../torch/infantry/storage.dm"
	#include "../torch/infantry/vending.dm"

	#include "../torch/items/cards_ids.dm"
	#include "../torch/items/encryption_keys.dm"
	#include "../torch/items/headsets.dm"
	#include "../torch/items/items.dm"
	#include "../torch/items/machinery.dm"
	#include "../torch/items/manuals.dm"
	#include "../torch/items/stamps.dm"
	#include "../torch/items/storage.dm"
	#include "../torch/items/uniform_vendor.dm"
	#include "../torch/items/uniform_vendor_boh.dm"
	#include "../torch/items/rigs.dm"
	#include "../torch/items/solbanner.dm"
	#include "../torch/items/explo_shotgun.dm"
	#include "../torch/items/mecha.dm"
	#include "../torch/items/rewards.dm"

	#include "../torch/items/clothing/ec_skillbadges.dm"
	#include "../torch/items/clothing/solgov-accessory.dm"
	#include "../torch/items/clothing/solgov-armor.dm"
	#include "../torch/items/clothing/solgov-feet.dm"
	#include "../torch/items/clothing/solgov-hands.dm"
	#include "../torch/items/clothing/solgov-head.dm"
	#include "../torch/items/clothing/solgov-suit.dm"
	#include "../torch/items/clothing/solgov-under.dm"
	#include "../torch/items/clothing/terran-accessory.dm"
	#include "../torch/items/clothing/terran-feet.dm"
	#include "../torch/items/clothing/terran-hands.dm"
	#include "../torch/items/clothing/terran-head.dm"
	#include "../torch/items/clothing/terran-suit.dm"
	#include "../torch/items/clothing/terran-under.dm"
	#include "../torch/items/clothing/boh_under.dm"
	#include "../torch/items/clothing/boh_accessory.dm"
	#include "../torch/items/clothing/boh_clothing.dm"

	#include "../torch/items/psyker/agent_items.dm"

	#include "../torch/items/weapon/storage/wallets.dm"

	#include "../torch/job/torch_departments.dm"
	#include "../torch/job/torch_access.dm"
	#include "../torch/job/torch_jobs.dm"
	#include "../torch/job/command_jobs.dm"
	#include "../torch/job/corporate_jobs.dm"
	#include "../torch/job/engineering_jobs.dm"
	#include "../torch/job/exploration_jobs.dm"
	#include "../torch/job/medical_jobs.dm"
	#include "../torch/job/misc_jobs.dm"
	#include "../torch/job/research_jobs.dm"
	#include "../torch/job/security_jobs.dm"
	#include "../torch/job/service_jobs.dm"
	#include "../torch/job/supply_jobs.dm"
	#include "../torch/job/torch_jobs_boh.dm"
	#include "../torch/job/hestia_jobs.dm"

	#include "../torch/job/outfits/torch_outfits.dm"
	#include "../torch/job/outfits/command_outfits.dm"
	#include "../torch/job/outfits/corporate_outfits.dm"
	#include "../torch/job/outfits/engineering_outfits.dm"
	#include "../torch/job/outfits/exploration_outfits.dm"
	#include "../torch/job/outfits/medical_outfits.dm"
	#include "../torch/job/outfits/misc_outfits.dm"
	#include "../torch/job/outfits/research_outfits.dm"
	#include "../torch/job/outfits/security_outfits.dm"
	#include "../torch/job/outfits/service_outfits.dm"
	#include "../torch/job/outfits/supply_outfits.dm"
	#include "../torch/job/outfits/boh_outfits.dm"
	#include "../torch/job/outfits/unused_outfits.dm"
	#include "../torch/job/outfits/hestia_outfits.dm"

	#include "../torch/language/human/euro.dm"
	#include "../torch/language/human/misc/spacer.dm"

	#include "../torch/machinery/apc_shuttle.dm"
	#include "../torch/machinery/keycard authentication.dm"
	#include "../torch/machinery/suit_storage.dm"

	#include "../torch/robot/module_flying_surveyor.dm"

	#include "../torch/structures/signs.dm"
	#include "../torch/structures/closets.dm"
	#include "../torch/structures/closets/closet_appearances.dm"
	#include "../torch/structures/closets/command.dm"
	#include "../torch/structures/closets/engineering.dm"
	#include "../torch/structures/closets/medical.dm"
	#include "../torch/structures/closets/misc.dm"
	#include "../torch/structures/closets/research.dm"
	#include "../torch/structures/closets/security.dm"
	#include "../torch/structures/closets/services.dm"
	#include "../torch/structures/closets/supply.dm"
	#include "../torch/structures/closets/exploration.dm"

	#include "../torch/loadout/_defines.dm"
	#include "../torch/loadout/loadout_accessories.dm"
	#include "../torch/loadout/loadout_accessories_boh.dm"
	#include "../torch/loadout/loadout_ec_skillbadges.dm"
	#include "../torch/loadout/loadout_eyes.dm"
	#include "../torch/loadout/loadout_gloves.dm"
	#include "../torch/loadout/loadout_head.dm"
	#include "../torch/loadout/loadout_head_boh.dm"
	#include "../torch/loadout/loadout_shoes.dm"
	#include "../torch/loadout/loadout_suit.dm"
	#include "../torch/loadout/loadout_suit_boh.dm"
	#include "../torch/loadout/loadout_uniform.dm"
	#include "../torch/loadout/loadout_uniform_boh.dm"
	#include "../torch/loadout/loadout_xeno.dm"
	#include "../torch/loadout/loadout_augments.dm"
	#include "../torch/loadout/~defines.dm"

	#include "nano_station.dmm"
	#include "z1_admin_nano.dmm"
	#include "z2_transit_nano.dmm"
	#include "../torch/z3_espacio.dmm"
	#include "../torch/z4_eventos.dmm"

	#include "../away/empty.dmm"
	#include "../away/ascent/ascent.dm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"
	#include "../away/unishi/unishi.dm"
	//#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"


	#define using_map_DATUM /datum/map/nano

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Torch

#endif