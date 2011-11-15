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
			
			//trace(Math.round(204.499));
			//trace(Math.round(204.5));
			trace(Math.round(90.339 / 0.01) * .01);
			trace(Math.round(92.5 / 5) * 5);
			trace(Math.round(92.5/10)*10);
			
			//trace(Math.floor(10.999));
			//trace(Math.ceil(10.001));
		}
		
	}
	
}