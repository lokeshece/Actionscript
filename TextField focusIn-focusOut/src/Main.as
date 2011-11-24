package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.*;
	import flash.events.FocusEvent;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _field1:TextField;
		private var _field2:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_field1 = new TextField();
			_field1.border = true;
			_field1.background = true;
			_field1.type = TextFieldType.INPUT;
			addChild(_field1);
			_field1.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,onKeyFocus);
			
			_field2 = new TextField();
			_field2.border = true;
			_field2.background = true;
			_field2.type = TextFieldType.INPUT;
			addChild(_field2);
			_field2.y = 100;
		}
		private function onKeyFocus(event:FocusEvent):void {
		    if (_field1.text == "")
			event.preventDefault();
		}
		
	}
	
}