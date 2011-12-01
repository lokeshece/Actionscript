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
			var cart:XML = <cart>
			                <item price=".98">crayons</item>
							<item price="3.29">pencils</item>
							<group>
							   <item price=".48">blue pen</item>
							   <item price=".8">balck pen</item>
							</group>
			               </cart>
			var total:Number = 0;
			for each(var price:XML in cart..@price) {
			    trace(price);
				total += Number(price);
			}
			trace(total);
		}
		
	}
	
}