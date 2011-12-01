package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author ifany
	 */
	public class PanControl extends Sprite
	{
		public var pan:Number = 0;
		public function PanControl() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			draw();
		}
		public function onClick(event:MouseEvent):void {
		    //When user clicks the bar, set the volume
			pan = event.localX / 50-1;
			draw();
			dispatchEvent(new Event(Event.CHANGE));
		}
		private function draw():void {
		    //draw a bar and the current volume position
			graphics.beginFill(0xcccccc);
			graphics.drawRect(0, 0, 102, 16);
			graphics.endFill();
			graphics.beginFill(0x000000);
			graphics.drawRect(50+pan*50,0,2,16);
		}
		
	}

}