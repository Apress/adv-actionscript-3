package chapter_seven.memento
{
   import chapter_seven.memento.components.Caretaker;
   import chapter_seven.memento.components.Originator;
   import chapter_seven.memento.components.util.FormField;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.text.TextFieldType;

	/**
	 * @author Ben Smith
	 */
	public class DocumentClass extends Sprite
	{
		private var careTaker : Caretaker;
		private var ff : FormField;

		public function DocumentClass()
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			ff = new Originator();
			ff.width = 300;
			ff.height = 500;
			ff.type = TextFieldType.INPUT;
			ff.border = true;
			addChild( ff );

			careTaker = new Caretaker( Originator( ff ) );
		}
	}
}
