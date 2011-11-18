package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	import flash.net.URLRequest;

	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _loaderStatus:TextField;
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
			loader.contentLoaderInfo.addEventListener(Event.OPEN,handleOpen);
			loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,handleProgress);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handleComplete);
			loader.load(new URLRequest("images/ocean.jpg"));
		}
		private function handleOpen(event:Event):void {
			_loaderStatus = new TextField();
			//_loaderStatus.x = 20;
			//_loaderStatus.y = 20;
			addChild(_loaderStatus);
			_loaderStatus.text = "Loading:0%";
		}
		private function handleProgress(event:ProgressEvent):void {
			var percent:Number = event.bytesLoaded / event.bytesTotal * 100;
			_loaderStatus.text = "Loading:" + percent + "%" ;
		}
		private function handleComplete(event:Event):void {
			removeChild(_loaderStatus);
			_loaderStatus = null;
		}
		
	}
	
}