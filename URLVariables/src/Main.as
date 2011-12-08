package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.text.TextField;
	import flash.net.URLLoaderDataFormat;
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
			initOutput();
			sendData();
		}
		private function initOutput():void {
			_output = new TextField();
			_output.width = stage.stageWidth;
			_output.height = stage.stageHeight;
			addChild(_output);
		}
		private function sendData():void {
			var request:URLRequest = new URLRequest("process.cfm");
			var variables:URLVariables = new URLVariables();
			variables.method = "setProductDetail";
			variables.productId = 2;
			request.data = variables;
			
			var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.VARIABLES;
			loader.load(request);
			loader.addEventListener(Event.COMPLETE, handleComplete);
		}
		private function handleComplete(event:Event):void {
		    var loader:URLLoader = URLLoader(event.target);
			_output.text = "Name:" + loader.data.name + "\n"
			        + "Description:" + loader.data.description;
		}
	}
	
}