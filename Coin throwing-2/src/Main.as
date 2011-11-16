package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import ascb.util.NumberUtilities;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _field:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_field = new TextField();
			_field.autoSize = "left";
			addChild(_field);
			var heads:Number = 0;
			var tails:Number = 0;
			var randomNumber:Number;
			for (var i:Number = 0; i < 10000; i++ ) {
			    randomNumber = NumberUtilities.random(0, 1);
				if (randomNumber == 0) {
					heads++;
				}else {
					tails++;
				}
			}
			_field.text = "heads:" + heads + ",tails" + tails;
		}
		
	}
	
}