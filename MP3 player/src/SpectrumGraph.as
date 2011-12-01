package  
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite
	import flash.filters.DropShadowFilter;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;
	import flash.media.SoundMixer;
	/**
	 * ...
	 * @author ifany
	 */
	public class SpectrumGraph extends Sprite
	{
		private var _spectrumBMP:BitmapData;
		public function SpectrumGraph() 
		{
			//Bitmap to draw spectrum data in
		    _spectrumBMP = new BitmapData(256, 30, true, 0x00000000);
			var bitmap:Bitmap = new Bitmap(_spectrumBMP);
			bitmap.filters = [new DropShadowFilter(3, 45, 0, 1, 3, 2, .3, 3)];
			addChild(bitmap);
		}
		public function update():void {
		    //get spectrum data
			var spectrum:ByteArray = new ByteArray();
			SoundMixer.computeSpectrum(spectrum);
			//draw to bitmap
			_spectrumBMP.fillRect(_spectrumBMP.rect, 0xff666666);
			_spectrumBMP.fillRect(new Rectangle(1, 1, 254, 28), 0x00000000);
			for (var i:int = 0; i < 256; i++ ) {
			    _spectrumBMP.setPixel32(
				    i,
					10 + spectrum.readFloat() * 10,
					0xff000000
				);
			}
			for (var j:int = 0; j < 256; j++ ) {
			    _spectrumBMP.setPixel32(
				    j,
					20 + spectrum.readFloat() * 10,
					0xff000000
				);
			}
			
		}
		
	}

}