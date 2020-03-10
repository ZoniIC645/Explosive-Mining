import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

//tnt 버프
recipes.remove(<minecraft:tnt>);
recipes.addShaped(<minecraft:tnt> * 5, [[<minecraft:gunpowder>, <minecraft:sand>, <minecraft:gunpowder>],[<minecraft:sand>, <minecraft:gunpowder>, <minecraft:sand>], [<minecraft:gunpowder>, <minecraft:sand>, <minecraft:gunpowder>]]);

recipes.remove(<immersiveengineering:wooden_device0:4>);
recipes.addShaped(<immersiveengineering:wooden_device0:4> * 5, [[null, <tfc:crop/product/jute_fiber>, null],[<minecraft:gunpowder>, <immersiveengineering:wooden_device0:1>, <minecraft:gunpowder>], [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>]]);


//화약 : 황 + 초석 + 목탄
recipes.remove(<minecraft:gunpowder>);
recipes.addShapeless(<minecraft:gunpowder>*3, [<tfc:powder/saltpeter>,<tfc:powder/saltpeter>,<minecraft:coal:1>,<tfc:powder/sulfur>]);

//초석 : 초석이 나오는 지층의 흙 모래 자갈 아무거나 존나 때려박아서 만들수있게하자

/*
chalk
chert
claystone
conglomerate
dolomite
limestone
rocksalt
shale
*/

var Blocklist = [
	<tfc:sand/chalk>,
	<tfc:sand/chert>,
	<tfc:sand/claystone>,
	<tfc:sand/conglomerate>,
	<tfc:sand/dolomite>,
	<tfc:sand/limestone>,
	<tfc:sand/rocksalt>,
	<tfc:sand/shale>,
	<tfc:gravel/chalk>,
	<tfc:gravel/chert>,
	<tfc:gravel/claystone>,
	<tfc:gravel/conglomerate>,
	<tfc:gravel/dolomite>,
	<tfc:gravel/limestone>,
	<tfc:gravel/rocksalt>,
	<tfc:gravel/shale>,
	<tfc:dirt/chalk>,
	<tfc:dirt/chert>,
	<tfc:dirt/claystone>,
	<tfc:dirt/conglomerate>,
	<tfc:dirt/dolomite>,
	<tfc:dirt/limestone>,
	<tfc:dirt/rocksalt>,
	<tfc:dirt/shale>
] as IItemStack[];

var sedimentary = oreDict.get("sedimentary_earth") as IOreDictEntry;

for item in Blocklist
	sedimentary.add(item);

mods.terrafirmacraft.Quern.addRecipe("saltpeter", sedimentary * 20 , <tfc:powder/saltpeter>);

mods.rustichromia.Quern.add("saltpeter", [sedimentary * 20], [ <tfc:powder/saltpeter>], 10, 100, 160);

//황 : 마늘 -> 배럴(물) or 석탄가루 -> 배럴(석회수)

//마늘/양파
	var food = oreDict["GalicorOnion"] as IOreDictEntry;

	food.add(<tfc:food/onion>,<tfc:food/garlic>);

	mods.terrafirmacraft.Quern.addRecipe("foodsulfur", food , <tfc:powder/sulfur>*4);
	mods.rustichromia.Quern.add("foodsulfur", [ food] , [<tfc:powder/sulfur>*4], 10, 100, 160);

//석탄가루
	//석탄가루 레시피 추가함
	var coaldust = <prodigytech:coal_dust> as IItemStack;
	
	mods.terrafirmacraft.Quern.addRecipe("coaldust", <tfc:ore/bituminous_coal> , coaldust);
	mods.rustichromia.Quern.add("coaldust", [<tfc:ore/bituminous_coal>], [coaldust], 10, 100, 160);

	//배럴
	mods.terrafirmacraft.Barrel.addRecipe("sulfur", coaldust, <liquid:limewater>*100, <tfc:powder/sulfur>, null, 1);

