package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _bitmap:BitmapData;
		//private var _bitmap2:BitmapData;
		private var _image:Bitmap;
		private var _seed:Number;
		private var _pixelCount:int = 0;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_bitmap = new BitmapData(stage.stageWidth, stage.stageHeight, false, 0xffffffff);
			//_bitmap2 = new BitmapData(stage.stageWidth, stage.stageHeight, false, 0xff000000);
			_image = new Bitmap(_bitmap);
			addChild(_image);
			_seed = Math.random() * 100000;
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		public function onEnterFrame(event:Event):void {
			var numPixels:Number = _bitmap.width * _bitmap.height / 100;
			//_seed = _bitmap.pixelDissolve(_bitmap2,_bitmap.rect,new Point(),_seed,1000);
			//_seed = _bitmap.pixelDissolve(_bitmap2,_bitmap.rect,new Point(),_seed,10000);
			_seed = _bitmap.pixelDissolve(_bitmap,_bitmap.rect,new Point(),_seed,numPixels);
			_pixelCount += numPixels;
			if (_pixelCount > _bitmap.width*_bitmap.height) {
				removeEventListener(Event.ENTER_FRAME,onEnterFrame);
			}
		}
		
	}
	
}