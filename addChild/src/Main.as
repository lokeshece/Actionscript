package 
{
    import flash.events.Event;
	import flash.display.*;
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
			//var hello:TextField = new TextField();
			//hello.text = "ifany";
			//addChild(hello);
			
			var red:Shape = createCircle(0xFF0000, 10);
			red.x = 10;
			red.y = 20;
			var green:Shape = createCircle(0x00FF00, 10);
			green.x = 15;
			green.y = 25;
			var blue:Shape = createCircle(0x0000FF, 10);
			blue.x = 20;
			blue.y = 20;
			var container1:Sprite = new Sprite();
			container1.addChild(red);
			container1.addChild(green);
			container1.addChild(blue);
			addChild(container1);
			var container2:Sprite = new Sprite();
			addChild(container2);
			container2.addChild(red);
			
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