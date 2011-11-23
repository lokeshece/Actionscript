package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
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
			var field:TextField = new TextField();
			field.border = true;
			field.background = true;
			addChild(field);
			var button:Sprite = new Sprite();
			button.graphics.lineStyle();
			button.graphics.beginFill(0xffffff);
			button.graphics.drawRect(0, 0, 100, 50);
			button.graphics.endFill();
			button.addEventListener(MouseEvent.CLICK, onClick);
			button.y = 100;
			addChild(button);
		}
		private function onClick(event:MouseEvent):void {
		    stage.focus = TextField(getChildAt(0));
			//stage.fucus = null;
		}
		
	}
	
}