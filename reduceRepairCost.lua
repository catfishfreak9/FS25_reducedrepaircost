--[[
	reduceRepairCost.lua
	
]]


reduceRepairCost = {};

function reduceRepairCost.prerequisitesPresent(specializations)
	return SpecializationUtil.hasSpecialization(Wearable, specializations);
end;

function reduceRepairCost.registerOverwrittenFunctions(vehicleType)
	SpecializationUtil.registerOverwrittenFunction(vehicleType, "getRepairPrice", reduceRepairCost.getRepairPrice);
	SpecializationUtil.registerOverwrittenFunction(vehicleType, "getRepaintPrice", reduceRepairCost.getRepaintPrice);
end

function reduceRepairCost:getRepairPrice(superFunc)
	return superFunc(self) / 2;
end;

function reduceRepairCost:getRepaintPrice(superFunc)
	return superFunc(self) / 2;
end;