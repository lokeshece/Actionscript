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
			var example:XML = <example>
			                     <fruit color="Red">Apple</fruit>
								 <vegetable color="Green">Broccoli</vegetable>
								 <dairy color="White">Milk</dairy>
			                  </example>;
			//delete "fruit" Element's color attribute.
			delete example.fruit.@color;
			//delete "dairy" Element
			delete example.dairy;
			//delete "vegetable" Element's textNode
			delete example.vegetable.text()[0];
			trace(example+"\n");
			
			var eat:XML = <eat>
			                 <fruit color="red" name="Apple">Apple</fruit>
			              </eat>
		    //Get an XMLList of the attributes for fruit
			var attributes:XMLList = eat.fruit.@ * ;
			for (var i:int = attributes.length() - 1; i >= 0; i-- ) {
			    delete attributes[i];
			}
			trace(eat);
		}
		
	}
	
}