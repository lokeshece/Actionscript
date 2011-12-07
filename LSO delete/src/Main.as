package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.SharedObject;
	
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
			var example:SharedObject = SharedObject.getLocal("example");
			example.data.someData = "a value";
			trace(example.data.someData);
			delete example.data.someData;
			trace(example.data.someData);
			example.data.username = "Ifany chen";
			trace(example.data.username);
			
		}
		
	}
	
}