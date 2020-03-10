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

var LoomList = [
	<tfc:wood/loom/acacia>,
	<tfc:wood/loom/ash>,
	<tfc:wood/loom/aspen>,
	<tfc:wood/loom/birch>,
	<tfc:wood/loom/blackwood>,
	<tfc:wood/loom/chestnut>,
	<tfc:wood/loom/douglas_fir>,
	<tfc:wood/loom/hevea>,
	<tfc:wood/loom/hickory>,
	<tfc:wood/loom/kapok>,
	<tfc:wood/loom/maple>,
	<tfc:wood/loom/oak>,
	<tfc:wood/loom/palm>,
	<tfc:wood/loom/pine>,
	<tfc:wood/loom/rosewood>,
	<tfc:wood/loom/sequoia>,
	<tfc:wood/loom/spruce>,
	<tfc:wood/loom/sycamore>,
	<tfc:wood/loom/white_cedar>,
	<tfc:wood/loom/willow>
] as IItemStack[];

for loom in LoomList{
	recipes.remove(loom);
}

//loom/gin 레시피 수정(철들어감)
recipes.remove(<rustichromia:gin>);
recipes.addShaped(<rustichromia:gin>, 
	[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<tfc:wood/loom/acacia>, <mysticalmechanics:gear_iron>, <tfc:wood/loom/acacia>], 
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.addShaped(<tfc:wood/loom/acacia>, 
	[[<ore:lumber>, <ore:lumber>, <ore:lumber>],
	[<ore:lumber>, <tfc:crop/product/jute_fiber>, <ore:lumber>], 
	[<ore:lumber>, <minecraft:stick>, <ore:lumber>]]);

//TFC 맷돌 레시피 수정(fiber 들어가게)
recipes.remove(<tfc:handstone>);
recipes.addShaped(<tfc:handstone> , [
	[<minecraft:stick>, null, null],
	[<tfc:crop/product/jute_fiber>, null, null], 
	[<ore:stone>, <ore:stone>, <ore:stone>]
]);
recipes.addShaped(<rustichromia:quern>, [[<tfc:handstone>, <rustichromia:axle_wood>, <tfc:handstone>],[<rustichromia:hopper_wood>, <rustichromia:axle_wood>, <rustichromia:hopper_wood>], [<tfc:quern>, <rustichromia:axle_wood>, <tfc:quern>]]);

//진으로 섬유 -> 벌레머시기랑 메시
Gin.add("burlap_cloth", [<tfc:crop/product/jute_fiber> * 2 ], [null] , [<tfc:crop/product/burlap_cloth>], 10, 100, 200);
Gin.add("mesh", [<tfc:crop/product/jute_fiber> * 4 , <tfc:crop/product/burlap_cloth> * 1 ] , [<immersiveengineering:material:4> * 4] , [<contenttweaker:mesh>], 10, 100, 200);

//바뀐 가격에 맞춰 loom도 밸런싱
Loom.removeRecipe(<tfc:crop/product/burlap_cloth>);
Loom.addRecipe("bulacolth", <tfc:crop/product/jute_fiber>*2 , <tfc:crop/product/burlap_cloth>, 10,"asdf");


//인더스트리얼 Fiber 전부 이쪽으로 대체
recipes.replaceAllOccurences(<immersiveengineering:material:4>, <tfc:crop/product/jute_fiber>);

//Windmill 레시피 수정
recipes.remove(<rustichromia:windmill_blade>);
recipes.remove(<rustichromia:windmill>);
recipes.addShaped(<rustichromia:windmill_blade>, 
	[[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:slabTreatedWood>],
	[<immersiveengineering:material:4>, <immersiveengineering:material:4>, <rustichromia:axle_wood>], 
	[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:slabTreatedWood>]]);

recipes.addShaped(<rustichromia:windmill>, 
	[[<rustichromia:windmill_blade>, <tfc:crop/product/jute_fiber>, <rustichromia:windmill_blade>],
	[<tfc:crop/product/jute_fiber>, <ore:gearWood>, <tfc:crop/product/jute_fiber>], 
	[<rustichromia:windmill_blade>, <tfc:crop/product/jute_fiber>, <rustichromia:windmill_blade>]]);