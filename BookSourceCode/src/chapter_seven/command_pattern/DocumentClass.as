package chapter_seven.command_pattern
{
   import chapter_seven.command_pattern.commanders.pauseable_commands.PauseCommand;
   import chapter_seven.command_pattern.commanders.pauseable_commands.ResumeCommand;
   import chapter_seven.command_pattern.components.ReusableButton;
   import chapter_seven.command_pattern.interfaces.IPause;
   import chapter_seven.command_pattern.products.ExtendedMovieClip;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.MovieClip;


   /**
    * @author Ben Smith
    */
   public class DocumentClass extends Sprite
   {
	   private var btn : ReusableButton

      public function DocumentClass(_stage:DisplayObjectContainer)
      {
         var whateverPauseable : IPause = _stage.addChild(new ExtendedMovieClip()) as IPause;
			
         btn = _stage.addChild(new ReusableButton()) as ReusableButton;
         btn.exitCommand = new ResumeCommand( whateverPauseable );
         btn.hoverCommand = new PauseCommand( whateverPauseable );
         btn.y=50;
      }
   }
}
