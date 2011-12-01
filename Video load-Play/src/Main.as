package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _textField:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var videoConnection:NetConnection = new NetConnection();
			videoConnection.connect(null);
			var videoStream:NetStream = new NetStream(videoConnection);
			
			var video:Video = new Video(462,298);
			video.x = 10;
			video.y = 10;
			addChild(video);
			
			video.attachNetStream(videoStream);
			videoStream.play("media/v2.flv");
			
			_textField = new TextField();
			_textField.text = videoStream.time + "秒";
			_textField.x = 10;
			_textField.y = 308;
			addChild(_textField);
		}
		
	}
	
}