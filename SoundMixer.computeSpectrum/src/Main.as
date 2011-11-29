package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	import flash.media.SoundMixer;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sound:Sound;
		private var _channel:SoundChannel;
		private var _spectrumGraph:BitmapData;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			//Create bitmap for spectrum display
			_spectrumGraph = new BitmapData(256, 60, true, 0x00000000);
			var bitmap:Bitmap = new Bitmap(_spectrumGraph);
			addChild(bitmap);
			bitmap.x = 10;
			bitmap.y = 10;
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			_sound = new Sound();
			_sound.load(new URLRequest("media/song2.mp3"));
			_channel = _sound.play();
		}
		public function onEnterFrame(event:Event):void {
		    //Create the ByteArray and fill it with data
			var spectrum:ByteArray = new ByteArray();
			SoundMixer.computeSpectrum(spectrum);
			
			//Clear the bitmap
			_spectrumGraph.fillRect(_spectrumGraph.rect, 0x00000000);
			//Create the left channel visualization
			for (var i:int = 0; i < 256; i++) {
			    _spectrumGraph.setPixel32(i,20+spectrum.readFloat( )*20,0xff333333);
			}
			//Create the right channel visualization
			for (var j:int = 0; j < 256; j++ ) {
			    _spectrumGraph.setPixel32(j,40+spectrum.readFloat( )*20,0xff333333);
			}
		}
	}
	
}