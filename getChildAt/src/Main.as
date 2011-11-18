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
			var color:Array = [0xFF0000, 0X990000, 0x660000, 0X00FF00, 0x009900, 0x006600, 0x0000FF, 0X000099, 0X000066, 0XCCCCCC];
			for (var i:int = 0; i < 10; i++ ) {
			    var circle:Shape = createCircle(color[i], 10);
				circle.x = i + 6*i;
				circle.y = i + 10*i;
				addChild(circle);
			}
			stage.addEventListener(MouseEvent.CLICK,updateDisplay);
		}
		public function updateDisplay(event:MouseEvent):void {
		    setChildIndex(getChildAt(0),numChildren-1);
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