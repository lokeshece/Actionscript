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
			_sprite.graphics.beginFill(0x00ff00);
			_sprite.graphics.drawCircle(20, 0, 5);
			_sprite.graphics.endFill();
			_sprite.x = 100;
			_sprite.y = 100;
			addChild(_sprite);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		public function onEnterFrame(event:Event):void {
		    var dx:Number = mouseX - _sprite.x;
			var dy:Number = mouseY - _sprite.y;
			var radians:Number = Math.atan2(dy, dx);
			_sprite.rotation = radians * 180 / Math.PI;
		}
	}
	
}