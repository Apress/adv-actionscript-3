package chapter_seven.strategy_method.strategies.form_strategies.validations
{
   import chapter_seven.strategy_method.form.ContactForm;
   import chapter_seven.strategy_method.form.FormPacket;
   import chapter_seven.strategy_method.form.abstractions.FormObject;
   import chapter_seven.strategy_method.strategies.form_strategies.abstractions.AFormValidationBehavior;

   /**
    * @author Ben Smith
    */
   public class EmailValidation extends AFormValidationBehavior
   {
	   //NOTE: Simplified regex. See http://ex-parrot.com/~pdw/Mail-RFC822-Address.html for an incomplete, but better implementation.
      static protected const Email_Expression : RegExp = /^[a-z][\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i
      static protected const ERROR : String = "A Valid Email is Required"

      public function EmailValidation( form : ContactForm = null )
      {
         super( form );
      }

      override public function validate() : void
      {
         var email : FormObject = this._formContactForm.email;
         var emailData : FormPacket = email.packet;
         var emailAddy : String = emailData.data;
		 
         if (!Email_Expression.test( emailAddy ))
         {
            emailData.hasErrors = true;
			trace(ERROR);
         }
      }
   }
}
