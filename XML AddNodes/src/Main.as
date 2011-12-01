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
			example.firstname = "ifany";
			example.number = 24.9;
			example.boolean = true;
			example.abc = ["a", "undefined", "b", "c", null, 7, false];
			trace(example+"\n");
			example.appendChild(<lastNode>last</lastNode>);
			example.prependChild(<firstNode>first</firstNode>);
			trace(example + "\n");
			example.insertChildAfter(example.lastNode[0], 1.5);
			example.insertChildBefore(example.lastNode[0],<part>7.5</part>);
			trace(example);
		}
		
	}
	
}