return {
	actions = {
		-- My custom actions go here
	},
	functions = {
        {
            humanName = "Zombies in area",
            name = "ZOMBIES_IN_AREA",
            input = {"area"},
            output = "unit_array",
            tags = {"Units"},
            execute = function()
                local units = {}
                for _, unitID in pairs(Spring.GetUnitsInRectangle(unpack(input.area))) do
                    if UnitDefs[Spring.GetUnitDefID(unitID)].customParams.zombie then
                        table.insert(units, unitID)
                    end
                end
                return units
            end
        },
	},
}

