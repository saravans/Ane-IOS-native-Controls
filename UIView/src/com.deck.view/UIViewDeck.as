package com.deck.view
{
	import flash.events.EventDispatcher;
	import flash.events.StatusEvent;
	import flash.external.ExtensionContext;
	

	public class UIViewDeck extends EventDispatcher
	{
		protected var _extensionContext:ExtensionContext;

		public function UIViewDeck()
		{
			super();
			_extensionContext = ExtensionContext.createExtensionContext( "com.deck.view", "main");
		}

		private function onStatus(e:StatusEvent):void
		{
			 
		}

		public function createView():*{
 			if(!_extensionContext)
				_extensionContext = ExtensionContext.createExtensionContext("com.deck.view", "main");
			_extensionContext.addEventListener(StatusEvent.STATUS, onStatus);
			return _extensionContext.call("createControls");
		}
		
		public function clear():*{
			if(!_extensionContext)
				_extensionContext = ExtensionContext.createExtensionContext("com.deck.view", "main");
			_extensionContext.addEventListener(StatusEvent.STATUS, onStatus);
			return _extensionContext.call("clearControls");
		}
 
	}
}

