package  
{
	import flash.display.Shape;
	/**
	 * ...
	 * @author ifany
	 */
	public class Circle extends Shape
	{
		private var _color:uint;
		private var _raduis:Number;
		public function Circle(color:uint = 0x000000,raduis:Number = 10) 
		{
			_color = color;
			_raduis = raduis;
			draw();
		}
		private function draw():void {
		    graphics.beginFill(_color);
			graphics.drawCircle(0, 0, _raduis);
			graphics.endFill();
		}
		
	}

}