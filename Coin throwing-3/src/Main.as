package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ascb.util.NumberUtilities;
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
			for (var i:uint = 0; i < 10000; i++ ) {
			    trace(getRandomLetter());
			}
		}
		private function getRandomLetter():String {
		    var randomInteger:uint = NumberUtilities.random(0, 2);
			if (randomInteger == 0) {
				return "A";
			} else if (randomInteger == 1) {
				return "B";
			} else if (randomInteger == 2) { 
				return "C"; 
			}
			return "";
		}
		
	}
	
}