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
			var red:Circle = new Circle(0xFF0000, 10);
			red.x = 10;
			red.y = 20;
			var green:Circle = new Circle(0x00FF00, 10);
			green.x = 15;
			green.y = 25;
			var blue:Circle = new Circle(0x0000FF);
			blue.x = 20;
			blue.y = 20;
			addChild(red);
			addChild(green);
			addChild(blue);
		}
		
	}
	
}