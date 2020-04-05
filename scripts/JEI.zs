import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

var RemoveList = [
	<mekanism:ingot:4>				,
	<nuclearcraft:alloy:5>			,
	<immersiveengineering:metal:8>	,
	<minecraft:iron_ingot>			,
	<minecraft:gold_ingot>
] as IItemStack[];

for item in RemoveList
	mods.jei.JEI.hide(item);

var PTCategoryList = [
	"ptexplosionfurnace",
	"ptexplosionfurnace_exp",
	"ptexplosionfurnace_damp",
	"ptincinerator",
	"ptgrinder",
	"ptsawmill",
	"ptsolderer",
	"ptreassembler",
	"ptrefinery",
	"ptfuelprocessor",
	"ptprimordialis",
	"ptreshaper"
] as string[];

for cat in PTCategoryList
	mods.jei.JEI.hideCategory(cat);
