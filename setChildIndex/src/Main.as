package 
{   
	import flash.display.*;
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
			var red:Shape = createCircle(0xFF0000, 10);
			red.x = 10;
			red.y = 20;
			var green:Shape = createCircle(0x00FF00, 10);
			green.x = 15;
			green.y = 25;
			var blue:Shape = createCircle(0x0000FF, 10);
			blue.x = 20;
			blue.y = 20;
			addChild(red);
			addChild(green);
			addChild(blue);
			//setChildIndex(blue,0);
			//setChildIndex(green,numChildren-1);
			setChildIndex(green,getChildIndex(blue));
		}
		public function createCircle(color:uint, radius:Number):Shape {
		    var shape:Shape = new Shape();
			shape.graphics.beginFill(color);
			shape.graphics.drawCircle(0, 0, radius);
			shape.graphics.endFill();
			return shape;
		}
		
	}
	
}