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
			//var list:String = "Peter Piper picked a peck of picked peppers";
			//var words:Array = list.split(" ");
			//trace(words);
			
			var lists:Array = ["a","b","c"];
			//trace(lists.join("|"));
			trace(lists.join())
		}
		
	}
	
}