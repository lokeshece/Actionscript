package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.DropShadowFilter;
	import flash.media.Video;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.events.NetStatusEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _stream:NetStream;
		private var _video:Video;
		private var _playbackTime:TextField;
		private var _pause:Sprite;
		private var _duration:uint;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_video = new Video(462, 298);
			_video.x = 10;
			_video.y = 10;
			_video.filters = [new DropShadowFilter(3,45,0,1,3,2,.3,3)];
			_playbackTime = new TextField();
			_playbackTime.autoSize = TextFieldAutoSize.LEFT;
			_playbackTime.x = 10;
			_playbackTime.y = 308;
			_playbackTime.text = "test";
			_duration = 0;
			
			var connection:NetConnection = new NetConnection();
			connection.connect(null);
			_stream = new NetStream(connection);
			_stream.play("media/v1.flv");
			_stream.bufferTime = 10;//Set the buffer size to 10 seconds
			
			//从视频的第100秒开始播放
			//_stream.seek(100); 
			
			_stream.addEventListener(NetStatusEvent.NET_STATUS, onStatus);
			
			var client:Object = new Object();
			client.onMetaData = onMetaData;
			client.onCuePoint = onCuePoint;
			_stream.client = client;
			_video.attachNetStream(_stream);
			addChild(_video);
			addChild(_playbackTime);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
			//pause
			_pause = new Sprite();
			_pause.graphics.beginFill(0x333333);
			_pause.graphics.drawRect(60, 308, 20, 20);
			_pause.graphics.endFill();
			_pause.addEventListener(MouseEvent.MOUSE_DOWN, onPause);
			addChild(_pause);
		}
		private function onMetaData(data:Object):void {
		    _duration = data.duration;
		}
		private function onCuePoint(cuePoint:Object):void {
		    trace(cuePoint.name + "" +cuePoint.time);
		}
		private function onEnterFrame(event:Event):void {
		    if (_duration > 0 && _stream.time > 0) {
			    _playbackTime.text = Math.round(_stream.time)+"/"+Math.round(_duration)
			}	
		}
		private function onStatus(event:NetStatusEvent):void {
		    if (_video.videoWidth > 0 && _video.width != _video.videoWidth) {
			    _video.width = _video.videoWidth;
				_video.height = _video.videoHeight;
			}
		}
		private function onPause(event:MouseEvent):void {
		    //_stream.pause();
			_stream.close();
		}
		
	}
	
}