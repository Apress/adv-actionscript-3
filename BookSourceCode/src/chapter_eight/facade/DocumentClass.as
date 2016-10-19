package chapter_eight.facade
{
   import chapter_eight.facade.components.PauseResumeVideoPlayerFacade;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      var pause : Boolean = false;
      var vid : PauseResumeVideoPlayerFacade;
	  public function DocumentClass() {
		  
            if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
	  }
      public function init(e:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE, init);
		  /* ensure the swf is saved locally*/
		 
		 
         vid = new PauseResumeVideoPlayerFacade();
         addChild( vid );
         vid.playURL( "SwimmingWithTheDolphins.flv" );

         stage.addEventListener( MouseEvent.MOUSE_DOWN , toggleVideo );
      }

      private function toggleVideo( event : MouseEvent ) : void
      {
         if (!pause)
         {
            vid.pause();
         }
         else
         {
            vid.resume();
         }
         pause = !pause;
      }
   }
}
