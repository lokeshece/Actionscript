package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
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
		private var _playPauseButton:Sprite;
		private var _playing:Boolean = false;
		private var _position:int;
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
			_playing = true;
			//A sprite to use as a Play/Pause button
			_playPauseButton = new Sprite();
			addChild(_playPauseButton);
			_playPauseButton.x = 10;
			_playPauseButton.y = 20;
			_playPauseButton.graphics.beginFill(0xCCCCCC);
			_playPauseButton.graphics.drawRect(0, 0, 20, 20);
			_playPauseButton.addEventListener(MouseEvent.MOUSE_UP, onPlayPause);
		}
		public function onPlayPause(event:MouseEvent):void {
		    if (_playing) {
			    _position = _channel.position;
				_channel.stop();
			}else {
			    _channel = _sound.play(_position);
			}
			_playing = !_playing;
		}
	}
	
}