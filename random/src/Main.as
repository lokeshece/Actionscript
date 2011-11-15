package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ascb.util.NumberUtilities;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _total:uint;
		private var _number:Object;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var timer:Timer = new Timer(10);
			timer.addEventListener(TimerEvent.TIMER,randomizer);
			timer.start();
			_total = 0;
			_number = new Object;
		}
		private function randomizer(event:TimerEvent):void {
		    var randomNumber:Number = NumberUtilities.random(1, 10, 1); 
			_total++;
			if (_number[randomNumber] == undefined) {
				_number[randomNumber] = 0;
			}
			_number[randomNumber]++;
			trace("random number:" + randomNumber);
			
			var item:String;
			for (item in _number) {
			    trace("\t"+item+":"+Math.round(100*_number[item]/_total));
			}
		}
		
	}
	
}