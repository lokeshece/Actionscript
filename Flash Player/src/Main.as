package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.Capabilities;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			
			if (stage)
			//stage.scaleMode = StageScaleMode.SHOW_ALL ;
			//                  StageScaleMode.NO_BORDER ;
			//					StageScaleMode.EXACT_FIT ;
			//					StageScaleMode.NO_SCALE;
			init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			var _version:String = Capabilities.version;
			trace(_version);
			
			var _os:String = Capabilities.os;
			trace(_os);
			
			var _type:String = Capabilities.playerType;
			trace(_type);
			
			var _lang:String = Capabilities.language;
			trace(_lang);
			
			trace(Capabilities.screenResolutionX + " x " + Capabilities.screenResolutionY);
			
			stage.showDefaultContextMenu = false;

			if (Capabilities.hasAudio && Capabilities.hasMP3) {
			    trace("hasMusic");
			}else {
			    trace("noMusic");
			}
			
			//检测设备视频，使用flash.system.Capabilities类的
			//hasEmbeddedVideo,hasStreamingVideo,和hasVideoEncoder.
			if (Capabilities.hasStreamingVideo) {
			     trace("播放视频");
			}else if (Capabilities.hasEmbeddedVideo) {
			     trace("下载内嵌视频的swf文件");
			}else {
			
			}
		}
		
	}
	
}