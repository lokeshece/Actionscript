package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.NetStatusEvent;
	import flash.net.SharedObject;
	
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
			var example:SharedObject = SharedObject.getLocal("example");
			//example.data.username = "Ifany";
			//example.data.variable = "I'm a frontend!";
			//example.data.exampleArray = new Array("a", "b", "c");
			//example.data.exampleDate = new Date();
			//example.data.exampleObject = { key1:"example",key2:-12,key3:null};
			
			example.data.someData = "a value";
			//trace(example.data.someData);
			try {
				var flushResult:String = example.flush(500*1024);
				if (flushResult == SharedObjectFlushStatus.PENDING) {
				    example.addEventListener(NetStatusEvent.NET_STATUS, onStatus);
				}else if (flushResult == SharedObjectFlushStatus.FLUSHED) {
					
				}
			}catch (e:Error) {
			
			}
			
		}
		private function onStatus(event:NetStatusEvent):void {
			    if (event.info.code == "SharedObject.Flush.Success") {
				
				}else if (Event.info.code == "SharedObject.Flush.Failed") {
				      
				}
				example.removeEventListener(NetStatusEvent.NET_STATUS, onStatus);
		}
	}
	
}