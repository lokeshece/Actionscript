package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		public var _loader:Loader = new Loader();
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_loader.load(new URLRequest("images/logo.png"));
		    _loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			
		}
		public function onComplete(event:Event):void {
		    //var image:Bitmap = Bitmap(_loader.content);
			//var bitmap:BitmapData = image.bitmapData;
			//addChild(image);
			
			var loadedImage:Bitmap = Bitmap(_loader.content);
			var bitmap:BitmapData = new BitmapData(loadedImage.width, loadedImage.height, false, 0xffffffff);
			bitmap.draw(loadedImage, new Matrix);
			var image:Bitmap = new Bitmap(bitmap);
			addChild(image);
			bitmap.fillRect(new Rectangle(15,20,20,20),0xffffffff);
		}
		
	}
	
}