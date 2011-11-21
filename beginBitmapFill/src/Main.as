package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.display.BitmapData
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
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
			_loader.load(new URLRequest("http://www.yoro.com/static/styles/images/expe-ft-shadow.jpg"));
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onImageLoad);
		}
		private function onImageLoad(event:Event):void {
		    var bitmap:BitmapData = new BitmapData(_loader.width, _loader.height);
			bitmap.draw(_loader, new Matrix());
			var matrix:Matrix = new Matrix();
			matrix.scale(.1, 1);
			var sampleSprite:Sprite = new Sprite();
			sampleSprite.graphics.lineStyle();
			sampleSprite.graphics.beginBitmapFill(bitmap, matrix);
			sampleSprite.graphics.drawCircle(100, 100, 100);
			sampleSprite.graphics.endFill();
			addChild(sampleSprite);
		}
		
	}
	
}