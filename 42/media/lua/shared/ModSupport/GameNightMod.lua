local mods = getActivatedMods()

if mods:contains("gamenight") then
    local gamePieceHandler = require "gameNight-gamePieceHandler"
    for _, special in pairs(gamePieceHandler.specials) do special.category = "MediaG"
    end
    if not gamePieceHandler.BSregisterSpecial then gamePieceHandler.BSregisterSpecial = gamePieceHandler.registerSpecial
        function gamePieceHandler.registerSpecial(itemFullType, special)
            if special then special.category = "MediaG"
            end
            return gamePieceHandler.BSregisterSpecial(itemFullType, special)
        end
    end
    gamePieceHandler.applyScriptChanges()
end