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
			var array:Array = new Array();
			trace(array.length);
			array.push("val 1", "val 2");
			trace(array.length);
			array.unshift("val 0");
			trace(array);
			array[5] = "val 6";
			trace(array);
		}
		
	}
	
}