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
			trace(new Date());
			trace((new Date()).toString());
			
			var time:Date = new Date();
			var formatted:String = (time.month + 1) + "/" + time.fullYear;
			trace(formatted);
		}
		
	}
	
}