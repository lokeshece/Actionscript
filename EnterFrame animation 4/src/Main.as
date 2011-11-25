package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sprite:Sprite;
		private var _red1:Number = 1;
		private var _green1:Number = 0;
		private var _blue1:Number = 0;
		private var _red2:Number = 0;
		private var _green2:Number = .5;
		private var _blue2:Number = 1;
		private var _easingSpeen:Number = 0.05;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_sprite = new Sprite();
			_sprite.graphics.beginFill(0xffffff, 100);
			_sprite.graphics.drawRect( -50, -50, 100, 100);
			_sprite.graphics.endFill();
			_sprite.x = 100;
			_sprite.y = 100;
			addChild(_sprite);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			addEventListener(MouseEvent.CLICK, onClick);
		}
		public function onEnterFrame(event:Event):void {
		   _red1 += (_red2 - _red1) * _easingSpeen;
		   _green1 += (_green2 - _green1) * _easingSpeen;
		   _blue1 += (_blue2 - _blue1) * _easingSpeen;
		   _sprite.transform.colorTransform = new ColorTransform(_red1,_green1,_blue1);
		}
		public function onClick(event:MouseEvent):void {
		   _red2 = Math.random();
		   _green2 = Math.random();
		   _blue2 = Math.random();
		}
		
	}
	
}