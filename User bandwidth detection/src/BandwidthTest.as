package  
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getTimer;
	/**
	 * ...
	 * @author ifany
	 */
	public class BandwidthTest extends EventDispatcher
	{
		private var _downloadCount:uint;
		private var _bandwidthTests:Array;
		private var _detectedBandwidth:Number;
		private var _startTime:uint;
		public function get detectedBandwidth():Number {
		    return _detectedBandwidth;
		}
		public function BandwidthTest()
		{
			_downloadCount = 0;
			_bandwidthTests = new Array();
		}
		
		//run the bandwidth test.
		public function test():void {
		    var loader:URLLoader = new URLLoader();
			loader.load(new URLRequest("media/img.jpg?unique=" + (new Date()).getTime()));
			loader.addEventListener(Event.OPEN, onStart);
			loader.addEventListener(Event.COMPLETE, onLoad);
		}
		//When the file starts to download get the current timer value.
		private function onStart(event:Event):void {
		    _startTime = getTimer();
		}
		private function onLoad(event:Event):void {
		    //The download time is the timer value when the file has downloaded minus the value started downloading.
			//Then divide by 1000 to convert from milliseconds to seconds.
			var downloadTime:Number = (getTimer() - _startTime) / 1000;
			_downloadCount++;
			//convert from bytes to kilobits.
			var kilobits:Number = event.target.bytesTotal / 1000 * 8;
			//Divide the kilobits by the download time.
			var kbps:Number = kilobits / downloadTime;
			//Add the test value to the array.
			_bandwidthTests.push(kbps);
			if (_downloadCount == 1) {
				test();
			}else if(_downloadCount == 2) {
			    if (Math.abs(_bandwidthTests[0] - _bandwidthTests[2]) < 50) {
				    dispatchCompleteEvent();
				}else {
				    test();
				}
			}else {
				//Following the third test dispatch a complete event.
			    dispatchCompleteEvent();
			}
		}
		private function dispatchCompleteEvent():void {
		    //Determine the avarage bandwidth detection value.
			_detectedBandwidth = 0;
			var i:uint;
			for (i = 0 ; i < _bandwidthTests.length; i++ ) {
			    _detectedBandwidth += _bandwidthTests[i];
			}
			_detectedBandwidth /= _downloadCount;
			//Dispatch a complete event.
			dispatchEvent(new Event(Event.COMPLETE));
		}
	}

}