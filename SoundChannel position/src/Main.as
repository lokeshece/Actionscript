package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sound:Sound;
		private var _channel:SoundChannel;
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
			_sound.load(new URLRequest("media/song2.mp3"));
			_channel = _sound.play();
		}
		public function onEnterFrame(event:Event):void {
		    var barWidth:int = 200;
			var barHeight:int = 5;
			var loaded:int = _sound.bytesLoaded;
			var total:int = _sound.bytesTotal;
			var length:int = _sound.length;
			var position:int = _channel.position;
			
			graphics.clear();
			graphics.beginFill(0xFFFFFF);
			graphics.drawRect(10, 10, barWidth, barHeight);
			graphics.endFill();
			if (total > 0) {
			    var percentBeffered:Number = loaded / total;
				graphics.beginFill(0xCCCCCC);
				graphics.drawRect(10, 10, barWidth * percentBeffered, barHeight);
				graphics.endFill();
				
				var percentPlayed:Number = position / length;
				graphics.beginFill(0x666666);
				graphics.drawRect(10, 10, barWidth * percentPlayed, barHeight);
				graphics.endFill();
			}
		}
		
	}
	
}