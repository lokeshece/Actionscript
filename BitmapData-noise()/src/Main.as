package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.BitmapDataChannel;
	import flash.filters.BlurFilter;
	import flash.geom.Point;
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
			//_bitmap.noise(1000, 0, 255, BitmapDataChannel.RED, false);
			//_bitmap.noise(1000, 200, 255, BitmapDataChannel.RED, false);
			//_bitmap.noise(1000, 0, 100, BitmapDataChannel.RED, false);
			//_bitmap.noise(1000, 0, 255, BitmapDataChannel.RED, true);
			_bitmap.noise(1000, 0, 255, BitmapDataChannel.RED|BitmapDataChannel.GREEN|BitmapDataChannel.BLUE, false);
			_bitmap.applyFilter(_bitmap,_bitmap.rect,new Point(),new BlurFilter(30,1,3));
			var image:Bitmap = new Bitmap(_bitmap);
			addChild(image);
		}
		
	}
	
}