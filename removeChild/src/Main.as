package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _label:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_label = new TextField();
			_label.text = "ifany 亦凡";
			addChild(_label);
			stage.addEventListener(MouseEvent.CLICK,removeLabel);	
		}
		public function removeLabel(event:MouseEvent):void {
			if (numChildren>0) {
				removeChildAt(0);
			} 	
		}
		
	}
	
}