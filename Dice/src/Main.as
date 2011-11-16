package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	import ascb.util.NumberUtilities;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _die:Sprite;
		private var _value:uint;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_die = new Sprite();
			addChild(_die);
			_die.addEventListener(MouseEvent.CLICK, rollDie);
			rollDie(null);
		}
		private function rollDie(event:MouseEvent):void {
		    _value = NumberUtilities.random(1, 6);
			_die.graphics.clear();
			_die.graphics.lineStyle();
			_die.graphics.beginFill(0xFFFFFF);
			_die.graphics.drawRect(0, 0, 50, 50);
			_die.graphics.endFill();
			_die.graphics.beginFill(0x000000);
			if (_value == 1 || _value == 3 || _value==5) {
			    _die.graphics.drawCircle(25,25,4);
			}
			if (_value == 2 || _value == 3 || _value ==4 || _value == 5 || _value == 6 ) {
			    _die.graphics.drawCircle(11, 11, 4);
				_die.graphics.drawCircle(39,39,4);
			}
			if (_value ==4 || _value == 5 || _value == 6) {
			   _die.graphics.drawCircle(11, 39, 4);
			   _die.graphics.drawCircle(39,11,4);
			}
			if (_value == 6) {
			   _die.graphics.drawCircle(11, 25, 4);
			   _die.graphics.drawCircle(39,25,4);
			}
		}
		
	}
	
}