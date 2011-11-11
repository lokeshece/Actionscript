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
			try {
			    trace("This code is about to throw an error.");
				throw new Error("A general error occurred.");
				trace("this line won't run");
			}catch (errObject:Error) {
			    trace("The catch block has been called.");
				trace("The message is:" + errObject.message);
			}
		}
		
	}
	
}