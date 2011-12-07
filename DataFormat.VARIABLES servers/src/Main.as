package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
    import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	/**
	 * ...
	 * @author ifany
	 */
	[Frame(factoryClass="Preloader")]
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
			loader.dataFormat = URLLoaderDataFormat.VARIABLES;
			loader.load(new URLRequest("getSomeText.cfm"));
			
			loader.addEventListener(Event.COMPLETE, handleComplete);
		}
		private function handleComplete(event:Event):void {
		    var loader:URLLoader = URLLoader(event.target);
			trace("someText=" + loader.data.someText);
		}

	}

}