import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

var iron_rod = RecipeBuilder.newBuilder("iron_rod", "lathe", 100) as RecipePrimer;

iron_rod.addItemInput(<ore:ingotWroughtIron>);
iron_rod.addItemOutput(<tfctech:metal/wrought_iron_rod>);

iron_rod.addMysticalMechanicsInput(10, 100);
iron_rod.addMysticalMechanicsOutput(10,99);

iron_rod.build();

var testengine = RecipeBuilder.newBuilder("fire", "testengine", 50) as RecipePrimer;

testengine.addItemInput(<ore:gemCoal>);
testengine.addMysticalMechanicsOutput(10,50);

testengine.build();