package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.NetConnection;
	import flash.net.Responder;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _connection:NetConnection;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_connection = new NetConnection();
			_connection.connect("http://www.rightactionscript.com/flashremoting/gateway.php");
			var responder:Responder = new Responder(onResult, onError);
			_connection.call("FlashSurvey.getAverages",responder);
		}
		private function onResult(result:Object):void {
		    trace(result.flash + "" + result.actionscript);	
		}
		private function onError(error:Object):void {
		    trace(error.description);	
		}
	}
	
}