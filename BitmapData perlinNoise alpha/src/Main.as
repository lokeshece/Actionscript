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
		private var _xoffset:int = 0;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_bitmap = new BitmapData(stage.stageWidth, stage.stageHeight, true, 0xffffffff);
			var image:Bitmap = new Bitmap(_bitmap);
			addChild(image);
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		public function onEnterFrame(event:Event):void {
		   _xoffset++;
		   var point:Point = new Point(_xoffset, 0);
		   _bitmap.perlinNoise(200,100,2,1000,false,true,1,true,[point,point]);
		}
		
	}
	
}