package  
{
	/**
	 * ...
	 * @author ifany
	 */
	public class person 
	{
		private var _firstName:String;
		private var _age:int;
		public function person(firstName:String,age:int) 
		{
			_firstName = firstName;
			_age = age;
		}
		public function toString():String {
		   return _firstName + " is " + _age + " years old";	
		}	
	}

}