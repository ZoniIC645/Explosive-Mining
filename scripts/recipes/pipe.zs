//방부목 레시피 추가
mods.terrafirmacraft.Barrel.addRecipe("treat",<ore:plankWood>, <liquid:creosote>*100, <immersiveengineering:treated_wood>, null, 1);

//wooden pipe 레시피 변경
recipes.remove(<simplewoodenpipes:pipe> * 6);
recipes.addShaped(<simplewoodenpipes:pipe>, [
	[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
	[<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>], 
	[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]
]);

//메카니컬 파이프 조합법 추가
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 0}) * 2, [
	[<immersiveengineering:treated_wood>, <tfc:rock/granite>, <immersiveengineering:treated_wood>],
	[<simplewoodenpipes:pipe>, <simplewoodenpipes:pipe>, <simplewoodenpipes:pipe>], 
	[<immersiveengineering:treated_wood>, <tfc:rock/granite>, <immersiveengineering:treated_wood>]
]);
