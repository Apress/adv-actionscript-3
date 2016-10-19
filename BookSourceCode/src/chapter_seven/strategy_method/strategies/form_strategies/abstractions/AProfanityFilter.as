package chapter_seven.strategy_method.strategies.form_strategies.abstractions
{
   import chapter_seven.strategy_method.form.ContactForm;
   import chapter_seven.strategy_method.form.FormPacket;
   import chapter_seven.strategy_method.form.abstractions.FormObject;
   import flash.errors.IllegalOperationError;


   /**
    * @author Ben Smith
    */
   public class AProfanityFilter extends AFormValidationBehavior
   {
      protected static const ERROR : String = 'Please refrain from using obscenities';
      protected var profanityAr : Vector.<String>;

      public function AProfanityFilter( form : ContactForm = null )
      {
         super( form );
         doProfanity();
      }

      protected function doProfanity() : void
      {
         throw new IllegalOperationError( 'doProfanity must be overridden' );
      }

      override public function validate() : void
      {
         var field : Vector.<FormObject> = this._formContactForm.formCollections;
         for each (var form:FormObject in field)
         {
            var fp : FormPacket = form.packet;
            if (recourse( fp.data ))
            {
               fp.hasErrors = true;
               fp.addError( ERROR );
            }
         }
      }
	  protected function recourse( str : String , count : uint = 0 ) : Boolean
      {
         var expressionString : String = (count < profanityAr.length - 1) ? '\\b' + profanityAr[count] + '\\b' : profanityAr[count];
         var regExp : RegExp = new RegExp( expressionString , 'gix' );
         if (regExp.test( str ))
         {
            return true;
         }
         else if (count < profanityAr.length - 1)
         {
            return recourse( str , ++count );
         }
         return false;
      }
   }
}
