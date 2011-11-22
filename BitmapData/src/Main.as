package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.*;
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
			
			//var bitmap:BitmapData = new BitmapData(100, 100, true, 0xffff0000);
			//var image:Bitmap = new Bitmap(bitmap);
			//addChild(image);
			
			var bitmap:BitmapData = new BitmapData(100, 100, true, 0x00ffffff);
			var sprite:Sprite = new Sprite();
			sprite.graphics.lineStyle(0x000000);
			sprite.graphics.beginFill(0xff0000, 100);
			sprite.graphics.drawEllipse(0, 25, 100, 50);
			sprite.graphics.endFill();
			bitmap.draw(sprite);
			var image:Bitmap = new Bitmap(bitmap);
			addChild(image);
		}
		
	}
	
}