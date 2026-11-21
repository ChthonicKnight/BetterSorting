-- B42 Scavenging skill
-- https://steamcommunity.com/sharedfiles/filedetails/?id=3645462965
local mod = getActivatedMods()

if mod:contains("B4213ScavengingSkill") then
table.insert(BScats, {
	category = "LitS",
	items = {
		 "ScavengingSkill.BookScavenging1",
		 "ScavengingSkill.BookScavenging2",
		 "ScavengingSkill.BookScavenging3",
		 "ScavengingSkill.BookScavenging4",
		 "ScavengingSkill.BookScavenging5",
    },
})
end