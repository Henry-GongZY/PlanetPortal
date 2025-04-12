--- item
local portal_underground_belt_item = table.deepcopy(data.raw["item"]["underground-belt"])
portal_underground_belt_item.name = "portal-underground-belt"
portal_underground_belt_item.place_result = "portal-underground-belt"
portal_underground_belt_item.localised_description = {"item-description.portal-belt"}

local portal_fast_underground_belt_item = table.deepcopy(data.raw["item"]["fast-underground-belt"])
portal_fast_underground_belt_item.name = "portal-fast-underground-belt"
portal_fast_underground_belt_item.place_result = "portal-fast-underground-belt"
portal_fast_underground_belt_item.localised_description = {"item-description.portal-belt"}

local portal_express_underground_belt_item = table.deepcopy(data.raw["item"]["express-underground-belt"])
portal_express_underground_belt_item.name = "portal-express-underground-belt"
portal_express_underground_belt_item.place_result = "portal-express-underground-belt"
portal_express_underground_belt_item.localised_description = {"item-description.portal-belt"}

local portal_turbo_underground_belt_item = table.deepcopy(data.raw["item"]["turbo-underground-belt"])
portal_turbo_underground_belt_item.name = "portal-turbo-underground-belt"
portal_turbo_underground_belt_item.place_result = "portal-turbo-underground-belt"
portal_turbo_underground_belt_item.localised_description = {"item-description.portal-belt"}

data:extend({portal_underground_belt_item, portal_fast_underground_belt_item,
            portal_express_underground_belt_item, portal_turbo_underground_belt_item})