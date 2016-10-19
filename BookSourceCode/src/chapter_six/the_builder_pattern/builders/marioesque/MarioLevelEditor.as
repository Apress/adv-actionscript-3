package chapter_six.the_builder_pattern.builders.marioesque
{
   import chapter_six.the_builder_pattern.builders.marioesque.abstraction.AbstractMarioEsqueLevelEditor;
   import chapter_six.the_builder_pattern.model.BreakableBrick;
   import chapter_six.the_builder_pattern.model.Cloud;
   import chapter_six.the_builder_pattern.model.Hill;
   import chapter_six.the_builder_pattern.model.MoneyBox;
   import chapter_six.the_builder_pattern.model.Pipe;
   import chapter_six.the_builder_pattern.model.Shrubs;
   import chapter_six.the_builder_pattern.model.SolidBrick;
   import chapter_six.the_builder_pattern.model.Stone;
   import flash.display.DisplayObject;


	/**
	 * @author Ben Smith
	 */

   public class MarioLevelEditor extends AbstractMarioEsqueLevelEditor
   {
      public function MarioLevelEditor()
      {
         super();
      }

      override protected function doCreateSolidBrick() : DisplayObject
      {
         return new SolidBrick();
      }

      override protected function doCreateBreakableBrick() : DisplayObject
      {
         return new BreakableBrick();
      }

      override protected function doCreateStone() : DisplayObject
      {
         return new Stone();
      }

      override protected function doCreateMoneyBox() : DisplayObject
      {
         return new MoneyBox();
      }

      override protected function doCreateCloud() : DisplayObject
      {
         return new Cloud();
      }

      override  protected function doCreateHill() : DisplayObject
      {
         return new Hill();
      }

      override protected function doCreatePipe() : DisplayObject
      {
         return new Pipe();
      }

      override protected function doCreateBush() : DisplayObject
      {
         return new Shrubs();
      }
   }
}
