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
			var button:SimpleButton = new SimpleButton();
			button.x = 20;
			button.y = 20;
			button.upState = createCircle(0x00FF00, 15);
			button.overState = createCircle(0xFFFFFF, 16);
			button.downState = createCircle(0xCCCCCC, 15);
			button.hitTestState = button.upState;
			button.addEventListener(MouseEvent.CLICK,handleClick);
			addChild(button);
			
		}
		private function createCircle(color:uint, radius:Number):Shape {
		    var circle:Shape = new Shape();
			circle.graphics.lineStyle(1, 0x000000);
			circle.graphics.beginFill(color);
			circle.graphics.drawCircle(0, 0, radius);
			circle.graphics.endFill();
			return circle;
		}
		private function handleClick(event:MouseEvent):void {
		    trace("Mouse clicked on the button");
		}
		
	}
	
}