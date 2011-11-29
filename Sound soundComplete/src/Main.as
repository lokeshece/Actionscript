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
		private var _playList:Array;
		private var _index:int = 0;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_playList = ["media/song1.mp3", "media/song2.mp3", "media/song3.mp3"];
			playNextSong();
		}
		private function playNextSong():void {
		    if (_index < _playList.length) {
			    _sound = new Sound();
				_sound.load(new URLRequest(_playList[_index]));
				_channel = _sound.play();
				_channel.addEventListener(Event.SOUND_COMPLETE, onComplete);
				_index++;
			}
		}
		public function onComplete(event:Event):void {
		     playNextSong();
		}
	}
	
}