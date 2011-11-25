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
		public static const DAYS:Array = ["Sunday","Monday","Tuesday","Wendnesday","Thursday","Friday","Saturday"];
		public static const DAYSABBREVIATED:Array = ["Sun","Mon","Tues","Wed","THurs","Fri","Sat"];
		public static const MONTHS:Array = ["January","February","March","Apri","May","June","July","August","September","October","November","December"];
		public static const MONTHSABBREVIATED:Array = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var example:Date = new Date();
			trace(DAYS[example.day]);
			trace(DAYSABBREVIATED[example.day]);
			trace(MONTHS[example.month]);
			trace(MONTHSABBREVIATED[example.month]);
		}
		
	}
	
}