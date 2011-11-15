package  
{
	/**
	 * ...
	 * @author ifany
	 */
	//final public class LibraryItem
	public class LibraryItem 
	{
		protected var _ddc:String;
		protected var _id:String;
		protected var _name:String;
		
		public function LibraryItem() { }
		
		public function setDdc(value:String):void {
		    _ddc = value;
		}
		public function getDdc():String {
		    return _ddc;
		}
		
		public function setId(value:String):void {
		    _id = value;
		}
		public function getId():String {
		    return _id;
		}
		
		public function setName(value:String):void {
		    _name = value;
		}
		public function getName():String {
		    return  _name;
		}
		
		
	}

}