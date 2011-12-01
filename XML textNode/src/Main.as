package 
{
	import adobe.utils.ProductManager;
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
			var book:XML = <book><title>Actionscript 3.0 Cookbook</title></book>;
			var title:String = book.title.toString();
			//trace(title);
			
			var example:XML = <example>
			                    <bool>true</bool>
								<integer>12</integer>
								<number>.9</number>
			                  </example>
			var bool:Boolean = Boolean(example.bool.toLowerCase());
			//trace(bool);
			var interger:int = int(example.integer);
			//trace(interger);
			var number:Number = example.number;
			//trace(number);
			
			var fruit:XML = <fruit>
			                   <name>Apple</name>
							   An apple a day...
			                </fruit>;
			//var value:String = fruit.toString();
			//trace(value);
			for each(var textNode:XML in fruit.text()) {
			    trace(textNode);
			}
			
		}
		
	}
	
}