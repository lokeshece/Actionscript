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
			graphics.lineStyle(1, 0, 1);
			for (var i:int = 0; i < 100; i++ ) {
		         graphics.lineTo(Math.random() * 400, Math.random() * 400);
			}
		}
		
	}
	
}