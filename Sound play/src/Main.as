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
		private var _cuePoints:Array;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_cuePoints = [0, 10000, 30000, 68000, 120000];
			_sound = new Sound();
			_sound.load(new URLRequest("media/yin.mp3"));
			playCuePoint(3);
		}
		public function playCuePoint(index:int):void {
		    _sound.play(_cuePoints[index]);
		}
		
	}
	
}