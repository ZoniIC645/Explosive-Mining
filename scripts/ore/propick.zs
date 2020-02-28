import crafttweaker.item.IItemStack;

var headList = [
<tfc:metal/propick_head/bismuth_bronze>,
<tfc:metal/propick_head/black_bronze>,
<tfc:metal/propick_head/black_steel>,
<tfc:metal/propick_head/blue_steel>,
<tfc:metal/propick_head/bronze>,
<tfc:metal/propick_head/copper>,
<tfc:metal/propick_head/red_steel>,
<tfc:metal/propick_head/steel>,
<tfc:metal/propick_head/wrought_iron>,
] as IItemStack[];

var pickList = [
<tfc:metal/propick/bismuth_bronze>,
<tfc:metal/propick/black_bronze>,
<tfc:metal/propick/black_steel>,
<tfc:metal/propick/blue_steel>,
<tfc:metal/propick/bronze>,
<tfc:metal/propick/copper>,
<tfc:metal/propick/red_steel>,
<tfc:metal/propick/steel>,
<tfc:metal/propick/wrought_iron>,
] as IItemStack[];

for i,head in headList{
	var pick = pickList[i];
	recipes.remove(pick);
	recipes.addShaped(pick, [[null, head, null],[null, <tfc:crop/product/jute_fiber>, null], [null, <minecraft:stick>, null]]);
}