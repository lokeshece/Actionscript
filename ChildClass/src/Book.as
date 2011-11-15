package  
{
	import LibraryItem;
	/**
	 * ...
	 * @author ifany
	 */
	public class Book extends LibraryItem
	{
		private var _authors:Array;
		private var _pageCount:uint;
		
		public function Book() 
		{
			
		}
		
		public function setAuthors(value:String):void {
		    _authors = value;
		}
		public function getAuthors():Array {
		   return _authors;
		}
		
		public function setPageCount(value:uint):void {
		   _pageCount = value;
		}
		public function getPageCount():uint {
		   return _pageCount;
		}
		
		
	}

}