package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.LocalConnection;
	
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
			//在接收端创建本地连接；
			var receiver:LocalConnection = new LocalConnection();
			//通知本地连接实例监听来自于“_exampleChannel”通道的信息；
			receiver.connect("_exampleChannel");
			receiver.client = this;
		}
		public function example():void {
		   trace("communication received");	
		}
	}
	
}