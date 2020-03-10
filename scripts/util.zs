import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

var barrelArray = [
	<tfc:wood/barrel/acacia>,
	<tfc:wood/barrel/ash>,
	<tfc:wood/barrel/aspen>,
	<tfc:wood/barrel/birch>,
	<tfc:wood/barrel/blackwood>,
	<tfc:wood/barrel/chestnut>,
	<tfc:wood/barrel/douglas_fir>,
	<tfc:wood/barrel/hevea>,
	<tfc:wood/barrel/hickory>,
	<tfc:wood/barrel/kapok>,
	<tfc:wood/barrel/maple>,
	<tfc:wood/barrel/oak>,
	<tfc:wood/barrel/palm>,
	<tfc:wood/barrel/pine>,
	<tfc:wood/barrel/rosewood>,
	<tfc:wood/barrel/sequoia>,
	<tfc:wood/barrel/spruce>,
	<tfc:wood/barrel/sycamore>,
	<tfc:wood/barrel/white_cedar>,
	<tfc:wood/barrel/willow>
] as IItemStack[];

var TFCWoodenBarrel = oreDict.get("tfcwoodenbarrel") as IOreDictEntry;

for barrel in barrelArray{
	TFCWoodenBarrel.add(barrel);
}