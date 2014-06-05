package {
	
	import com.deck.view.UIViewDeck;
	
	import flash.events.MouseEvent;
	import flash.system.System;
	import flash.ui.ContextMenu;
	
	import mx.events.FlexEvent;
	
	import spark.components.Application;
	import spark.components.Button;
	
	public class Base extends Application {
		private var globalContextMenu:ContextMenu;
		
		private var uiViewDeck:UIViewDeck;

		public function Base() {
			super();
		}
		
 
		public function initApp(event:FlexEvent):void {
 			removeEventListener(FlexEvent.APPLICATION_COMPLETE, initApp);
			 
			uiViewDeck = new UIViewDeck();
			uiViewDeck.createView();
			
			var btn:Button = new Button();
			addElement(btn);
			btn.width = 640;
			btn.height = 50;
			btn.y = 20;
			btn.addEventListener(MouseEvent.CLICK,btnClickHandler);
		}
		
		private function btnClickHandler(event:MouseEvent):void{
			trace(System.freeMemory + "  freemem");
			trace(System.totalMemoryNumber + "  totmem");
			trace(System.privateMemory + "  prvate");

			if(uiViewDeck==null){
				uiViewDeck = new UIViewDeck();
				uiViewDeck.createView();
			}else{
				uiViewDeck.clear();
				uiViewDeck = null;
			}
		}
		
		 
	}
}