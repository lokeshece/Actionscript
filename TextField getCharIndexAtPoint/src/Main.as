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
		    _field.addEventListener(MouseEvent.CLICK, onClick);
			_highlight = new Sprite();
			addChild(_highlight);
		}
		private function onClick(event:MouseEvent):void {
		    var index:int = _field.getCharIndexAtPoint(mouseX, mouseY);
			var rectangel:Rectangle = _field.getCharBoundaries(index);
			_highlight.graphics.lineStyle(0, 0, 0);
			_highlight.graphics.beginFill(0x00ffff, .25);
			_highlight.graphics.drawRect(rectangel.x,rectangel.y,rectangel.width,rectangel.height);
		    _highlight.graphics.endFill();
		    	
		}
		
	}
	
}