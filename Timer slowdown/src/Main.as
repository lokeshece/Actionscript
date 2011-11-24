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
		private var _easingSpeed:Number = 0.1;
		private var _targetX:Number = 400;
		private var _targetY:Number = 200;
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
			_sprite.graphics.beginFill(0x0000ff,100);
			_sprite.graphics.drawCircle(0, 0, 25);
			_sprite.graphics.endFill();
			_sprite.x = 50;
			_sprite.y = 50;
			addChild(_sprite);
			_timer = new Timer(30);
			_timer.addEventListener("timer", onTimer);
			_timer.start();
		}
		public function onTimer(event:TimerEvent):void {
		    var dx:Number = _targetX - _sprite.x;
			var dy:Number = _targetY - _sprite.y;
			
			var dist:Number = Math.sqrt(dx * dx + dy * dy);
			if (dist < 1) {
				_sprite.x = _targetX;
				_sprite.y = _targetY;
				_timer.stop();
			}else {
				//var vx:Number = dx * _easingSpeed;
				//var vy:Number = dy * _easingSpeed;
				var vx:Number = (mouseX-_sprite.x) * _easingSpeed;
				var vy:Number = (mouseY-_sprite.y) * _easingSpeed;
				_sprite.x += vx;
				_sprite.y += vy;
			}
		}
		
	}
	
}