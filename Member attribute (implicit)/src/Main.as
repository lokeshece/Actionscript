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
			var counter:Counter = new Counter();
			counter.count = 20;
			trace(counter.count);
		}
				
	}
	
}