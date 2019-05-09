import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

//      ==========================================================
print(" =================== ATC OreDict (wood) =================== ");
print(" ========================================================== ");

// https://github.com/AllTheMods/ATC/edit/master/Modpack/scripts/atc_oredict_wood.zs

//====== Variables ======
//

//====== Unify wood stuff in oredicts =======
// made by Ordinator 2017-JUL-08


//====== Variables ======
//
	var Chest = <ore:chest>;
	var ChestWood = <ore:chestWood>;
	var ChestTrapped = <ore:chestTrapped>;
	var Trapdoor = <ore:trapdoorWood>;
	var Door = <ore:doorWood>;
	var Bed = <ore:bed>;
	var Log = <ore:logWood>;
	var Plank = <ore:plankWood>;
	var WoodSlab = <ore:slabWood>;
	var WoodStair = <ore:stairWood>;
	var Stick = <ore:stickWood>;
	var Fence = <ore:fenceWood>;
	var Gate = <ore:fenceGateWood>;


//====== Planks ======
//--Ord (added 12-JULY-2017)
//
	var PlanksToAdd = [
		<quark:stained_planks:15>, 
		<quark:stained_planks:11>, 
		<quark:stained_planks:12>, 
		<quark:stained_planks:9>, 
		<quark:stained_planks:7>, 
		<quark:stained_planks:13>, 
		<quark:stained_planks:3>, 
		<quark:stained_planks:5>, 
		<quark:stained_planks:2>, 
		<quark:stained_planks:1>, 
		<quark:stained_planks:6>, 
		<quark:stained_planks:10>, 
		<quark:stained_planks:14>, 
		<quark:stained_planks:8>, 
		<quark:stained_planks:0>, 
		<quark:stained_planks:4>, 
		<quark:vertical_stained_planks:15>, 
		<quark:vertical_stained_planks:11>, 
		<quark:vertical_stained_planks:12>, 
		<quark:vertical_stained_planks:9>, 
		<quark:vertical_stained_planks:7>, 
		<quark:vertical_stained_planks:13>, 
		<quark:vertical_stained_planks:3>, 
		<quark:vertical_stained_planks:5>, 
		<quark:vertical_stained_planks:2>, 
		<quark:vertical_stained_planks:1>, 
		<quark:vertical_stained_planks:6>, 
		<quark:vertical_stained_planks:10>, 
		<quark:vertical_stained_planks:14>, 
		<quark:vertical_stained_planks:8>, 
		<quark:vertical_stained_planks:0>, 
		<quark:vertical_stained_planks:4>, 
		<chisel:planks-acacia>, 
		<chisel:planks-acacia:1>, 
		<chisel:planks-acacia:2>, 
		<chisel:planks-acacia:3>, 
		<chisel:planks-acacia:4>, 
		<chisel:planks-acacia:5>, 
		<chisel:planks-acacia:6>, 
		<chisel:planks-acacia:7>, 
		<chisel:planks-acacia:8>, 
		<chisel:planks-acacia:9>, 
		<chisel:planks-acacia:10>, 
		<chisel:planks-acacia:11>, 
		<chisel:planks-acacia:12>, 
		<chisel:planks-acacia:13>, 
		<chisel:planks-acacia:14>, 
		<chisel:planks-birch>, 
		<chisel:planks-birch:1>, 
		<chisel:planks-birch:2>, 
		<chisel:planks-birch:3>, 
		<chisel:planks-birch:4>, 
		<chisel:planks-birch:5>, 
		<chisel:planks-birch:6>, 
		<chisel:planks-birch:7>, 
		<chisel:planks-birch:8>, 
		<chisel:planks-birch:9>, 
		<chisel:planks-birch:10>, 
		<chisel:planks-birch:11>, 
		<chisel:planks-birch:12>, 
		<chisel:planks-birch:13>, 
		<chisel:planks-birch:14>, 
		<chisel:planks-dark-oak>, 
		<chisel:planks-dark-oak:1>, 
		<chisel:planks-dark-oak:2>, 
		<chisel:planks-dark-oak:3>, 
		<chisel:planks-dark-oak:4>, 
		<chisel:planks-dark-oak:5>, 
		<chisel:planks-dark-oak:6>, 
		<chisel:planks-dark-oak:7>, 
		<chisel:planks-dark-oak:8>, 
		<chisel:planks-dark-oak:9>, 
		<chisel:planks-dark-oak:10>, 
		<chisel:planks-dark-oak:11>, 
		<chisel:planks-dark-oak:12>, 
		<chisel:planks-dark-oak:13>, 
		<chisel:planks-dark-oak:14>, 
		<chisel:planks-jungle>, 
		<chisel:planks-jungle:1>, 
		<chisel:planks-jungle:2>, 
		<chisel:planks-jungle:3>, 
		<chisel:planks-jungle:4>, 
		<chisel:planks-jungle:5>, 
		<chisel:planks-jungle:6>, 
		<chisel:planks-jungle:7>, 
		<chisel:planks-jungle:8>, 
		<chisel:planks-jungle:9>, 
		<chisel:planks-jungle:10>, 
		<chisel:planks-jungle:11>, 
		<chisel:planks-jungle:12>, 
		<chisel:planks-jungle:13>, 
		<chisel:planks-jungle:14>, 
		<chisel:planks-oak>, 
		<chisel:planks-oak:1>, 
		<chisel:planks-oak:2>, 
		<chisel:planks-oak:3>, 
		<chisel:planks-oak:4>, 
		<chisel:planks-oak:5>, 
		<chisel:planks-oak:6>, 
		<chisel:planks-oak:7>, 
		<chisel:planks-oak:8>, 
		<chisel:planks-oak:9>, 
		<chisel:planks-oak:10>, 
		<chisel:planks-oak:11>, 
		<chisel:planks-oak:12>, 
		<chisel:planks-oak:13>, 
		<chisel:planks-oak:14>, 
		<chisel:planks-spruce>, 
		<chisel:planks-spruce:1>, 
		<chisel:planks-spruce:2>, 
		<chisel:planks-spruce:3>, 
		<chisel:planks-spruce:4>, 
		<chisel:planks-spruce:5>, 
		<chisel:planks-spruce:6>, 
		<chisel:planks-spruce:7>, 
		<chisel:planks-spruce:8>, 
		<chisel:planks-spruce:9>, 
		<chisel:planks-spruce:10>, 
		<chisel:planks-spruce:11>, 
		<chisel:planks-spruce:12>, 
		<chisel:planks-spruce:13>, 
		<chisel:planks-spruce:14>, 
		<minecraft:planks>, 
		<minecraft:planks:1>, 
		<minecraft:planks:2>, 
		<minecraft:planks:3>, 
		<minecraft:planks:4>, 
		<minecraft:planks:5>, 
		<quark:stained_planks>, 
		<quark:stained_planks:1>, 
		<quark:stained_planks:2>, 
		<quark:stained_planks:3>, 
		<quark:stained_planks:4>, 
		<quark:stained_planks:5>, 
		<quark:stained_planks:6>, 
		<quark:stained_planks:7>, 
		<quark:stained_planks:8>, 
		<quark:stained_planks:9>, 
		<quark:stained_planks:10>, 
		<quark:stained_planks:11>, 
		<quark:stained_planks:12>, 
		<quark:stained_planks:13>, 
		<quark:stained_planks:14>, 
		<quark:stained_planks:15>, 
		<quark:vertical_planks>, 
		<quark:vertical_planks:1>, 
		<quark:vertical_planks:2>, 
		<quark:vertical_planks:3>, 
		<quark:vertical_planks:4>, 
		<quark:vertical_planks:5>, 
		<quark:vertical_stained_planks>, 
		<quark:vertical_stained_planks:1>, 
		<quark:vertical_stained_planks:2>, 
		<quark:vertical_stained_planks:3>, 
		<quark:vertical_stained_planks:4>, 
		<quark:vertical_stained_planks:5>, 
		<quark:vertical_stained_planks:6>, 
		<quark:vertical_stained_planks:7>, 
		<quark:vertical_stained_planks:8>, 
		<quark:vertical_stained_planks:9>, 
		<quark:vertical_stained_planks:10>, 
		<quark:vertical_stained_planks:11>, 
		<quark:vertical_stained_planks:12>, 
		<quark:vertical_stained_planks:13>, 
		<quark:vertical_stained_planks:14>, 
		<quark:vertical_stained_planks:15>, 
		<traverse:fir_planks>
	] as IItemStack[];
	
	Plank.addItems(PlanksToAdd);


