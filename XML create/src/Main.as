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
			var username:String = "Darron";
			var score:int = 1000;
			var example:XML = <gamescore>
			                     <username>{username}</username>
								 <score>{score}</score>
			                  </gamescore>
		    trace(example);
		}
		
	}
	
}