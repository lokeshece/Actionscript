package  
{
	/**
	 * ...
	 * @author ifany
	 */
	public class Rectangle 
	{
		public var area:Number;
		private var width:Number;
		private var height:Number;
		public function Rectangle(widthNum:Number, heightNum:Number) {
			width = widthNum;
			height = heightNum;
		}
		public function getArea():Number {
		     area = width * height;
			 return area;
		}
		
	}

}