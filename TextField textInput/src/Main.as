package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.*;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _field:TextField;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			_field = new TextField();
			_field.border = true;
			_field.background = true;
			_field.type = TextFieldType.INPUT;
			addChild(_field);
			_field.addEventListener(TextEvent.TEXT_INPUT, onTextInput);
		}
		private function onTextInput(event:TextEvent):void {
		    if (event.text == "b" && _field.length == 0 ) {
			    event.preventDefault();	
			}
		}
		
	}
	
}