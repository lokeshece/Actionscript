package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ascb.util.ArrayUtilities;
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
			trace(ArrayUtilities.findMatchIndex(letters, "b"));
			trace(ArrayUtilities.findMatchIndex(letters, "r"));
			
			var letterss:Array = ["a", "b", "c", "d", "a", "b", "c", 'd'];
			trace(ArrayUtilities.findMatchIndex(letterss, "a", 1));
			
			var words:Array = ["bicycle", "baseball", "mat", "board"];
			trace(ArrayUtilities.findMatchIndex(words, "s", true));
			trace(ArrayUtilities.findMatchIndex(words,"s",true,2));
		}
		
	}
	
}