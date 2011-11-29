package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.text.TextField;
	
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
			_sound = new Sound();
			_sound.load(new URLRequest('media/yin.mp3'));
			_sound.addEventListener(Event.ID3, onID3);
			_sound.play();
		}
		public function onID3(event:Event):void {
		    var id3Display:TextField = new TextField();
			addChild(id3Display);
			id3Display.x = 10;
			id3Display.y = 20;
			id3Display.width = 200;
			id3Display.height = 200;
			id3Display.background = true;
			id3Display.multiline = true;
			id3Display.wordWrap = true;
			
			id3Display.appendText(_sound.id3.songName + "\n");
			id3Display.appendText(_sound.id3.artist + "\n");
			id3Display.appendText(_sound.id3.album + "\n");
			id3Display.appendText(_sound.id3.year + "\n");
		}
		
	}
	
}