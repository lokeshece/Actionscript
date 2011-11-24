package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sprite:Sprite;
		private var _k:Number = 0.1;
		private var _damp:Number = 0.9;
		private var _scaleVel:Number = 0;
		private var _targetScale:Number = 1;
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
			_sprite.graphics.beginFill(0x00ffff, 100);
			_sprite.graphics.drawRect( -50, -50, 100, 100);
			_sprite.graphics.endFill();
			_sprite.x = 100;
			_sprite.y = 100;
			addChild(_sprite);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			_sprite.addEventListener(MouseEvent.CLICK, onClick);
		}
		public function onEnterFrame(event:Event):void {
		    _scaleVel += (_targetScale - _sprite.scaleX) * _k;
			_sprite.scaleX += _scaleVel;
			_sprite.scaleY += _sprite.scaleX;
			_scaleVel *= _damp;
		}
		public function onClick(event:MouseEvent):void {
		    _targetScale = Math.random() * 2 - .5;
		}
		
	}
	
}