import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//      ==========================================================
print(" =================== ATC OreDict (ores) =================== ");
print(" ========================================================== ");

//====== Variables ======
//

//====== Unify ores into oredicts =======
//made by Ordinator 2017-JUL-08


	//SILVER
	<ore:oreSilver>.addItems([	
//		<embers:ore_silver>,
		<thermalfoundation:ore:2>
		]);
	recipes.addShapeless("silverconvert", <thermalfoundation:ore:2>*2, [<ore:oreSilver>, <ore:oreSilver>]);

	
	//TIN
	<ore:oreTin>.addItems([	
//		<embers:ore_tin>,
		<thermalfoundation:ore:1>
		]);
	recipes.addShapeless("tinconvert", <thermalfoundation:ore:1>*2, [<ore:oreTin>, <ore:oreTin>]);

	
	//COPPER
	<ore:oreCopper>.addItems([	
//		<embers:ore_copper>,
		<thermalfoundation:ore>
		]);
	recipes.addShapeless("copperconvert", <thermalfoundation:ore>*2, [<ore:oreCopper>, <ore:oreCopper>]);

	
	//LEAD
	<ore:oreLead>.addItems([	
//		<embers:ore_lead>,
		<thermalfoundation:ore:3>
		]);
	recipes.addShapeless("leadconvert", <thermalfoundation:ore:3>*2, [<ore:oreLead>, <ore:oreLead>]);

	
	//NICKEL
	<ore:oreNickel>.addItems([	
//		<embers:ore_nickel>,
		<thermalfoundation:ore:5>
		]);
	recipes.addShapeless("nickelconvert", <thermalfoundation:ore:5>*2, [<ore:oreNickel>, <ore:oreNickel>]);

	
	//ALUMINUM
	<ore:oreAluminum>.addItems([	
//		<embers:ore_aluminum>,
		<thermalfoundation:ore:4>
		]);
	<ore:oreBauxite>.addItems([	
//		<embers:ore_aluminum>,
		<thermalfoundation:ore:4>
		]);
	recipes.addShapeless("aluminumconvert", <thermalfoundation:ore:4>*2, [<ore:oreAluminum>, <ore:oreAluminum>]);
	
	
	//IRIDIUM
	<ore:oreIridium>.addItems([	
		<thermalfoundation:ore:7>
		]);
	recipes.addShapeless("iridiumconvert", <thermalfoundation:ore:7>*2, [<ore:oreIridium>, <ore:oreIridium>]);
	
	
	//COAL
	<ore:oreCoal>.addItems([	
//		<cyclicmagic:end_coal_ore>,
//		<cyclicmagic:nether_coal_ore>,
		<minecraft:coal_ore>
	]);
	recipes.addShapeless("coalconvert", <minecraft:coal_ore>*2, [<ore:oreCoal>, <ore:oreCoal>]);


	//DIAMOND
	<ore:oreDiamond>.addItems([	
//		<cyclicmagic:end_diamond_ore>,
//		<cyclicmagic:nether_diamond_ore>,
		<minecraft:diamond_ore>
	]);
	recipes.addShapeless("diamondconvert", <minecraft:diamond_ore>*2, [<ore:oreDiamond>, <ore:oreDiamond>]);


	//EMERALD
	<ore:oreEmerald>.addItems([	
//		<cyclicmagic:end_emerald_ore>,
//		<cyclicmagic:nether_emerald_ore>,
		<minecraft:emerald_ore>
	]);
	recipes.addShapeless("emeraldconvert", <minecraft:emerald_ore>*2, [<ore:oreEmerald>, <ore:oreEmerald>]);

	
	//GAGIANITE
	/* --Ord (disabled section 12-JULY-2017)
	<ore:oreGagianite>.addItems([
		<resourcefulcrops:ore>,
		<resourcefulcrops:ore:1>
	]);
	recipes.addShapeless("gagianiteconvert", <resourcefulcrops:ore>*2, [<ore:oreGagianite>, <ore:oreGagianite>]);
	*/

	
	//DIMENSIONAL (RFTools)
	//<ore:oreDimensional>.addItems([	
	//	<rftools:dimensional_shard_ore>,
	//	<rftools:dimensional_shard_ore:1>,
	//	<rftools:dimensional_shard_ore:2>
	//]);
	//recipes.addShapeless("dimensionalconvert", <rftools:dimensional_shard_ore>*2, [<ore:oreDimensional>, <ore:oreDimensional>]);

	
	//REDSTONE
	<ore:oreRedstone>.addItems([	
//		<cyclicmagic:end_redstone_ore>,
//		<cyclicmagic:nether_redstone_ore>,
		<minecraft:redstone_ore>	
	]);
	recipes.addShapeless("redstoneconvert", <minecraft:redstone_ore>*2, [<ore:oreRedstone>, <ore:oreRedstone>]);

	
	//NETHER QUARTZ
	<ore:oreQuartz>.addItems([	
//		<embers:ore_quartz>,
		<minecraft:quartz_ore>
	]);
	recipes.addShapeless("netherquartzconvert", <minecraft:quartz_ore>*2, [<ore:oreQuartz>, <ore:oreQuartz>]);

	
	//LAPIS
	<ore:oreLapis>.addItems([	
//		<cyclicmagic:end_lapis_ore>,
//		<cyclicmagic:nether_lapis_ore>,
		<minecraft:lapis_ore>
	]);
	recipes.addShapeless("lapisconvert", <minecraft:lapis_ore>*2, [<ore:oreLapis>, <ore:oreLapis>]);

	
	//IRON
	<ore:oreIron>.addItems([	
//		<cyclicmagic:end_iron_ore>,
//		<cyclicmagic:nether_iron_ore>,
		<minecraft:iron_ore>
	]);
	recipes.addShapeless("ironconvert", <minecraft:iron_ore>*2, [<ore:oreIron>, <ore:oreIron>]);

	
	//GOLD
	<ore:oreGold>.addItems([	
//		<cyclicmagic:end_gold_ore>,
//		<cyclicmagic:nether_gold_ore>,
		<minecraft:gold_ore>
	]);
	recipes.addShapeless("goldconvert", <minecraft:gold_ore>*2, [<ore:oreGold>, <ore:oreGold>]);

	
	//GEM PERIDOT
	//<ore:orePeridot>.addItems([	
	//	<biomesoplenty:gem_ore:2>,
	//	<techreborn:ore:10>
	//	]);
	//recipes.addShapeless("peridotconvert", <techreborn:ore:10>*2, [<ore:orePeridot>, <ore:orePeridot>]);

	
	//GEM RUBY
//	<ore:oreRuby>.addItems([	
//		<biomesoplenty:gem_ore:1>,
//		<techreborn:ore:2>
//		]);
//	recipes.addShapeless("rubyconvert", <techreborn:ore:2>*2, [<ore:oreRuby>, <ore:oreRuby>]);

	
	//GEM SAPPHIRE
//	<ore:oreSapphire>.addItems([	
//		<biomesoplenty:gem_ore:6>,
//		<techreborn:ore:3>
//		]);
//	recipes.addShapeless("sapphireconvert", <techreborn:ore:3>*2, [<ore:oreSapphire>, <ore:oreSapphire>]);
