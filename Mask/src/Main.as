package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ascb.drawing.Pen;
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
			var maskSprite:Sprite = new Sprite();
		    var pen:Pen = new Pen(maskSprite.graphics);
			pen.beginFill(0x000000);
			pen.drawArc(100, 100, 50, 80, 20, true);
			pen.endFill();
			var maskedSprite:Sprite = new Sprite();
			maskedSprite.graphics.lineStyle();
			maskedSprite.graphics.beginFill(0xFF0000);
			maskedSprite.graphics.drawRect(10, 10, 200, 200);
			maskedSprite.graphics.endFill();
			maskedSprite.mask = maskSprite;
			addChild(maskedSprite);
			//addChild(maskSprite);
		}
		
	}
	
}