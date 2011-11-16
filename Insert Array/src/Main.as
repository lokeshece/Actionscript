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
			//letters.splice(1, 0, "r", "s", "t");
			letters.splice(1,2,"r","s","t");
			trace(letters);
		}
		
	}
	
}