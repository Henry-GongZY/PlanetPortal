--- entity
local portal_underground_belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
local portal_fast_underground_belt = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
local portal_express_underground_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
local portal_turbo_underground_belt = table.deepcopy(data.raw["underground-belt"]["turbo-underground-belt"])

-- update underground_belt
portal_underground_belt.name = "portal-underground-belt"
portal_underground_belt.icon = "__planet-portal__/graphics/icons/underground-belt.png"
portal_underground_belt.max_distance = 1
portal_underground_belt.minable = {mining_time = 0.2, result = "portal-underground-belt"} -- 修改这里，确保挖掘后得到正确的物品
portal_underground_belt.localised_description = {"item-description.portal-belt"}

-- update fast_underground_belt
portal_fast_underground_belt.name = "portal-fast-underground-belt"
portal_fast_underground_belt.icon = "__planet-portal__/graphics/icons/fast-underground-belt.png"
portal_fast_underground_belt.max_distance = 1
portal_fast_underground_belt.minable = {mining_time = 0.2, result = "portal-fast-underground-belt"} -- 修改这里
portal_fast_underground_belt.localised_description = {"item-description.portal-belt"}

-- update express_underground_belt
portal_express_underground_belt.name = "portal-express-underground-belt"
portal_express_underground_belt.icon = "__planet-portal__/graphics/icons/express-underground-belt.png"
portal_express_underground_belt.max_distance = 1
portal_express_underground_belt.minable = {mining_time = 0.2, result = "portal-express-underground-belt"} -- 修改这里
portal_express_underground_belt.localised_description = {"item-description.portal-belt"}

-- update turbo_underground_belt
portal_turbo_underground_belt.name = "portal-turbo-underground-belt"
portal_turbo_underground_belt.icon = "__planet-portal__/graphics/icons/turbo-underground-belt.png"
portal_turbo_underground_belt.max_distance = 1
portal_turbo_underground_belt.minable = {mining_time = 0.2, result = "portal-turbo-underground-belt"} -- 修改这里
portal_turbo_underground_belt.localised_description = {"item-description.portal-belt"}

data:extend({portal_underground_belt, portal_fast_underground_belt,
            portal_express_underground_belt, portal_turbo_underground_belt})