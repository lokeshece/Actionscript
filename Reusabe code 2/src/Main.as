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
			//var averageValue:Number = average(5, 11);
			//trace(averageValue);
			
			var averageValue:Number = average(1, 2, 5, 10, 8, 20);
			trace(averageValue);
		}
		
		//private function average(a:Number, b:Number):Number {
		 //   return (a + b) / 2;
		//}
		
		private function average( ):Number {
		    var sum:Number = 0;
			for (var i:int = 0; i < arguments.length; i++ ) {
				sum += arguments[i];
			}
			return sum / arguments.length;
		}
		
	}
	
}