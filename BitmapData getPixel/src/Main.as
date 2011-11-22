package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var bitmap:BitmapData = new BitmapData(100, 100, true, 0xffffffff);
			var image:Bitmap = new Bitmap(bitmap);
			addChild(image);
			for (var i:int = 0; i < 1000; i++ ) {
			    bitmap.setPixel32(Math.round(Math.random()*100),Math.round(Math.random()*100),0x88ff0000);
			}
		}
		
	}
	
}