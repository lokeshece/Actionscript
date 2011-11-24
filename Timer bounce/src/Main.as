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
		private var _vx:Number = 20;
		private var _vy:Number = 0;
		private var _k:Number = .1;
		private var _damp:Number = .94;
		private var _targetX:Number = 200;
		private var _targetY:Number = 200;
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
			addEventListener(Event.ENTER_FRAME, onEnerFrame);
		}
		public function onEnerFrame(event:Event):void {
		    //var ax:Number = (_targetX - _sprite.x) * _k;
			//var ay:Number = (_targetY - _sprite.y) * _k;
			var ax:Number = (mouseX - _sprite.x) * _k;
			var ay:Number = (mouseY - _sprite.y) * _k;
			_vx += ax;
			_vy += ay;
			_sprite.x += _vx;
			_sprite.y += _vy;
			_vx *= _damp;
			_vy *= _damp;
		}
		
	}
	
}