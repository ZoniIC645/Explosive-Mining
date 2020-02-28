import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

var ExceptList = [
	<prodigytech:magmatic_aeroheater>	,
	<prodigytech:solid_fuel_aeroheater>	,
	<prodigytech:tartaric_aeroheater>	,
	<prodigytech:air_funnel>			,
	<prodigytech:wormhole_funnel>		,
	<prodigytech:wormhole_linker>		,
	<prodigytech:coal_dust>
] as IItemStack[];

for item in loadedMods["prodigytech"].items {
	recipes.remove(item);
	
	var isExcept = false as bool;
	
	for except in ExceptList
		if(except.matches(item))
			isExcept = true;

	if(!isExcept)
		mods.jei.JEI.hide(item);
}