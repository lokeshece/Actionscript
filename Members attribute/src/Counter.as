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
		public function getCount():uint {
		    return _count;
		}
		public function setCount(value:uint):void {
		    if (value < 100) {
			     _count = value;
				 trace(_count)
			}else {
			    throw Error("no!");
			}
		}
		
	}

}