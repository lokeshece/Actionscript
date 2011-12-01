package  
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.net.NetStream;
	/**
	 * ...
	 * @author ifany
	 */
	public class VideoScrubber extends Sprite 
	{
		
		private var _thumb:Sprite;
		private var _track:Sprite;
		private var _stream:NetStream;
		private var _duration:Number;
		private var _scrubbing:Boolean;
		public function VideoScrubber(stream:NetStream,duration:Number) 
		{
		    _stream = stream;
			_duration = duration;
			
			_track = new Sprite();
			_track.graphics.lineStyle();
			_track.graphics.drawRect(0, -2.5, 100, 5);
			addChild(_track);
			
			_thumb = new Sprite();
			_thumb.graphics.lineStyle();
			_thumb.graphics.beginFill(0xcccccc);
			_thumb.graphics.drawRect( -5, -5, 10,10);
			_thumb.graphics.endFill();
			addChild(_thumb);
			addEventListener(Event.ENTER_FRAME, onEnterFrame);
			_thumb.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
			_thumb.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
			
		}
		private function onEnterFrame(event:Event):void {
		    if (_duration > 0) {
			    if (_scrubbing) {
				    _stream.seek(_duration*_thumb.x/_track.width);
				}else {
				    _thumb.x = _stream.time / _duration * _track.width;
				}
			}
		}
		private function onMouseDown(event:MouseEvent):void {
		    _scrubbing = true;
			var rectangle:Rectangle = new Rectangle(0, 0, _track.width, 0);
			_thumb.startDrag(false,rectangle);
		}
		private function onMouseUp(event:MouseEvent):void {
		    _scrubbing = false;
			_thumb.stopDrag();
		}
		
	}

}