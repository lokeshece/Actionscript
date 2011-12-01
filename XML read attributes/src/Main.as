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
			var fruit:XML = <fruit name="ifany" color="yellow" />;
			//var attributes:XMLList = fruit.attributes();
			//trace(attributes[0]);
			//trace(attributes[1]);
			
			//trace(fruit.attributes()[1].name());
			
			for each(var attribute:XML in fruit.attributes()) {
			    trace(attribute.name()+"="+attribute.toString());
			}
			
		}
		
	}
	
}