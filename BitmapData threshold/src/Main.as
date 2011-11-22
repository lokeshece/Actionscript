package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.DropShadowFilter;
	import flash.geom.Point;
	
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
			var srcBmp:BitmapData = new BitmapData(stage.stageWidth, stage.stageHeight, true, 0xffffffff);
			srcBmp.perlinNoise(200, 100, 2, 1000, false, true, 1, true);
			var destBmp:BitmapData = new BitmapData(stage.stageWidth, stage.stageHeight, true, 0xffffffff);
			//destBmp.applyFilter(destBmp,destBmp.rect,new Point(),new DropShadowFilter());
			var image:Bitmap = new Bitmap(destBmp);
			addChild(image);
			destBmp.threshold(
			    srcBmp,        //sourceBitmap
			    srcBmp.rect,   //sourceRectangle
				new Point(),   //destPoint
				"<",           //operator
				0x00880000,    //threshold
				0x00000000,    //color
				0x00ff0000,    //mask
				true           //copySource   
			)
		}
		
	}
	
}