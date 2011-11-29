package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sound:Sound;
		private var _channel:SoundChannel;
		private var _transform:SoundTransform;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_sound = new Sound();
			_sound.load(new URLRequest("media/song2.mp3"));
			_channel = _sound.play();
			_transform = new SoundTransform(.5,-1.0);
			//_transform.volume = 2;
			//_transform.pan = -1.0;
			_channel.soundTransform = _transform;
		}
		
	}
	
}