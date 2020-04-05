import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//바닐라 광물 테레기로
var IngotMap = {
    <ore:ingotIron> 	: <tfc:metal/ingot/wrought_iron>,
    <ore:ingotGold> 	: <tfc:metal/ingot/gold>,
    <ore:gemDiamond> 	: <tfc:gem/diamond:2>,
    <ore:ingotCopper>	: <tfc:metal/ingot/copper>
} as IIngredient[IIngredient];

for key in IngotMap.keys
	recipes.replaceAllOccurences(key, IngotMap[key]);

//어셈블러 전체삭제
mods.rustichromia.Assembler.removeAll();

//이머시브 함마 레시피 제거(광물갈갈, 판때기)
for recipe in recipes.getRecipesFor(<immersiveengineering:tool>){
	recipes.removeByRecipeName(recipe.name);
}

//이머시브 플레이트 전부 TFC(sheet)로
var SheetMap = {
    <tfc:metal/sheet/bismuth>			: null,
	<tfc:metal/sheet/bismuth_bronze>	: null,
	<tfc:metal/sheet/black_bronze>		: null,
	<tfc:metal/sheet/black_steel>		: null,
	<tfc:metal/sheet/blue_steel>		: null,
	<tfc:metal/sheet/brass>				: null,
	<tfc:metal/sheet/bronze>			: null,
	<tfc:metal/sheet/copper>			: <ore:plateCopper>,
	<tfc:metal/sheet/gold>				: <ore:plateGold>,
	<tfc:metal/sheet/lead>				: <ore:plateLead>,
	<tfc:metal/sheet/nickel>			: <ore:plateNickel>,
	<tfc:metal/sheet/pig_iron>			: null,
	<tfc:metal/sheet/platinum>			: null,
	<tfc:metal/sheet/red_steel>			: null,
	<tfc:metal/sheet/rose_gold>			: null,
	<tfc:metal/sheet/silver>			: <ore:plateSilver>,
	<tfc:metal/sheet/steel>				: <ore:plateSteel>,
	<tfc:metal/sheet/sterling_silver>	: null,
	<tfc:metal/sheet/tin>				: <ore:plateTin>,
	<tfc:metal/sheet/wrought_iron>		: <ore:plateIron>,
	<tfc:metal/sheet/zinc>				: null
} as IIngredient[IIngredient];

var DoubleIngotList = {
	<tfc:metal/double_ingot/bismuth>,
	<tfc:metal/double_ingot/bismuth_bronze>,
	<tfc:metal/double_ingot/black_bronze>,
	<tfc:metal/double_ingot/black_steel>,
	<tfc:metal/double_ingot/blue_steel>,
	<tfc:metal/double_ingot/brass>,
	<tfc:metal/double_ingot/bronze>,
	<tfc:metal/double_ingot/copper>,
	<tfc:metal/double_ingot/gold>,
	<tfc:metal/double_ingot/lead>,
	<tfc:metal/double_ingot/nickel>,
	<tfc:metal/double_ingot/pig_iron>,
	<tfc:metal/double_ingot/platinum>,
	<tfc:metal/double_ingot/red_steel>,
	<tfc:metal/double_ingot/rose_gold>,
	<tfc:metal/double_ingot/silver>,
	<tfc:metal/double_ingot/steel>,
	<tfc:metal/double_ingot/sterling_silver>,
	<tfc:metal/double_ingot/tin>,
	<tfc:metal/double_ingot/wrought_iron>,
	<tfc:metal/double_ingot/zinc>
} as IItemStack[];

var IngotList = {
	<tfc:metal/ingot/bismuth>,
	<tfc:metal/ingot/bismuth_bronze>,
	<tfc:metal/ingot/black_bronze>,
	<tfc:metal/ingot/black_steel>,
	<tfc:metal/ingot/blue_steel>,
	<tfc:metal/ingot/brass>,
	<tfc:metal/ingot/bronze>,
	<tfc:metal/ingot/copper>,
	<tfc:metal/ingot/gold>,
	<tfc:metal/ingot/lead>,
	<tfc:metal/ingot/nickel>,
	<tfc:metal/ingot/pig_iron>,
	<tfc:metal/ingot/platinum>,
	<tfc:metal/ingot/red_steel>,
	<tfc:metal/ingot/rose_gold>,
	<tfc:metal/ingot/silver>,
	<tfc:metal/ingot/steel>,
	<tfc:metal/ingot/sterling_silver>,
	<tfc:metal/ingot/tin>,
	<tfc:metal/ingot/wrought_iron>,
	<tfc:metal/ingot/zinc>
} as IItemStack[];

for key in SheetMap.keys{
	if(!isNull(SheetMap[key]))
		recipes.replaceAllOccurences(SheetMap[key], key);

}
