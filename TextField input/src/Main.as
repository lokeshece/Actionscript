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
			_field.type = TextFieldType.INPUT;
			_field.x = 30;
			_field.y = 30;
			_field.border = true;
			_field.borderColor = 0x333333;
			_field.background = true;
			_field.backgroundColor = 0xcccccc;
			_field.width = 100;
			_field.height = 20;
			
			
			//_field.htmlText = "<a href='http://www.google.com.hk'>Google</a>";
			_field.text = "百度";
			var formatter:TextFormat = new TextFormat();
			formatter.url = "http://www.baidu.com/";
			//formatter.target = "_blank";
			//formatter.color = 0x0000ff;
			//formatter.underline = true;
			_field.setTextFormat(formatter);
			
			var css:StyleSheet = new StyleSheet();
			css.parseCSS("a{color:#0000FF;}a:hover{text-decoration:underline;}");
			_field.styleSheet = css;
			
			//_field.addEventListener(TextEvent.LINK, onClickHyperlink);
			
			addChild(_field);
		}
		
		
		
	}
	
}