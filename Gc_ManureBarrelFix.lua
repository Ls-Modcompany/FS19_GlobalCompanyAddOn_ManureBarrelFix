-- 
-- GlobalCompany - AddOn - ManureBarrelFix
-- 
-- @Interface: 1.2.0.1 b3264
-- @Author: LS-Modcompany / kevink98
-- @Date: 28.07.2019
-- @Version: 1.0.0.0
-- 
-- @Support: LS-Modcompany
-- 
-- Changelog:
--		
-- 	v1.0.0.0 (28.07.2019):
-- 		- initial fs19 (kevink98)
-- 
-- Notes:
-- 
-- 
-- ToDo:
-- 

Gc_ManureBarrelFix = {};

function Gc_ManureBarrelFix.initSpecialization()
end;

function Gc_ManureBarrelFix.prerequisitesPresent(specializations)
    return SpecializationUtil.hasSpecialization(ManureBarrel, specializations)
end;

function Gc_ManureBarrelFix.registerEventListeners(vehicleType)
    --SpecializationUtil.registerFunction(vehicleType, "setDirt", Gc_ManureBarrelFix.setDirt);
	SpecializationUtil.registerEventListener(vehicleType, "onPostLoad", Gc_ManureBarrelFix);
end;

function Gc_ManureBarrelFix:onPostLoad(savegame)
    print(string.format("on post load: %s", self.spec_turnOnVehicle ~= nil))

    local spec = self.spec_turnOnVehicle;
    if spec ~= nil then
        spec.turnOffIfNotAllowed = true;        
    end;
end;