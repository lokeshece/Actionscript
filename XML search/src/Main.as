package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var foodgroup:XML = <foodgroup>
			                      <fruits>
								      <fruit color="red">Apple</fruit>
									  <fruit color="orange">Orange</fruit>
									  <fruit color="green">Pear</fruit>
									  <fruit color="red">Watermelon</fruit>
									  <servings>3</servings>
								  </fruits>
								  <vegetables>
								       <vegetable color="red">Tomato</vegetable>
									   <vegetable color="brown">Potato</vegetable>
									   <vegetable color="green">Broccoli</vegetable>
									   <servings>2</servings>
								  </vegetables>
			                    </foodgroup>
								
			var fruitList:XMLList = foodgroup.fruits.fruit;
			//trace(fruitList);
			
			var thePear:XML = foodgroup.fruits.fruit[2];
			//trace(thePear);
			
			var vegetableList:XMLList = foodgroup..vegetable;
			//trace(vegetableList);
			
			var servings:XMLList = foodgroup.*.servings;
			//trace(servings);
			
			var colorValues:XMLList = foodgroup.fruits.fruit.@color;
			//trace(colorValues);
			
			//trace(foodgroup..fruit.(@color == "red"));
			
			trace(foodgroup..*.(hasOwnProperty("@color")&& @color=="red"));
		}
		
	}
	
}