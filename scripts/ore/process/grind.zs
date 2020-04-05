#modloaded tfc
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import mods.immersiveengineering.CokeOven;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;
import mods.rustichromia.Gin;
import mods.rustichromia.Quern;
import crafttweaker.event.BlockHarvestDropsEvent;

//석탄 갈갈갈 
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    if(event.blockState.matches(<blockstate:gravelores:coal_gravel_ore>))
    	event.drops = [<gravelores:coal_gravel_ore>];
});

mods.terrafirmacraft.Quern.addRecipe("gravelcoal", <gravelores:coal_gravel_ore> , <tfc:ore/bituminous_coal>);
mods.rustichromia.Quern.remove("coal");
mods.rustichromia.Quern.add("gravelcoal", [<gravelores:coal_gravel_ore>], [<tfc:ore/bituminous_coal>], 10, 100, 160);

furnace.setFuel(<tfc:ore/bituminous_coal>,1600);


//초반 정제요
var NuggetToOreNameMap = {
	<tfc:ore/small/bismuthinite>	:"Bismuth",
	<tfc:ore/small/cassiterite>		:"Tin",
	<tfc:ore/small/galena>			:"Lead",
	<tfc:ore/small/garnierite>		:"Nickel",
	<tfc:ore/small/hematite>		:"Wrought Iron",
	<tfc:ore/small/limonite>		:"Wrought Iron",
	<tfc:ore/small/magnetite>		:"Wrought Iron",
	<tfc:ore/small/malachite>		:"Copper",
	<tfc:ore/small/native_copper>	:"Copper",
	<tfc:ore/small/native_gold>		:"Gold",
	<tfc:ore/small/native_platinum>	:"Platinum",
	<tfc:ore/small/native_silver>	:"Silver",
	<tfc:ore/small/sphalerite>		:"Zinc",
	<tfc:ore/small/tetrahedrite>	:"Copper"
} as string[IItemStack];

var OreList = [
	<tfc:ore/bismuthinite>,
	<tfc:ore/cassiterite>,
	<tfc:ore/galena>,
	<tfc:ore/garnierite>,
	<tfc:ore/hematite>,
	<tfc:ore/limonite>,
	<tfc:ore/magnetite>,
	<tfc:ore/malachite>,
	<tfc:ore/native_copper>,
	<tfc:ore/native_gold>,
	<tfc:ore/native_platinum>,
	<tfc:ore/native_silver>,
	<tfc:ore/sphalerite>,
	<tfc:ore/tetrahedrite>
] as IItemStack[];

var MetaToSizeMap = {
	1	: 2,
	0	: 4,
	2	: 5
} as int[int];

//Quern.add(String id, IIngredient[] inputs, IItemStack[] outputs, double minPower, double maxPower, double time)

//Quern.add("String id", IIngredient[] inputs, IItemStack[] outputs, double minPower, double maxPower, double time)
for ore in NuggetToOreNameMap{
	var i = 0 as int;
	for meta in MetaToSizeMap{
		Quern.add("ore" + OreList[i].definition.id+ meta, [ OreList[i].definition.makeStack(meta) , <tfc:crop/product/burlap_cloth>], [ ore * MetaToSizeMap[meta] ], 10, 100, 200);
	}
	i = i + 1;
}

ItemRegistry.registerItemMetal(<contenttweaker:iron_chunk>,"WROUGHT_IRON", 50, true);
