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
			var name:String = "jeperc";
			var newName:String = name;
			name = "ifany";
			trace(name);
			trace(newName);
			
			var letters:Array = ["a", "b", "c"];
			var newLetters:Array = letters.concat();
			letters = ["d", 'e', "f"];
			trace(letters);
			trace(newLetters);
		}
		
	}
	
}