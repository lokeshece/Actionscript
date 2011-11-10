package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ClockAlert;
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
			
			var clock:ClockAlert = new ClockAlert();
            var morningFunc:Function = function():void {
                 trace("good morning!");
            }
            var afternoonFunc:Function = function():void {
                  trace("good evening");
            }

            var currentTime:Date = new Date();
			var cur:Number = currentTime.getHours();
            trace(cur);
			if (cur < 12 && cur > 5) {
				clock.alert = morningFunc;
			}else if (cur<18 && cur >12) {
			    clock.alert = afternoonFunc;
			}
			
			clock.alert();
		 }
		
	}
	
}