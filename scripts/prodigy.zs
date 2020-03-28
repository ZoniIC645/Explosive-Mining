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
	<prodigytech:coal_dust>				,
	<prodigytech:tartaric_stoker>
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

//프로디지 - 에어로히터/퍼널 수정
recipes.remove(<prodigytech:solid_fuel_aeroheater>);
recipes.remove(<prodigytech:air_funnel>);
recipes.remove(<prodigymechanics:hot_air_engine>);

recipes.addShaped(<prodigytech:solid_fuel_aeroheater>, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, <prodigymechanics:hot_air_engine>, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);

recipes.addShaped(<prodigytech:air_funnel>, [
	[<ore:brick>, null, <ore:brick>],
	[<ore:brick>, null, <ore:brick>],
	[<ore:ingotBrick>, null, <ore:ingotBrick>]]
);

recipes.addShaped(<prodigymechanics:hot_air_engine>, [
	[<prodigytech:air_funnel>, null, <prodigytech:air_funnel>],
	[<rustichromia:axle_wood>, <mystgears:gear_stone>, <mystgears:gear_stone>],
	[<ore:brick>, <ore:brick>, <ore:brick>]
]);
