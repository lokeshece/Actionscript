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
			var ifany:String = "ifanyChen";
			trace(ifany.substr(0));
			trace(ifany.substr(0, 5));
			trace(ifany.substr(5, 5));
			trace(ifany.substr( -1));
			trace(ifany.substr(-2,5));
		}
		
	}
	
}