---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Henrygongzy.
--- DateTime: 25-1-5 下午3:25
---

-- 初始化存储表
global.interplanetary_belts = {}

-- 当玩家放置新传送带时记录信息
script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if entity.name == "interplanetary-underground-belt" then
        -- 保存端点信息
        table.insert(global.interplanetary_belts, {
            surface = entity.surface.name, -- 所在星球
            position = entity.position,   -- 位置
            entity = entity,             -- 实体
            connected_to = nil           -- 初始未连接
        })
        game.print("Interplanetary belt endpoint placed on " .. entity.surface.name)
    end
end)

-- 删除传送带时清理记录
script.on_event(defines.events.on_entity_died, function(event)
    local entity = event.entity
    if entity.name == "interplanetary-underground-belt" then
        for i, endpoint in ipairs(global.interplanetary_belts) do
            if endpoint.entity == entity then
                table.remove(global.interplanetary_belts, i)
                game.print("Interplanetary belt endpoint removed!")
                break
            end
        end
    end
end)

-- 玩家连接传送带的命令
commands.add_command("connect_belts", "Connect two interplanetary belt endpoints", function(cmd)
    local player = game.get_player(cmd.player_index)
    local selected = player.selected

    if not selected or selected.name ~= "interplanetary-underground-belt" then
        player.print("Please select an interplanetary belt endpoint to connect.")
        return
    end

    if not global.connection_start then
        global.connection_start = selected
        player.print("First endpoint selected on " .. selected.surface.name)
    else
        local start = global.connection_start
        local target = selected

        -- 创建连接
        for _, endpoint in pairs(global.interplanetary_belts) do
            if endpoint.entity == start then
                endpoint.connected_to = target
            elseif endpoint.entity == target then
                endpoint.connected_to = start
            end
        end

        player.print("Connected endpoints between " .. start.surface.name .. " and " .. target.surface.name)
        global.connection_start = nil
    end
end)

-- 传送物品的逻辑
script.on_event(defines.events.on_tick, function()
    for _, endpoint in pairs(global.interplanetary_belts) do
        local connected = endpoint.connected_to
        if connected and connected.valid then
            -- 检查传送带端点是否有物品
            local transport_line = endpoint.entity.get_transport_line(2)
            local items = transport_line.get_contents()

            for item, count in pairs(items) do
                -- 移除物品并在另一端生成
                transport_line.remove_item({name = item, count = count})
                local target_entity = connected
                local target_transport_line = target_entity.get_transport_line(1)
                target_transport_line.insert_at_back({name = item, count = count})
            end
        end
    end
end)