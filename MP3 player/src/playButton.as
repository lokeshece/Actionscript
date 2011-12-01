package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author ifany
	 */
	class playButton extends Sprite
	{
		
		public function playButton() 
		{
			//Draw the play/pause graphic
			graphics.beginFill(0xcccccc);
			graphics.drawRoundRect(0, 0, 20, 16, 4, 4);
			graphics.endFill();
			graphics.beginFill(0x333333);
			graphics.moveTo(4, 4);
			graphics.lineTo(8, 8);
			graphics.lineTo(4, 12);
			graphics.lineTo(4, 4);
			graphics.drawRect(10, 4, 4, 8);
			graphics.drawRect(14, 4, 2, 8);
			graphics.endFill();	
		}
		
	}

}