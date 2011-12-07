package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.text.*;
	import flash.filters.*;
	import flash.net.*;
	
	/**
	 * ...
	 * @author ifany
	 */
	public class Main extends Sprite 
	{
		private var _message:TextField;
		private var _username:TextField;
		private var _save:SimpleButton;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			initDisplay();
		}
		private function initDisplay():void {
		    _message = new TextField();
			_message.autoSize = TextFieldAutoSize.LEFT;
			_message.x = 10;
			_message.y = 10;
			_message.text = "Enter a user name";
			
			_username = new TextField();
			_username.width = 100;
			_username.height = 18;
			_username.x = 10;
			_username.y = 30;
			_username.type = TextFieldType.INPUT;
			_username.border = true;
			_username.background = true;
			
			_save = new SimpleButton();
			_save.upState = createSaveButtonState(0xffcc33);
			_save.overState = createSaveButtonState(0x000000);
			_save.downState = createSaveButtonState(0xcccccc);
			_save.hitTestState = _save.upState;
			_save.x = 10;
			_save.y = 50;
			
			//When the save button is click,call the handleSave method
			_save.addEventListener(MouseEvent.CLICK, handleSave);
			addChild(_message);
			addChild(_username);
			addChild(_save);
		}
		private function createSaveButtonState(color:uint):Sprite {
		     var state:Sprite = new Sprite();
			 var label:TextField = new TextField();
			 label.text = "save";
			 label.x = 2;
			 label.height = 18;
			 label.width = 30;
			 var background:Shape = new Shape();
			 background.graphics.beginFill(color);
			 background.graphics.lineStyle(1, 0x000000);
			 background.graphics.drawRoundRect(0, 0, 32, 18, 9);
			 background.filters = [new DropShadowFilter(1)];
			 state.addChild(background);
			 state.addChild(label);
			 return state;
		}
		private function handleSave(event:MouseEvent):void {
		    //Generate a random score to save with the username
			var score:int = Math.floor(Math.random() * 10);
			//Create a new XML instance containing the data to be saved
			var dataToSave:XML = <gamescore>
			                        <username>{_username.text}</username>
									<score>{score}</score>
			                     </gamescore>
			var request:URLRequest = new URLRequest("coldfusion/gamescores.cfm");
			request.data = dataToSave;
			request.contentType = "text/xml";
			request.method = URLRequestMethod.POST;
			var loader:URLLoader = new URLLoader();
			loader.load(request);
			loader.addEventListener(Event.COMPLETE, handleResponse);
		}
		private function handleResponse(event:Event):void {
		    try {
				var success:XML = new XML(event.target.data);
				if (success.toString() == "1") {
				    _message.text = "Saved successfully"
				}else {
				    _message.text = "Error encountered while saving"
				}
			}catch (e:TypeError) {
			    _message.text = "Could not parse XML response from server";
			}
		}
		
	}
	
}