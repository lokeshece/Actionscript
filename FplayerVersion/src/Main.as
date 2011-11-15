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
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var version:String = Capabilities.version;
            var idx:int = version.search(/\d/);
            if (idx!=-1){
                 version = version.substr(idx);
                 var versions:Array = version.split(',');
                 if (versions.length == 4){
                     trace('flash播放器版本信息:');
                     trace("主版本号: ",versions[0]);
                     trace("次版本号: ",versions[1]);
                     trace("生成版本号: ",versions[2]);
                     trace("内部生成版本号: ",versions[3]);
                 }else{
                     trace('flash 播放器的版本: ',version);
                 }
            }else{
                 trace('flash 播放器 版本未知');
            }
		}
		
	}
	
}