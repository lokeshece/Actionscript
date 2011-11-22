package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _bitmap:BitmapData;
		private var _textfield:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_bitmap = new BitmapData(100, 100, false, 0xffffffff);
			var image:Bitmap = new Bitmap(_bitmap);
			addChild(image);
			_bitmap.noise(1000, 0, 255, 1 | 2 | 4, false);
			_textfield = new TextField();
			addChild(_textfield);
			_textfield.y = 100;
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		public function onEnterFrame(event:Event):void {
			var colorVal:Number = _bitmap.getPixel(mouseX, mouseY);
			_textfield.text = "#" + colorVal.toString(16).toUpperCase();
		}
		
	}
	
}