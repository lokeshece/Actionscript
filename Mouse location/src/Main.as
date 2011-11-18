package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _drawing:Boolean;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			graphics.lineStyle(2, 0xFFCC33);
			_drawing = false;
			stage.addEventListener(MouseEvent.MOUSE_DOWN, startDrawing);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, draw);
			stage.addEventListener(MouseEvent.MOUSE_UP,stopDrawing);
		}
		public function startDrawing(event:MouseEvent):void {
		    graphics.moveTo(mouseX, mouseY);
			_drawing = true;
		}
		public function draw(event:MouseEvent):void {
		    if (_drawing) {
			   graphics.lineTo(mouseX,mouseY);	
			}
		}
		public function stopDrawing(event:MouseEvent):void {
		    _drawing = false;	
		}
		
		
	}
	
}