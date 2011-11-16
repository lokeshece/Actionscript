package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.events.MouseEvent;
	import ascb.util.NumberUtilities;
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
			_field.autoSize = "center";
			addChild(_field);
			var circle:Sprite = new Sprite();
			circle.graphics.beginFill(0, 100);
			circle.graphics.drawCircle(100, 100, 100);
			circle.graphics.endFill();
			addChild(circle);
			
			circle.addEventListener(MouseEvent.CLICK, onClick);
		}
		private function onClick(event:MouseEvent):void {
		   var randomNumber:Number = NumberUtilities.random(0, 1);
		   _field.text = (randomNumber == 0)?"heads":"tails";
		}
		
	}
	
}