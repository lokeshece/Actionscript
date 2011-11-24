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
		private var _angle:Number = 0;
		private var _xAngle:Number = 0;
		private var _yAngle:Number = 0;
		private var _xSpeed:Number = .13;
		private var _ySpeed:Number = .09;
		private var _radius:Number = 100;
		private var _xRadius:Number = 100;
		private var _yRadius:Number = 50;
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
			_sprite.x = 0;
			_sprite.y = 100;
			addChild(_sprite);
			addEventListener(Event.ENTER_FRAME, onEnerFrame);
		}
		public function onEnerFrame(event:Event):void {
		    //_sprite.x = 200 + Math.sin(_angle) * _radius;
			//_sprite.y = 200 +Math.cos(_angle) * _radius;
			
			//_sprite.x = 200 + Math.sin(_angle) * _xRadius;
			//_sprite.y = 200 +Math.cos(_angle) * _yRadius;
			//_angle += .05;
			
			_sprite.x = 200 + Math.sin(_xAngle) * _xRadius;
			_sprite.y = 200 + Math.cos(_yAngle) * _yRadius;
			_xAngle += _xSpeed;
			_yAngle += _ySpeed;
		}
		
	}
	
}