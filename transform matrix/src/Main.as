package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _box:Sprite;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_box = new Sprite();
			_box.graphics.lineStyle();
			_box.graphics.beginFill(0x0000ff);
			_box.graphics.drawRect(10, 10, 100, 100);
			addChild(_box);
			_box.transform.matrix = new Matrix(1, 1, 0, 1, 0, 0);
			//_box.filters = [new DropShadowFilter()];
			var dropShadow:DropShadowFilter = new DropShadowFilter();
			dropShadow.color = 0x00ff00;
			var boxFilter:Array = [dropShadow];
			_box.filters = boxFilter;
			//dropShadow.color = 0xff0000;
			//_box.filters = boxFilter;
			boxFilter.push(new GlowFilter());
			_box.filters = boxFilter;
			
			//var boxFilters:Array = boxFilters.filters;
			//boxFilters.push(new GlowFilter());
			//_box.filters = boxFilters;
		}
		
	}
	
}