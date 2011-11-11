package 
{
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			stage.focus = this;
			addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);f
		}
				
		private function onKeyDown(event:KeyboardEvent):void {
		   trace("key down:" + event.charCode);	
		}
		
	}
	
}