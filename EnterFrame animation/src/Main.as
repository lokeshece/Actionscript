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
		private var _vr:Number = 4;
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
			_sprite.graphics.drawRect( -50, -20, 100, 40);
			_sprite.graphics.endFill();
			_sprite.x = 100;
			_sprite.y = 100;
			addChild(_sprite);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
		}
		public function onEnterFrame(event:Event):void {
		    _sprite.rotation += _vr;
		}
	}
	
}