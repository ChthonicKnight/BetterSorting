local function BSnewMusic()
    local results = {}
    if not getActivatedMods():contains("NewMusic") then return results
    end
    require "NMTrackCatalog"
    require "contracts/NMCoverViewResolver"
    for fullType in pairs(NMTrackCatalog.entries) do results[fullType] = true
    end
    for alias, target in pairs(NMTrackCatalog.aliases) do results[alias] = true results[target] = true
    end
    local covers = NMCoverViewResolver.debugSnapshot()
    for fullType in pairs(covers.linked) do results[fullType] = true
    end
    for fullType in pairs(covers.fallback) do results[fullType] = true
    end
    return results
end

return BSnewMusic