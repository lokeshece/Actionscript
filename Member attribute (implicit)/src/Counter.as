package  
{
	/**
	 * ...
	 * @author ifany
	 */
	public class Counter 
	{
		private var _count:uint;
		public function Counter() 
		{
			_count = 0;
		}
		public function get count():uint {
		    return _count;
		}
		public function set count(value:uint):void {
		    if (value < 100) {
			    _count = value;
			}else {
			    throw Error("!");
			}
		}
		
	}

}