package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.BlurFilter;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _bitmap:BitmapData;
		private var _image:Bitmap;
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
			_image = new Bitmap(_bitmap);
			addChild(_image);
			_image.filters = [new BlurFilter()];
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		public function onEnterFrame(event:Event):void {
		    for (var i:int = 0; i < 100; i++ ) { 
			   _bitmap.setPixel(mouseX+Math.random()*20-10,mouseY+Math.random()*20-10,0xffffffff);	
			}
		}
		
	}
	
}