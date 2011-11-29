package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sound:Sound;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			_sound = new Sound();
			_sound.load(new URLRequest("media/yin.mp3"));
			_sound.play();
		}
		public function onEnterFrame(event:Event):void {
		    var barWidth:int = 200;
			var barHeight:int = 5;
			var loaded:int = _sound.bytesLoaded;
			var total:int = _sound.bytesTotal;
			if (total > 0) {
			    graphics.clear();
				graphics.beginFill(0xFFFFFF);
				graphics.drawRect(10, 10, barWidth, barHeight);
				graphics.endFill();
				
				var percent:Number = loaded / total;
			
				graphics.beginFill(0xcccccc);
				graphics.drawRect(10, 10, barWidth * percent, barHeight);
				graphics.endFill();
			}
		}
	}
	
}