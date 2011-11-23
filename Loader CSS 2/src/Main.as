package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
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
		private var _field:TextField;
		private var _html:String;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var css1:TextField = new TextField();
			css1.text = "stylesheet1";
			css1.selectable = false;
			var css1Container:Sprite = new Sprite();
			css1Container.addEventListener(MouseEvent.CLICK, onCSS1);
			css1Container.addChild(css1);
			addChild(css1Container);
			
			var css2:TextField = new TextField();
			css2.text = "stylesheet2";
			css2.selectable = false;
			var css2Container:Sprite = new Sprite();
			css2Container.addEventListener(MouseEvent.CLICK, onCSS2);
			css2Container.addChild(css2);
			addChild(css2Container);
			css2Container.y = 25;
			    _field = new TextField();
				_field.wordWrap = true;
				_field.width = 200;
				_field.y = 50;
				addChild(_field);
				_html = "<p><span class='emphasis'>Loren ipsum</span>dsfsdfsdfsdfsddsfsdfsdfsdfsddsfsdfsdfsdfsddsfsdfsdfsdfsddsfsdfsdfsdfsd</p>";
		}
		private function loadCSS(url:String):void {
		    var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, onLoadCSS);
			var request:URLRequest = new URLRequest(url);
			loader.load(request);
		}
		private function onCSS1(event:MouseEvent):void {
		    loadCSS("css/styleS.css");
		}
		private function onCSS2(event:MouseEvent):void {
		    loadCSS("css/style2.css");
		}
		private function onLoadCSS(event:Event):void {
		    var css:StyleSheet = new StyleSheet();
			css.parseCSS(URLLoader(event.target).data);
			   _field.styleSheet = css;
			   _field.htmlText = _html;
		}
		
	}
	
}