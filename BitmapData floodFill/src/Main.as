package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.events.MouseEvent;
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
			var sprite:Sprite = new Sprite();
			addChild(sprite);
			_bitmap = new BitmapData(stage.stageWidth, stage.stageHeight, false, 0xffffffff);
			for (var i:int = 0; i < 20; i++ ) {
			    _bitmap.fillRect(new Rectangle(Math.random()*stage.stageWidth,Math.random()*stage.stageHeight,50,50),Math.random()*0xffffffff);
			}
			var image:Bitmap = new Bitmap(_bitmap);
			sprite.addChild(image);
			sprite.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
		}
		public function onMouseDown(event:MouseEvent):void {
		    _bitmap.floodFill(mouseX,mouseY, 0xffff0000);
		}
		
	}
	
}