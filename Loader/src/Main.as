package 
{
	import flash.display.*;
	import flash.events.Event;
	import flash.net.URLRequest;
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
			var loader:Loader = new Loader();
			addChild(loader);
			loader.load(new URLRequest("images/hongkong.jpg"));
		}
		
	}
	
}