package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
    import flash.text.*;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _output:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			initializeOutput();
			loadData();
		}
		private function initializeOutput():void {
			_output = new TextField();
			_output.width = stage.stageWidth;
			_output.height = stage.stageHeight;
			
			addChild(_output);
		}
		private function loadData():void {
		    var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.TEXT;
			loader.load(new URLRequest("example.html"));
			
			loader.addEventListener(Event.COMPLETE, handleComplete);
		}
		private function handleComplete(event:Event):void {
		    var loader:URLLoader = URLLoader(event.target);
			_output.htmlText = loader.data;
		}
	}
	
}