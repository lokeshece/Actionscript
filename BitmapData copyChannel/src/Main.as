package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.display.BitmapDataChannel;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _bitmap:BitmapData;
		private var _loader:Loader;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoad);
			_loader.load(new URLRequest("images/hongkong2.jpg"));
			_bitmap = new BitmapData(stage.stageWidth, stage.stageHeight, false, 0xffffffff);
			var image:Bitmap = new Bitmap(_bitmap);
			addChild(image);
		}
		public function onLoad(event:Event):void {
		    var loaderBmp:Bitmap = Bitmap(_loader.content);
			_bitmap.copyChannel(loaderBmp.bitmapData,loaderBmp.bitmapData.rect,new Point(),BitmapDataChannel.RED,BitmapDataChannel.RED);
			_bitmap.copyChannel(loaderBmp.bitmapData, loaderBmp.bitmapData.rect, new Point(5,5), BitmapDataChannel.GREEN, BitmapDataChannel.GREEN);
			_bitmap.copyChannel(loaderBmp.bitmapData,loaderBmp.bitmapData.rect,new Point(10,10),BitmapDataChannel.BLUE,BitmapDataChannel.BLUE);
		}
		
	}
	
}