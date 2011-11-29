package 
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sound:Sound;
		private var _channel:SoundChannel;
		private var _panControl:PanControl;
		private var _playing:Boolean = false;
		private var _displayText:TextField;
		private var _playPauseButton:Sprite;
		private var _position:int = 0;
		private var _spectrumGraph:SpectrumGraph;
		private var _volumeControl:VolumeControl;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			//Stage alignment
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			//Enter frame listener
			var timer:Timer = new Timer(20);
			timer.addEventListener(TimerEvent.TIMER, onTimer);
			timer.start();
			_playing = true;
			//Display a text field
			_displayText = new TextField();
			addChild(_displayText);
			_displayText.x = 10;
			_displayText.y = 17;
			_displayText.width = 256;
			_displayText.height = 14;
			//Create a sound object
			_sound = new Sound();
			_sound.load(new URLRequest("media/song2.mp3"));
			_sound.addEventListener(Event.ID3, onID3);
			_channel = _sound.play();
		    //Create a bitmap for spectrum display
			_spectrumGraph = new SpectrumGraph();
			_spectrumGraph.x = 10;
			_spectrumGraph.y = 33;
			addChild(_spectrumGraph);
			//Create the Play and Pause buttons
			_playPauseButton = new Sprite();
			_playPauseButton.x = 10;
			_playPauseButton.y = 68;
			addChild(_playPauseButton);
			_playPauseButton.addEventListener(MouseEvent.MOUSE_UP, onPlayPause);
			//Create volume and pan control
			_volumeControl = new VolumeControl();
			_volumeControl.x = 45;
			_volumeControl.y = 68;
			addChild(_volumeControl);
			_volumeControl.addEventListener(Event.CHANGE, onTransform);
			//Create panControl
			_panControl = new PanControl();
			_panControl.x = 164;
			_panControl.y = 68;
			addChild(_panControl);
			_panControl.addEventListener(Event.CHANGE, onTransform);
		}
		public function onTransform(event:Event):void {
		    //Get volume and pan data from controls and apply to a new SoundTransform object
			_channel.soundTransform = new SoundTransform(_volumeControl.volume,_panControl.pan);
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
		public function onID3(event:Event):void {
		    //Display selected id3 tags in the text field
			_displayText.text = _sound.id3.artist + ":" + _sound.id3.songName;
			_displayText.setTextFormat(new TextFormat("_typewriter",8,0));
		}
		public function onTimer(event:Event):void {
		    var barWidth:int = 256;
			var barHeight:int = 5;
			var loaded:int = _sound.bytesLoaded;
			var total:int = _sound.bytesTotal;
			var length:int = _sound.length;
			var position:int = _channel.position;
			//Draw a background bar
			graphics.clear();
			graphics.beginFill(0xCCCCCC);
			graphics.drawRect(10, 10, barWidth, barHeight);
			graphics.endFill();
			if (total > 0) {
			    //The percent of the sound that has loaded
				var percentBuffered:Number = loaded / total;
				//Draw a bar that represents the percent of the sound that has loaded
				graphics.beginFill(0x333333);
				graphics.drawRect(10, 10, barWidth * percentBuffered, barHeight);
				graphics.endFill();
				//Corrent the sound length calculation
				length /= percentBuffered;
				//The percent of the sound that has played
				var percentPlayed:Number = position / length;
				//Draw a bar that represents the percent of the sound that has played
				graphics.beginFill(0x66666);
				graphics.drawRect(10, 10, barWidth * percentPlayed, barHeight);
				graphics.endFill();
				_spectrumGraph.update();
			}
		}
		
	}
	
}
//"helper classes"
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.DropShadowFilter;
	import flash.geom.Rectangle;
	import flash.media.SoundMixer;
	import flash.utils.ByteArray;
	class playButton extends Sprite
	{
		
		public function playButton() 
		{
			//Draw the play/pause graphic
			graphics.beginFill(0xcccccc);
			graphics.drawRoundRect(0, 0, 20, 16, 4, 4);
			graphics.endFill();
			graphics.beginFill(0x333333);
			graphics.moveTo(4, 4);
			graphics.lineTo(8, 8);
			graphics.lineTo(4, 12);
			graphics.lineTo(4, 4);
			graphics.drawRect(10, 4, 4, 8);
			graphics.drawRect(14, 4, 2, 8);
			graphics.endFill();	
		}
		
	}
	Class SpectrumGraph extends Sprite {
	    public function SpectrumGraph() {
		
		}
	}
	Class VolumeControl extends Sprite {
	    public function VolumeControl() {
		
		}
	}
	Class PanControl extends Sprite {
	    public function PanControl() {
		
		}
	}
	