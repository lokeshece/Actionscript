package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.registerClassAlias;
	import flash.net.SharedObject;
	import person;
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
		    registerClassAlias("person", person);
			var example:SharedObject = SharedObject.getLocal("example");
			if (example.data.person == undefined) {
			    trace("first time,saving person instance");
				var _person:person = new person("Ifany Chen", 24);
				example.data.person = _person;
			}else {
			    trace("person instance already saved,using stored value");
			}
			trace(example.data.person.toString());
		}
		
	}
	
}