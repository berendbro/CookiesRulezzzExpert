import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

//      ================================================
print(" =================== ATM Misc =================== ");
print(" ================================================ ");

//====== Variables ======
//
	var planks = <ore:plankWood>;
	var strings = <ore:string>;
	var cobweb = <minecraft:web>;
	var marble = <ore:stoneMarble>;


//====== Misc Tool Conflicts ======
//
	
	//recipes.remove(<embers:pickaxe_lead:0>);          //conflicts with <thermalfoundation:tool.pickaxe_lead:0>
	//recipes.remove(<embers:pickaxe_copper:0>);        //conflicts with <thermalfoundation:tool.pickaxe_copper:0>
	//recipes.remove(<embers:pickaxe_silver:0>);        //conflicts with <thermalfoundation:tool.pickaxe_silver:0>
	//recipes.remove(<embers:pickaxe_aluminum:0>);      //conflicts with <thermalfoundation:tool.pickaxe_aluminum:0>
	//recipes.remove(<embers:pickaxe_bronze:0>);        //conflicts with <thermalfoundation:tool.pickaxe_bronze:0>
	//recipes.remove(<embers:pickaxe_electrum:0>);      //conflicts with <thermalfoundation:tool.pickaxe_electrum:0>
	//recipes.remove(<embers:pickaxe_nickel:0>);        //conflicts with <thermalfoundation:tool.pickaxe_nickel:0>
	//recipes.remove(<embers:pickaxe_tin:0>);           //conflicts with <thermalfoundation:tool.pickaxe_tin:0>
	//recipes.remove(<embers:pickaxe_bronze:0>);        //conflicts with <techreborn:bronzepickaxe:0>	

	
//====== Recipe tweaks ======
//------ Mostly just due to conflicting recipe overlap
/*
	recipes.removeShaped(<rustic:crop_stake:0>);
	recipes.addShaped("cropstake", <rustic:crop_stake:0> * 3,
		[[null, null, planks],
		[null, planks, null],
		[planks, null, null]]);


	recipes.removeShaped(<stevescarts:modulecomponents:43>);
	recipes.addShaped("fuse", <stevescarts:modulecomponents:43> * 12,
		[[strings, null, null],
		[null, strings, null],
		[null, null, strings]]);
*/
	recipes.removeShaped(<quark:marble:1>);
	recipes.addShaped("marble", <quark:marble:1> * 9,
		[[marble, marble, marble],
		[marble, marble, marble],
		[marble, marble, marble]]);




//====== Quark Iron Plate (decoration) ======
//--Ord (12-JULY-2017)
//
	recipes.remove(<quark:iron_plate:0>); 	// conflicts with <techreborn:iron_furnace:0>

	// Orig recipe was 8 iron ingots -> 24 plate (3 plates per ingot)
	// Adding bucket adds 3 ingots (or 9 "plates" worth)
	// 24+9 = 33 and that's just a dumb number so I'm rounding down to a neat half-stack of 32

	recipes.addShapedMirrored("quarkdecorfixiron", <quark:iron_plate:0>*32,
		[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
		 [<ore:ingotIron>, <minecraft:bucket>, <ore:ingotIron>],
		 [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]
	);




//====== Charcoal / Graphite ======
// - Conflicts with tiny charcoal
//--Ord (12-JULY-2017)
//

	recipes.remove(<actuallyadditions:block_misc:5>);	// conflicts with <chisel:block_charcoal2:1>


//======= Crafting Table isnt oredict ============
// remove and create a new one
// Oz 10-8-17

	recipes.remove(<minecraft:crafting_table>);
	recipes.addShaped("newcraftingtable", <minecraft:crafting_table>,
	[[<ore:plankWood>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>]]
	);


//====== Dragon Egg Recipe ======
// - Add dragon egg so the mill and siphon can be used
// --Fallen (27-Aug-18)

	recipes.addShaped("DragonEgg", <minecraft:dragon_egg>, [
	[<minecraft:end_rod>, <minecraft:obsidian>, <minecraft:end_rod>],
	[<minecraft:obsidian>, <silentgems:soulgem>.withTag({sg_soul_gem: "EnderDragon"}), <minecraft:obsidian>],
	[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]	
	]);

//====== Jazz-up Quark Elytra dupe so it shows in JEI ======
//
	recipes.remove(<minecraft:elytra>.withTag({"quark:elytraDye": 0}));
	recipes.addShapeless("Elytra", <minecraft:elytra>.withTag({"quark:elytraDye": 0}), [
		<minecraft:elytra>.giveBack(), <quark:enderdragon_scale>
		]);
	<quark:enderdragon_scale>.addTooltip(
					format.underline(format.aqua(
					"Can be used to DUPLICATE an Elytra"
					)));
	mods.jei.JEI.addDescription(<quark:enderdragon_scale>, "By crafting an Elytra and a Dragon Scale together, the Dragon Scale will take the form of the Elytra","",
															"","This does not consume nor damage the original Elytra");
