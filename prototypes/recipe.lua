---recipe
local portal_underground_belt_recipe = {
    type = "recipe",
    name = "portal-underground-belt",
    ingredients =
    {
        {type = "item", name = "underground-belt", amount=4},
    },
    results = {{type="item", name="portal-underground-belt", amount=2}}
}

local portal_fast_underground_belt_recipe = {
    type = "recipe",
    name = "portal-fast-underground-belt",
    ingredients =
    {
        {type = "item", name = "fast-underground-belt", amount=4},
    },
    results = {{type="item", name="portal-fast-underground-belt", amount=2}}
}

local portal_express_underground_belt_recipe = {
    type = "recipe",
    name = "portal-express-underground-belt",
    ingredients =
    {
        {type = "item", name = "express-underground-belt", amount=4},
    },
    results = {{type="item", name="portal-express-underground-belt", amount=2}}
}

local portal_turbo_underground_belt_recipe = {
    type = "recipe",
    name = "portal-turbo-underground-belt",
    ingredients =
    {
        {type = "item", name = "turbo-underground-belt", amount=4},
    },
    results = {{type="item", name="portal-turbo-underground-belt", amount=2}}
}

data:extend({portal_underground_belt_recipe, portal_fast_underground_belt_recipe,
            portal_express_underground_belt_recipe, portal_turbo_underground_belt_recipe})