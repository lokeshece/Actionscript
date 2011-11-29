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
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var time:Date = new Date();
			trace(time.fullYear+"年"+time.month+"月"+time.date+"日 星期"+time.day+" "+time.hours+":"+time.minutes+":"+time.milliseconds);
		}
		
	}
	
}