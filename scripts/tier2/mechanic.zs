//피스톤 조합법 추가
recipes.addShaped(<minecraft:piston>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:stonePolished>, <ore:ingotAnyBronze>, <ore:stonePolished>], 
	[<ore:stonePolished>, <minecraft:redstone>, <ore:stonePolished>]]);

//크러싱텁 레시피 변경
recipes.replaceAllOccurences(<minecraft:iron_ingot>, <ore:ingotAnyBronze>, <rustic:crushing_tub>);

//기어박스 레시피
recipes.remove(<mysticalmechanics:gearbox_frame>);
recipes.addShaped(<mysticalmechanics:gearbox_frame>, [
	[<ore:stonePolished>, <mysticalmechanics:axle_iron>, <ore:stonePolished>],
	[<mysticalmechanics:axle_iron>, <ore:ingotAnyBronze>, <mysticalmechanics:axle_iron>], 
	[<ore:stonePolished>, <mysticalmechanics:axle_iron>, <ore:stonePolished>]]);

//아이언 엑실
<mysticalmechanics:axle_iron>.displayName = "Hardened Axle";
recipes.remove(<mysticalmechanics:axle_iron>);
recipes.addShaped(<mysticalmechanics:axle_iron>*16, [[null, null, null],[<ore:ingotAnyBronze>, <rustichromia:axle_wood>, <ore:ingotAnyBronze>], [null, null, null]]);

//아이언 기어 (중간에 메카니컬 컴포넌트임)
recipes.remove(<mysticalmechanics:gear_iron>);
recipes.addShaped(<mysticalmechanics:gear_iron>*4, [
	[<ore:stickIron>, null, <ore:stickIron>],
	[null, <immersiveengineering:material:8>, null], 
	[<ore:stickIron>, null, <ore:stickIron>]]);

<immersiveengineering:material:1>.displayName = "Wrought Iron Rod";


