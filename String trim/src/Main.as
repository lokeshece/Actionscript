package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
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
			var example:String = "\n\r\f\ta string\t\t\n\n";
			trace("this string value is:" + example + "<end>");
			
			example = trim(example);
			trace("this string value is:" + example + "<end>");
			
		}
		public static function isWhitespace(ch:String):Boolean {
		    return ch == '\r' ||
			         ch == '\n' ||
					 ch == '\f' ||
					 ch == '\t' ||
					 ch == '';
		}
		public static function trim(original:String):String {
		    var characters:Array = original.split("");
			for (var i:int = 0; i < characters.length; i++ ) {
			    if (isWhitespace(characters[i])) {
				    characters.splice(i, 1);
					i--;
				}else {
				    break;
				}
			}
			for (i = characters.length - 1; i >= 0; i--) {
			    if (isWhitespace(characters[i])) {
				    characters.splice(i,1);
				}else {
				    break;
				}
			}
			return characters.join("");
		}
		
	}
	
}