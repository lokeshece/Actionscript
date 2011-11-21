package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.filters.DropShadowFilter;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _red:Sprite;
		private var _green:Sprite;
		private var _blue:Sprite;
		private var _black:Sprite;
		//保持被拖动对象原始坐标
		private var startingLocation:Point;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			createRectangles();
			addEventListeners();
		}
		private function createRectangles():void {
		    _red = new Sprite();
			_red.graphics.beginFill(0xFF0000);
			_red.graphics.drawRect(100, 10, 10, 10);
			_red.graphics.endFill();
			_green = new Sprite();
			_green.graphics.beginFill(0x00FF00);
			_green.graphics.drawRect(100, 30, 10, 10);
			_green.graphics.endFill();
			_blue = new Sprite();
			_blue.graphics.beginFill(0x0000FF);
			_blue.graphics.drawRect(100, 50, 10, 10);
			_blue.graphics.endFill();
			_black = new Sprite();
			_black.graphics.beginFill(0x000000);
			_black.graphics.drawRect(120, 10, 50, 50);
			_black.graphics.endFill();
			addChild(_red);
			addChild(_green);
			addChild(_blue);
			addChild(_black);
		}
		private function addEventListeners():void {
		    _red.addEventListener(MouseEvent.MOUSE_DOWN, pickup);
			_red.addEventListener(MouseEvent.MOUSE_UP, place);
			_green.addEventListener(MouseEvent.MOUSE_DOWN, pickup);
			_green.addEventListener(MouseEvent.MOUSE_UP, place);
			_blue.addEventListener(MouseEvent.MOUSE_DOWN, pickup);
			_blue.addEventListener(MouseEvent.MOUSE_UP, place);
		}
		public function pickup(event:MouseEvent):void {
		    //保存原始坐标以便回位
			startingLocation = new Point();
		    startingLocation.x = event.target.x;
			startingLocation.y = event.target.y;
			//开始拖动，给被拖动对象加上阴影
			event.target.startDrag();
			event.target.filters = [new DropShadowFilter()];
			//把被拖动对象显示在最前面
			setChildIndex(DisplayObject(event.target),numChildren-1);
		}
		public function place(event:MouseEvent):void {
		    //停止拖动，取消阴影效果
			event.target.stopDrag();
			event.target.filters = null;
			//检测是否已经拖动到白色矩形上
			if (event.target.dropTarget == _black && _black.hitTestPoint(_black.mouseX,_black.mouseY); ) {
			    var color:uint;
				switch(event.target) {
				    case _red:color = 0xFF0000; break;
					case _green:color = 0x00FF00; break;
					case _blue:color = 0x0000FF; break;
				}
				_black.graphics.clear();
				_black.graphics.beginFill(color);
				_black.graphics.drawRect(120, 10, 50, 50);
				_black.graphics.endFill(); 
			}
			//把拖动对象放回原位
			event.target.x = startingLocation.x;
			event.target.y = startingLocation.y;
		}
	}
	
}