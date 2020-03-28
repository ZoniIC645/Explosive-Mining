import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

var RemoveList = [
	<mekanism:ingot:4>				,
	<nuclearcraft:alloy:5>			,
	<immersiveengineering:metal:8>	
] as IItemStack[];

for item in RemoveList
	mods.jei.JEI.hide(item);

