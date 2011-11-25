package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.*;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
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
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			var example:String = "This is a string of ActionSctipt poertry words";
			var words:Array = example.split(" ");
			var word:Sprite;
			var wordText:TextField;
			for (var i:int = 0; i < words.length; i++ ) {
			    word = new Sprite();
				addChild(word);
				wordText = new TextField();
				word.addChild(wordText);
				wordText.autoSize = TextFieldAutoSize.LEFT;
				wordText.border = true;
				wordText.background = true;
				wordText.selectable = false;
				wordText.text = words[i];
				
				word.addEventListener(MouseEvent.MOUSE_DOWN, handleDrag);
				word.addEventListener(MouseEvent.MOUSE_UP, handleDrop);
			    var rx:Number = Math.random() * stage.stageWidth - word.width;
				var ry:Number = Math.random() * stage.stageHeight - word.height;
				word.x = rx;
				word.y = ry;
				trace(word);
			}
			
		}
		private function handleDrag(event:MouseEvent):void {
		    var word:Sprite = event.target.parent;
			setChildIndex(word, numChildren - 1);
			word.startDrag();
		}
		private function handleDrop(event:MouseEvent):void {
			var word:Sprite = event.target.parent;
			word.stopDrag();
		}
		
	}
	
}