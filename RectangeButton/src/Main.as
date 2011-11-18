package 
{
	import flash.display.*;
	import flash.events.*;
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
			var button1:RectangleButton = new RectangleButton("button1", 60, 100);
			button1.x = 20;
			button1.y = 20;
			var button2:RectangleButton = new RectangleButton("button2", 80, 30);
			button2.x = 90;
			button2.y = 20;
			var button3:RectangleButton = new RectangleButton("button3", 100, 40);
			button3.x = 100;
			button3.y = 60;
			addChild(button1);
			addChild(button2);
			addChild(button3);
		}
		
	}
	
}