package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author ifany
	 */
	public class VolumeControl extends Sprite
	{
		public var volume:Number = 1.0;
		public function VolumeControl() 
		{
			addEventListener(MouseEvent.CLICK, onClick);
			draw();
		}
		public function onClick(event:MouseEvent):void {
		    //When user clicks the bar, set the volume
			volume = event.localX / 100;
			draw();
			dispatchEvent(new Event(Event.CHANGE));
		}
		private function draw():void {
		    //draw a bar and the current volume position
			graphics.beginFill(0xcccccc);
			graphics.drawRect(0, 0, 102, 16);
			graphics.endFill();
			graphics.beginFill(0x000000);
			graphics.drawRect(volume*100,0,2,16);
		}
		
	}

}