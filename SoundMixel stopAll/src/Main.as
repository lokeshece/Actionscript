package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	import flash.media.SoundMixer;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sound:Sound;
		private var _channel:SoundChannel;
		private var _stopAllButton:Sprite;
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
			
			_stopAllButton = new Sprite();
			addChild(_stopAllButton);
			_stopAllButton.x = 10;
			_stopAllButton.y = 60;
			_stopAllButton.graphics.beginFill(0xff0000);
			_stopAllButton.graphics.drawRect(0, 0, 20, 20);
			_stopAllButton.graphics.endFill();
			_stopAllButton.addEventListener(MouseEvent.MOUSE_UP, onStopAll);
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
		private function onStopAll(event:Event):void {
		    SoundMixer.stopAll();
		}
		
	}
	
}