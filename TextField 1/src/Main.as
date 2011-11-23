package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
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
			var field:TextField = new TextField();
			//field.displayAsPassword = true;
			
			
			//field.text = "ifany are you         OK?";
			//field.appendText("    ye,I'm OK!");
			
			//field.condenseWhite = true;
			//field.htmlText = "<u>带下    画线的文本</u>";
			
			//field.htmlText = "<b>Bold text</b><u>Underlined text</u>"
			var formatter:TextFormat = new TextFormat();
			formatter.bold = true;
			formatter.color = 0xFFFF00;
			formatter.blockIndent = 5;
			field.text = "This is sample text";
			field.setTextFormat(formatter);
			field.text = "this is new text";
			field.setTextFormat(formatter);
			field.text += "appended text";
			
			//field.restrict = "0-9"
			//field.maxChars = 6 ;
			
			//field.x = 50;
			//field.y = 100;
		
			
			field.width = 360;
			field.height = 30;
			
			field.borderColor = 0xFF00FF;
			field.border = true;
			
			field.background = true;
			field.backgroundColor = 0x00ffff;
			
			addChild(field);
		}
		
	}
	
}