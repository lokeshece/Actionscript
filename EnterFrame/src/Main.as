package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sprite:Sprite;
		private var _vx:Number = -3;
		private var _vy:Number = -3;
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
			_sprite.graphics.beginFill(0x0000ff, 100);
			_sprite.graphics.drawCircle(100, 0, 25);
			_sprite.graphics.endFill();
			_sprite.x = 500;
			_sprite.y = 500;
			addChild(_sprite);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
		}
		public function onEnterFrame(event:Event):void {
			_sprite.x += _vx;
			_sprite.y += _vy;
		}
		
	}
	
}