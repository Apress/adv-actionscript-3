package chapter_seven.state_pattern.SimpleCalculator.concretes
{
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractStateObject;

	/**
	 * @author Ben Smith
	 */
	public class CalculatorContextStateLogic extends CalculatorContext
	{
		override protected function doCreateAbstractStateObject( EnumType : int ) : AbstractStateObject
		{
			var product : AbstractStateObject;
			switch(EnumType)
			{
				case ADDITION_MODE:
					product = new AdditionState();
					break;
				case SUBTRACTION_MODE:
					product = new SubtractionState();
					break;
				case MULTIPLICATION_MODE:
					product = new MultiplicationState();
					break;
				case DIVISION_MODE:
					product = new DivisionState();
					break;
			}
			return product;
		}
	}
}
