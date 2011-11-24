package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.ConvolutionFilter;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	
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
			var _box:Sprite = new Sprite();
			_box.graphics.lineStyle();
			_box.graphics.beginFill(0xffffff);
			_box.graphics.drawRect(10, 10, 100, 100);
			_box.graphics.endFill();
			var _boxShadow:Sprite = new Sprite();
			_boxShadow.graphics.lineStyle();
			_boxShadow.graphics.beginFill(0xffffff);
			_boxShadow.graphics.drawRect(10, 10, 100, 100);
			_boxShadow.graphics.endFill();
			addChild(_boxShadow);
			addChild(_box);
			//_box.filters = [new DropShadowFilter(10), new GlowFilter()];
			_box.filters = [new GlowFilter()];
			_boxShadow.filters = [new DropShadowFilter(10,45,0,1,4,4,1,1,false,true)];
		}
		
	}
	
}