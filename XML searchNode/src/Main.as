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
			var fruit:XML = <fruit>
			                  <name>Apple</name>
			                </fruit>
		    //trace(fruit.name);
			
			var author:XML = <author>
			                   <name>
							     <firstName>ifany</firstName>
								 <lastName>chen</lastName>
							   </name>
			                 </author>
	        //trace(author.name.firstName);
			//trace(author..lastName);
			
			var items:XML = <items>
			                  <item>
							    <name>Apple</name>
								<color>red</color>
							  </item>
							  <item>
							    <name>Orange</name>
								<color>orange</color>
							  </item>
			                </items>
			//trace(items.item[1].name);
			//trace(items.item[0].name);
			//trace(items.item.length());
			for each(var name:XML in items..name) {
			     trace(name);
			}
			
			var nodeName:String = "color";
			var fruitColor:XML = <fruit><color>red</color></fruit>
			trace(fruitColor[nodeName]);
			//trace(fruitColor..[nodeName]);//Error
		}
		
	}
	
}