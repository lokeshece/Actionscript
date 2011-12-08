package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import flash.net.URLStream;
	
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
			var stream:URLStream = new URLStream();
			stream.load(new URLRequest("example.txt"));
			
			stream.addEventListener(ProgressEvent.PROGRESS,handleProgress);
		}
		private function handleProgress(event:ProgressEvent):void {
		    var streamer:URLStream = URLStream(event.target);
			while (streamer.bytesAvailable > 0) {
			    trace("Read byte:" + streamer.readByte());
			}
		}
		
	}
	
}