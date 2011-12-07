package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
    import flash.net.URLLoaderDataFormat
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
			loader.load(new URLRequest("xml/example.txt"));
			
			loader.addEventListener(IOErrorEvent.IO_ERROR, handleIOError);
			loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, handleHttpStatus);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, handleSecurityError);
			loader.addEventListener(Event.COMPLETE, handleComplete);
		}
		private function handleIOError(event:IOErrorEvent):void {
		    trace("Load failed: IO error:"+event.text);
		}
        private function handleHttpStatus(event:HTTPStatusEvent):void {
		    trace("Load failed:HTTP Status = "+event.status);
		}
		private function handleSecurityError(event:SecurityError):void {
			trace("Load failed:Security Error:" +event.errorID);
		}
		private function handleComplete(event:Event):void {
		    
			var loader:URLLoader = URLLoader(event.target);
			//trace("someText=" + loader.data.someText);
			//trace("someNumber="+loader.data.someNumber);
			for (var property:String  in loader.data) {
			     trace(property + "=" + loader.data[property]);	
			}
		}
	}

}