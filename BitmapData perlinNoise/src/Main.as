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
		private var _bitmap:BitmapData;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_bitmap = new BitmapData(stage.stageWidth, stage.stageHeight, false, 0xff000000);
			//_bitmap.perlinNoise(100, 100, 1, 1000, false, false,1, true, null);
			//_bitmap.perlinNoise(200, 50, 1, 1000, false, false,1, true, null);
			//_bitmap.perlinNoise(100, 100, 1, 10000, false, false,1, true, null);
			//_bitmap.perlinNoise(100, 100, 1, 1000, true, false,1, true, null);
			_bitmap.perlinNoise(100, 100, 1, 1000, false, true,1, true, null);
			var image:Bitmap = new Bitmap(_bitmap);
			addChild(image);
		}
		
	}
	
}