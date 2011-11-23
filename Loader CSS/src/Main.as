package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.text.StyleSheet;
	import flash.text.TextField;
	
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
			var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, onLoadCSS);
			var request:URLRequest = new URLRequest("css/styles.css");
			loader.load(request);
		}
		private function onLoadCSS(event:Event):void {
		    var css:StyleSheet = new StyleSheet();
			css.parseCSS(URLLoader(event.target).data);
			    var field:TextField = new TextField();
				//field.autoSize = TextFieldAutoSize.LEFT;
				field.wordWrap = true;
				field.width = 300;
				addChild(field);
				field.styleSheet = css;
				field.htmlText = "<p><span class='emphasis'>Loren ipsum</span>dsfsdfsdfsdfsddsfsdfsdfsdfsddsfsdfsdfsdfsddsfsdfsdfsdfsddsfsdfsdfsdfsd</p>";
		}
		
	}
	
}