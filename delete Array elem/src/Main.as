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
			var letters:Array = ["a", "b", "c", "d"];
			//var delElems:Array=letters.splice(2, 2);
			//trace(letters);
			//trace(delElems);
			
			//trace(letters.shift());
			//trace(letters.pop());
			
			letters[6] = "g";
			trace(letters);
			for (var i:int = 0; i < letters.length; i++ ) {
			   if (letters[i]==undefined) {
				   letters.splice(i, 1);
				   i--;
				}	
			}
			trace(letters);
		}
		
	}
	
}