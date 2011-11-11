package 
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.getTimer;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _PreviousTimer:Number = 0;
		public function Main():void 
		{
			var tTimer:Timer = new Timer(500, 10);
			tTimer.addEventListener(TimerEvent.TIMER, onTimer);
			tTimer.start();
		}
		private function onTimer(event:TimerEvent):void {
		    trace(getTimer() - _PreviousTimer);
			_PreviousTimer = getTimer();
		}
		
		
		
	}
	
}