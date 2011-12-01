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
			var num:Number = 123;
			var example:XML = <example><someElement/></example>;
		    example.someElement.@["bad-variable-name"] = "yes";
			example.someElement.@["number" + num] = num;
			example.someElement.@number = 33;
			example.someElement.@name = "ifany";
			example.someElement.@boolean = true;
			example.someElement.@array = ["a", null, 7, undefined, "c"];
			trace(example);
		}
		
	}
	
}