//====== Crafting Tables ======
//
	var TablesToAdd = [
		<actuallyadditions:item_crafter_on_a_stick>,
		<minecraft:crafting_table>
	] as IItemStack[];
	
	<ore:craftingTableWood>.addItems(TablesToAdd);
	<ore:crafterWood>.addItems(TablesToAdd);


//======Add to chest======
//
	var ChestsToAdd = [
		<minecraft:chest>,
		<minecraft:ender_chest>,
		<minecraft:trapped_chest>,
		<actuallyadditions:block_treasure_chest>,
		//<appliedenergistics2:sky_stone_chest>,
		//<appliedenergistics2:smooth_sky_stone_chest>,
		//<randomthings:specialChest:0>,
		//<randomthings:specialChest:1>,
		<quark:custom_chest:0>,
		<quark:custom_chest:1>,
		<quark:custom_chest:2>,
		<quark:custom_chest:3>,
		<quark:custom_chest:4>,
		<quark:custom_chest_trap:0>,
		<quark:custom_chest_trap:1>,
		<quark:custom_chest_trap:2>,
		<quark:custom_chest_trap:3>,
		<quark:custom_chest_trap:4>,
		//<darkutils:chest_glacial>,
		//<darkutils:chest_glass>,
		//<darkutils:chest_jungle>,
		//<darkutils:chest_magic>,
		//<darkutils:chest_nether>,
		//<darkutils:chest_royal>,
		//<darkutils:chest_sandstone>,
		//<darkutils:chest_prismarine>
	] as IItemStack[];
	
	Chest.addItems(ChestsToAdd);

