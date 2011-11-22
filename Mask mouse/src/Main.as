package 
{
	import flash.display.*;
	import flash.events.Event;
	import flash.net.URLRequest;
	
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
			var loader:Loader = new Loader();
			loader.load(new URLRequest("images/hongkong2.jpg"));
			addChild(loader);
			var maskSprite:Sprite = new Sprite();
			maskSprite.graphics.lineStyle();
			maskSprite.graphics.beginFill(0x999999);
			maskSprite.graphics.drawCircle(0, 0, 50);
			maskSprite.graphics.endFill();
			loader.mask = maskSprite;
			addChild(maskSprite);
			maskSprite.startDrag(true);
		}
		
	}
	
}