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
			var example:XML = <example/>;
			example.newElement = <newElement/>
			trace(example+"\n");
			example = example.insertChildBefore(example.newElement,<firstElem/>);
			example = example.insertChildAfter(example.newElement,<lastElem/>);
			trace(example);
		}
		
	}
	
}