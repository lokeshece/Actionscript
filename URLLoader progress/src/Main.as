package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.text.TextField;
	
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
			loadData();
		}
		private function initOutput():void {
			_output = new TextField();
			_output.width = stage.stageWidth;
			_output.height = stage.stageHeight;
			addChild(_output);
		}
		private function loadData():void {
			var loader:URLLoader = new URLLoader();
			loader.load(new URLRequest("example.txt"));
			
			loader.addEventListener(ProgressEvent.PROGRESS, onProgress);
		}
		private function onProgress(event:ProgressEvent):void {
		    var percent:Number = Math.round(event.bytesLoaded / event.bytesTotal * 100);
			_output.text = "Loaded:" + event.bytesLoaded + "\n"
			             + " Total:" + event.bytesTotal + "\n"
						 + "Percent:" + percent;
		}
	}
	
}