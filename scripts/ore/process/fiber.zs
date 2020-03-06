import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.CokeOven;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.Loom;
import mods.rustichromia.Gin;
import mods.rustichromia.Quern;

//straw + creosote --> Fiber
<tfc:crop/product/jute_fiber>.displayName = "Fiber";

Barrel.addRecipe("fiber", <tfc:straw>*2, <liquid:creosote>*100, <tfc:crop/product/jute_fiber>, null, 2);

//진 레시피 수정(철들어감)
recipes.addShaped(<rustichromia:gin>, [
	[<mystgears:gear_wood>, null, <mystgears:gear_wood>],
	[<rustichromia:axle_wood>, <mystgears:gear_stone>, <rustichromia:axle_wood>], 
	[<tfc:wood/lumber/acacia>, <tfc:wood/lumber/acacia>, <tfc:wood/lumber/acacia>]
]);


//진으로 섬유 -> 벌레머시기랑 메시
Gin.add("burlap_cloth", [<tfc:crop/product/jute_fiber> * 2 ], [null] , [<tfc:crop/product/burlap_cloth>], 10, 100, 200);
Gin.add("mesh", [<tfc:crop/product/jute_fiber> * 4 , <tfc:crop/product/burlap_cloth> * 1 ] , [<immersiveengineering:material:4> * 4] , [<contenttweaker:mesh>], 10, 100, 200);

//바뀐 가격에 맞춰 loom도 밸런싱
Loom.removeRecipe(<tfc:crop/product/burlap_cloth>);
Loom.addRecipe("bulacolth", <tfc:crop/product/jute_fiber>*2 , <tfc:crop/product/burlap_cloth>, 10,"asdf");


//인더스트리얼 Fiber 전부 이쪽으로 대체
recipes.replaceAllOccurences(<immersiveengineering:material:4>, <tfc:crop/product/jute_fiber>);