package 
{
	import flash.display.Sprite;
	import flash.events.*;
	import flash.net.*;
	import flash.utils.*;
	
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
			var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.TEXT;
			loader.load(new URLRequest("xml/example.xml"));
			loader.addEventListener(Event.COMPLETE, handleComplete);
		}
		private function handleComplete(event:Event):void {
		    try {
				var example:XML = new XML(event.target.data);
				trace(example);
			}catch (e:TypeError) {
			    trace("Counld not parse text into XML");
				trace(e.message);
			}
		}
		
	}
	
}