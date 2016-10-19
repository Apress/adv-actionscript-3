package chapter_seven.state_pattern.SimpleCalculator.concretes
{
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractCalculatorContext;
   import chapter_seven.state_pattern.SimpleCalculator.abstractions.AbstractStateObject;
   import flash.errors.IllegalOperationError;


	/**
	 * @author Ben Smith
	 */
	public class CalculatorContext extends AbstractCalculatorContext
	{
		protected static const ADDITION_MODE : int = 0;
		protected static const SUBTRACTION_MODE : int = 1
		protected static const MULTIPLICATION_MODE : int = 2
		protected static const DIVISION_MODE : int = 3

		public function CalculatorContext()
		{
		}

		override protected function doAddition() : void
		{
			this._state = doCreateAbstractStateObject( ADDITION_MODE );
		}

		override protected function doSubtraction() : void
		{
			this._state = doCreateAbstractStateObject( SUBTRACTION_MODE );
		}

		override protected function doDivision() : void
		{
			this._state = doCreateAbstractStateObject( DIVISION_MODE );
		}

		override protected function doMultiplication() : void
		{
			this._state = doCreateAbstractStateObject( MULTIPLICATION_MODE );
		}

		override protected function doSetDilineatedValues( values : Vector.<Number> ) : void
		{
			this._state.calculate( values );
		}

		protected function doCreateAbstractStateObject( EnumType : int ) : AbstractStateObject
		{
			throw new IllegalOperationError( 'doFactoryMethod must be overridden' );
			return null;
		}
	}
}
