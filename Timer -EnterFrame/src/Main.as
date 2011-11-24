package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _sprite:Sprite;
		private var _vx:Number = 3;
		private var _vy:Number = -2;
		private var _timer:Timer;
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
			_sprite.graphics.drawCircle(0, 0, 25);
			_sprite.graphics.endFill();
			_sprite.x = 300;
			_sprite.y = 300;
			addChild(_sprite);
			_timer = new Timer(30);
			_timer.addEventListener("timer", onTimer);
			_timer.start();
		}
		public function onTimer(event:TimerEvent):void {
			_sprite.x += _vx;
			_sprite.y += _vy;
		}
		
	}
	
}