//======Add to chestWood======
//
	var WoodChestToAdd = [
		<minecraft:chest>,
		<minecraft:trapped_chest>,
		//<randomthings:specialChest:0>,
		//<randomthings:specialChest:1>,
		<quark:custom_chest:0>,
		<quark:custom_chest:1>,
		<quark:custom_chest:2>,
		<quark:custom_chest:3>,
		<quark:custom_chest:4>,
		<quark:custom_chest_trap:0>,
		<quark:custom_chest_trap:1>,
		<quark:custom_chest_trap:2>,
		<quark:custom_chest_trap:3>,
		<quark:custom_chest_trap:4>
	] as IItemStack[];
	
	ChestWood.addItems(WoodChestToAdd);


//======Add to chestTrapped======
//
	var TrappedChestToAdd = [
		<minecraft:trapped_chest>,
		<quark:custom_chest_trap:0>,
		<quark:custom_chest_trap:1>,
		<quark:custom_chest_trap:2>,
		<quark:custom_chest_trap:3>,
		<quark:custom_chest_trap:4>
	] as IItemStack[];

	ChestTrapped.addItems(TrappedChestToAdd);
	
	
//======Add to ore:bed======
//
	var BedToAdd = [
		//<quark:colored_bed_black:0>,
		//<quark:colored_bed_blue:0>,
		//<quark:colored_bed_brown:0>,
		//<quark:colored_bed_cyan:0>,
		//<quark:colored_bed_gray:0>,
		//<quark:colored_bed_green:0>,
		//<quark:colored_bed_item:0>,
		//<quark:colored_bed_item:1>,
		//<quark:colored_bed_item:2>,
		//<quark:colored_bed_item:3>,
		//<quark:colored_bed_item:4>,
		//<quark:colored_bed_item:5>,
		//<quark:colored_bed_item:6>,
		//<quark:colored_bed_item:7>,
		//<quark:colored_bed_item:8>,
		//<quark:colored_bed_item:9>,
		//<quark:colored_bed_item:10>,
		//<quark:colored_bed_item:11>,
		//<quark:colored_bed_item:12>,
		//<quark:colored_bed_item:13>,
		//<quark:colored_bed_item:14>,
		//<quark:colored_bed_light_blue:0>,
		//<quark:colored_bed_lime:0>,
		//<quark:colored_bed_magenta:0>,
		//<quark:colored_bed_orange:0>,
		//<quark:colored_bed_pink:0>,
		//<quark:colored_bed_purple:0>,
		//<quark:colored_bed_silver:0>,
		//<quark:colored_bed_white:0>,
		//<quark:colored_bed_yellow:0>,
		<minecraft:bed>, //White Bed
		<minecraft:bed:1>, //Orange Bed
		<minecraft:bed:2>, //Magenta Bed
		<minecraft:bed:3>, //Light Blue Bed
		<minecraft:bed:4>, //Yellow Bed
		<minecraft:bed:5>, //Lime Bed
		<minecraft:bed:6>, //Pink Bed
		<minecraft:bed:7>, //Gray Bed
		<minecraft:bed:8>, //Light Gray Bed
		<minecraft:bed:9>, //Cyan Bed
		<minecraft:bed:10>, //Purple Bed
		<minecraft:bed:11>, //Blue Bed
		<minecraft:bed:12>, //Brown Bed
		<minecraft:bed:13>, //Green Bed
		<minecraft:bed:14>, //Red Bed
		<minecraft:bed:15>, //Black Bed
//		<cyclicmagic:sleeping_mat>
	] as IItemStack[];
	
	Bed.addItems(BedToAdd);


//======Add to Trapdoor======
//
	var TrapdoorToAdd = [
		<minecraft:trapdoor>,
		<quark:dark_oak_trapdoor>,
		<quark:spruce_trapdoor>,
		<quark:birch_trapdoor>,
		<quark:jungle_trapdoor>,
		<quark:acacia_trapdoor>
	] as IItemStack[];
	
	Trapdoor.addItems(TrapdoorToAdd);
	
//======Add to Door======
	var DoorToAdd = [
		<minecraft:wooden_door>,
		<traverse:fir_door>,
		<minecraft:acacia_door>,
		<minecraft:jungle_door>,
		<minecraft:birch_door>,
		<minecraft:spruce_door>,
		<minecraft:dark_oak_door>
	] as IItemStack[];
	
	Door.addItems(DoorToAdd);

//======Conversion Recipes======
	recipes.addShapeless("trapdoororedict1", <minecraft:trapdoor>, [Trapdoor]);
	recipes.addShapeless("trappedchestoredict1", <minecraft:trapped_chest>, [ChestTrapped]);
	recipes.addShapeless("chestoredict1", <minecraft:chest>, [Chest]);
	recipes.addShapeless("bedoredict1", <minecraft:bed>, [<ore:bed>]);
	recipes.addShapeless("wooddoororedict1", <minecraft:wooden_door>, [Door]);

