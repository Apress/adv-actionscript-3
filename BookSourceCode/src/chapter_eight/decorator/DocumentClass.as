package chapter_eight.decorator
{
   import chapter_eight.decorator.abstraction.ASoundDecorator.Audible;
   import chapter_eight.decorator.concretes.InfiniteLoopDecorator;
   import chapter_eight.decorator.concretes.PauseableAudibleDecorator;
   import chapter_eight.decorator.interfaces.ISound;
   import chapter_eight.decorator.interfaces.ISoundChannel;
   import flash.events.Event;

   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;

   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
      private var _isPlaying : Boolean = false
      var sound : ISound;
	  
	  public function DocumentClass() {
		 if (stage) init();
		 else addEventListener(Event.ADDED_TO_STAGE, init);
	  }

      public function init(e:Event = null):void 
      {
		  removeEventListener(Event.ADDED_TO_STAGE, init);
         sound = new Audible( new URLRequest( "music.mp3" ) );
         sound = new InfiniteLoopDecorator( sound );
         sound = new PauseableAudibleDecorator( sound );
         sound.play()

         stage.addEventListener( MouseEvent.MOUSE_DOWN , onDown )
      }

      private function onDown( event : MouseEvent ) : void
      {
         var localsnd : ISound = sound;
         var snd : ISoundChannel = ISoundChannel( localsnd );
         _isPlaying = !_isPlaying;
         if (_isPlaying)
         {
            snd.stop();
         }
         else
         {
            localsnd.play();
         }
      }
   }
}
