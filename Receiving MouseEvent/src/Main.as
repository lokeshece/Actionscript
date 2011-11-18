package 
{
	import flash.display.Sprite;
	import flash.events.*;
	import flash.geom.Point;
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
			var circle:Sprite = new Sprite();
			circle.x = 10;
			circle.y = 10;
			circle.graphics.beginFill(0xFF0000);
			circle.graphics.drawCircle(0, 0, 5);
			circle.graphics.endFill();
			addChild(circle);
			circle.addEventListener(MouseEvent.MOUSE_OVER,handleMouseMove);
		}
		private function handleMouseMove(event:MouseEvent):void {
		    trace("local x:" + event.localX);
			trace("local y:" + event.localY);
			var localPoint:Point = new Point(event.localX, event.localY);
			var globalPoint:Point = event.target.localToGlobal(localPoint);
			trace("global x:" + globalPoint.x);
			trace("global y:" + globalPoint.y);
		}
		
	}
	
}