
//코크콜 -> 가루
mods.terrafirmacraft.Quern.addRecipe("cokedust", <immersiveengineering:material:6> , <immersiveengineering:material:17>);
mods.rustichromia.Quern.add("cokedust", [<immersiveengineering:material:6>], [<immersiveengineering:material:17>], 10, 100, 160);

//하는김에 flux 자동화레시피
mods.rustichromia.Quern.add("flux_1", [<ore:rockFlux>], [<tfc:powder/flux>*2], 10, 100, 160);
mods.rustichromia.Quern.add("flux_2", [<tfc:ore/borax>], [<tfc:powder/flux>*6], 10, 100, 160);

//플럭스 + 코크가루 + 석탄가루 -> 내화점토
var coaldust = <prodigytech:coal_dust>;
recipes.addShaped(<tfc:ceramics/fire_clay>, [[coaldust, <immersiveengineering:material:17>, <tfc:powder/flux>],[<immersiveengineering:material:17>, <minecraft:clay_ball>, <immersiveengineering:material:17>], [<tfc:powder/flux>, <immersiveengineering:material:17>, coaldust]]);
