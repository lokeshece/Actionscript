package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import ascb.util.NumberUtilities;
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
			for (var i:Number = 0; i < 100; i++ ) {
			   trace(NumberUtilities.getUnique());
			}
		}
		
	}
	
}