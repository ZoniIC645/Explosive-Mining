import mods.immersiveengineering.CokeOven;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;

//함마코크 제거
recipes.remove(<immersiveengineering:tool>);
recipes.remove(<immersiveengineering:stone_decoration> * 2);

//함마
recipes.addShaped(<immersiveengineering:tool>, [
[<ore:string>, <ore:rock>, <ore:rock>],
[null, <ore:stickTreatedWood>, <ore:rock>], 
[<ore:stickTreatedWood>, null, <ore:string>]
]);

//코크 : 점토(잘르고구워서 만듬)벽돌 + 등
	//점토 가공
	ClayKnapping.addRecipe("claybrick", <contenttweaker:unfinished_clay_brick>, 
	"     ",
	"     ",
	"     ",
	"XXXXX",
	"XXXXX"
	);

	//점토벽돌 변형
	ItemRegistry.registerItemHeat(<contenttweaker:unfinished_clay_brick>, 1500, 2000, false);
	ItemRegistry.registerItemHeat(<minecraft:brick>, 1500, 2000, false);
	Heating.addRecipe("brick", <contenttweaker:unfinished_clay_brick>, <minecraft:brick>, 1500, 2000);

	//최종조합
	recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [
	[<minecraft:brick>, <ore:clay>, <minecraft:brick>],
	[<ore:clay>, <ore:sand>, <ore:clay>], 
	[<minecraft:brick>, <ore:clay>, <minecraft:brick>]
	] );

//석탄으로 코크콜
CokeOven.addRecipe(<immersiveengineering:material:6>, 500, <tfc:ore/bituminous_coal>*2, 2000);
