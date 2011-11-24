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
		private var _ax:Number = .3;
		private var _ay:Number = .2;
		private var _vx:Number = 0;
		private var _vy:Number = 0;
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
			//var angle:Number = 45;
			//var accel:Number = .5;
			//var radians:Number = angle * Math.PI / 180;
			//_ax = Math.cos(radians) * accel;
			//_ay = Math.sin(radians) * accel;
			
		    _vx += _ax;
			_vy += _ay;
			_sprite.x += _vx;
			_sprite.y += _vy;
		}
		
	}
	
}