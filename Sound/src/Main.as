package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.*;
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
			//_sound = new Sound();
			//_sound.load(new URLRequest("media/yin.mp3"));
			var request:URLRequest = new URLRequest("media/yin.mp3");
			var buffer:SoundLoaderContext = new SoundLoaderContext(10000);
			//_sound = new Sound(request,buffer);
			_sound = new Sound();
			_sound.load(request,buffer);
			_sound.play(40500);
		}
		
	}
	
}