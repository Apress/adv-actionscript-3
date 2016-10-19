package chapter_seven.chain_of_responsibility.components
{
   import chapter_seven.chain_of_responsibility.components.interfaces.IEventHandler;

   import flash.events.Event;

   /**
    * @author Ben Smith
    */
   public class NullHandler implements IEventHandler
   {
      public function NullHandler()
      {
      }

      final public function addHandler( handler : IEventHandler ) : void
      {
      }

      final public function forwardEvent( event : Event ) : void
      {
         trace( 'end of the chain' );
      }
   }
}
