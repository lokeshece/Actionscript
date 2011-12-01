package 
{
	import adobe.utils.CustomActions;
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
			var menu:XML = <menu>
			                 <menuitem label="File">
							    <munuitem label="New"/>
							 </menuitem>
							 <menuitem label="Help">
							    <munuitem label="About"/>
							 </menuitem>
							 This is a text node
			               </menu>
		    //for each(var element:XML in menu.elements()) {
			 //   trace(element.@label);
			//}
			
			walk(menu);
			function walk(node:XML):void {
			    for each(var element:XML in node.elements()) {
				    trace(element.@label);
					walk(element);
				}
			}
		}
		
	}
	
}