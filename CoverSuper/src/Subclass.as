package  
{
	/**
	 * ...
	 * @author ifany
	 */
	public class Subclass extends Superclass
	{
		
		public function Subclass() 
		{
			
		}
		//要覆盖父类的方法，需在改方法前面加上 “override”
		override public function toString():String {
		    return "This is a Subclass,not a Superclass"
		}
		
	}

}