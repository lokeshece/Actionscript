package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.ColorMatrixFilter;
	import flash.filters.ConvolutionFilter;
	import ascb.filters.ColorMatrixArrays;
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
			var _box:Sprite = new Sprite();
			_box.graphics.lineStyle();
			_box.graphics.beginFill(0x666666);
			_box.graphics.drawCircle(100, 100, 50);
			_box.graphics.endFill();
			addChild(_box);
			//_box.filters = [new ConvolutionFilter(3,3,[1,1,1,1,1,1,1,1,1],9)];
			//_box.filters = [new ConvolutionFilter(3,3,[-2,-1,0,-1,1,1,0,1,2])];
			//_box.filters = [new ConvolutionFilter(3,3,[0,1,0,1,-3,1,0,1,0])];
			//_box.filters = [new ConvolutionFilter(3,3,[0,1,0,1,-1,1,0,1,0])];
			//_box.filters = [new ConvolutionFilter(3, 3, [0, -1, 0, -1, 5, -1, 0, -1, 0])];
			//_box.filters = [new ConvolutionFilter(3,3,[0,-1,0,-1,10,-1,0,-1,0],5)];
			//_box.filters = [new ConvolutionFilter(3, 3, [0, -1, 0, -1, 1, -1, 0, -1, 0], -3)];
			
			//_box.filters = [new ColorMatrixFilter([-1,0,0,0,255,0,-1,0,0,255,0,0,-1,0,255,0,0,0,1,0])];
		    //_box.filters = [new ColorMatrixFilter(ColorMatrixArrays.DIGITAL_NEGATIVE)];
		    
		   	//_box.filters = [new ColorMatrixFilter([0.3086,0.6094,0.0820,0,0,0.3086,0.6094,0.0820,0,0,0.3086,0.6094,0.0820,0,0,0,0,0,1,0])];
			//_box.filters = [new ColorMatrixFilter(ColorMatrixArrays.GRAYSCALE)];
			
			//_box.filters = [new ColorMatrixFilter(ColorMatrixArrays.getSaturationArray(2))];
			
			//_box.filters = [new ColorMatrixFilter([2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0])];
			
			//_box.filters = [new ColorMatrixFilter(ColorMatrixArrays.getContrastArray(1))];
		}
		
	}
	
}