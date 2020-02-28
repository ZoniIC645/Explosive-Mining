import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;
import crafttweaker.world.IWorld;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockStateMatcher;

print("asdf");

events.onPlayerBreakSpeed(
	function(event as crafttweaker.event.PlayerBreakSpeedEvent)
	{
		var isOre  = false as bool;
		var World = event.player.world;

		for i in 0 to 2{
			for j in 0 to 2{
				for k in 0 to 2{
					
					var x = event.x + i - 1 as int;
					var y = event.y + j - 1 as int;
					var z = event.z + k - 1 as int;

					var Block = World.getBlock( x,y,z );

					if(Block.definition.defaultState.commandString.matches("<blockstate:tfc:ore/.*") ){
						print("HAYO");
						isOre = true;
						break;
					}
				}
			}
		}
		if(isOre)
			event.newSpeed = event.originalSpeed * 0.25;
	}
);


/*
//Que will memorize blockpos
	    var Que = [] as IBlockPos[];
	    var rear = 0 as int;
	    var front = 0 as int;

	    var startpos = event.position as IBlockPos;
		
		//put start position to Que
		Que += startpos as IBlockPos;
		rear+=1 as int;

		while(rear>front){
			//pop Que
		    var pop = Que[front] as IBlockPos;
		    front+=1 as int;

		    //search six side of pop(pos)
		    for arr in sixside{
		    	var changedpoint = pop.changeValue(arr[0],arr[1],arr[2]) as IBlockPos;	

		    	//coditions
				var lengthpow = ( pow(startpos.x - changedpoint.x) + pow(startpos.y - changedpoint.y) + pow(startpos.z - changedpoint.z) ) as int;
				var isStone = (event.world.getBlockState(changedpoint)).matches(<blockstate:minecraft:stone>) as bool;

				if( ( pow(range) > lengthpow ) & isStone & (chance > Math.getRandom().nextInt(100)) )
				{//execution
					event.world.setBlockState(<blockstate:contenttweaker:unstable_stone>,changedpoint);
					Que += changedpoint as IBlockPos;
					rear+=1 as int;
				}
			}
		}
*/