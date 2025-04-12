--- entity
local portal_underground_belt = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
local portal_fast_underground_belt = table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
local portal_express_underground_belt = table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
local portal_turbo_underground_belt = table.deepcopy(data.raw["underground-belt"]["turbo-underground-belt"])

-- 使用游戏内置资源的简化版本
local function customize_portal_belt(entity, tier_name)
    -- 基本属性设置
    entity.name = "portal-" .. tier_name
    entity.max_distance = 1
    entity.minable = {mining_time = 0.2, result = "portal-" .. tier_name}
    entity.localised_description = {"item-description.portal-belt"}
    return entity
end

-- 应用自定义效果
portal_underground_belt = customize_portal_belt(portal_underground_belt, "underground-belt")
portal_fast_underground_belt = customize_portal_belt(portal_fast_underground_belt, "fast-underground-belt")
portal_express_underground_belt = customize_portal_belt(portal_express_underground_belt, "express-underground-belt")
portal_turbo_underground_belt = customize_portal_belt(portal_turbo_underground_belt, "turbo-underground-belt")

data:extend({portal_underground_belt, portal_fast_underground_belt,
            portal_express_underground_belt, portal_turbo_underground_belt})