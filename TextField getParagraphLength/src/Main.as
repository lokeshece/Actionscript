package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.text.*;
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _field:TextField;
		private var _highlight:Sprite;
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
			_field.multiline = true;
			_field.wordWrap = true;
			_field.selectable = false;
			_field.width = 400;
			_field.height = 400;
			addChild(_field);
			_field.text = "abcdefabcdefghgfhghdhggfhfghdaabcdefghgfhghabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghddhggfhfghdaabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdabcdefghgfhghdhggfhfghdbcdefghgfhghdhggfhfghdbcdefghgfhghdhggfhfghdghgfhghdhggfhfghd";
		    //_field.replaceText(10,100,"new text");
			_field.addEventListener(MouseEvent.CLICK, onDoubleClick);
			_highlight = new Sprite();
			addChild(_highlight);
			
			//trace(TextField.fontList);
		}
		private function onDoubleClick(event:MouseEvent):void {
		    var index:int = _field.getCharIndexAtPoint(mouseX, mouseY);
			var startIndex:int = _field.getFirstCharInParagraph(index);
			var stopIndex:int = startIndex + _field.getParagraphLength(index);
			var startLine:int = _field.getLineIndexOfChar(startIndex);
			var stopLine:int = _field.getLineIndexOfChar(stopIndex - 1);
			var metrics:TextLineMetrics;
			var lineCharacter:int;
			var rectangle:Rectangle;
			_highlight.graphics.clear();
			for (var i:int = startLine; i <= stopLine; i++ ) {
			    lineCharacter = _field.getLineOffset(i);
				rectangle = _field.getCharBoundaries(lineCharacter);
				metrics = _field.getLineMetrics(i);
			   _highlight.graphics.beginFill(0x00ffff, .25);
			   _highlight.graphics.drawRect(rectangle.x, rectangle.y, rectangle.width, rectangle.height);
			   _highlight.graphics.endFill();
		    }
		}
		
	}
	
}