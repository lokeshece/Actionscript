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
		    var leftLevel:Number = _channel.leftPeak * 100;
			var rightLevel:Number = _channel.rightPeak * 100;
			graphics.clear();
			graphics.beginFill(0xcccccc);
			graphics.drawRect(10, 10, leftLevel, 10);
			graphics.endFill();
			graphics.beginFill(0xcccccc);
			graphics.drawRect(10, 25, rightLevel, 10);
			graphics.endFill();
		}
		
	}
	
}