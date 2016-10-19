package chapter_seven.iterator_pattern.collections.abstractions
{
   import chapter_seven.iterator_pattern.interfaces.IIterate;
   import chapter_seven.iterator_pattern.interfaces.IIterator;
   import flash.errors.IllegalOperationError;


	/**
	 * @author Ben Smith
	 */
	public class AbstractCollection implements IIterate
	{
		protected var _iterator : IIterator;

		public function AbstractCollection()
		{
		}

		final	public function count() : uint
		{
			return doCount();
		}

		final	public function append( element : * ) : Boolean
		{
			return doAppend( element );
		}

		final	public function remove( element : * ) : Boolean
		{
			return doRemove( element );
		}

		final	public function createIterator( string : String = null ) : IIterator
		{
			return doCreateIterator( string );
		}

		protected function doCount() : uint
		{
			throw new IllegalOperationError( ' doCount must be overridden' );
			return 0;
		}

		protected function doAppend( element : * ) : Boolean
		{
			throw new IllegalOperationError( ' doAppend must be overridden' );
			return false;
		}

		protected function doRemove( element : * ) : Boolean
		{
			throw new IllegalOperationError( ' doRemove must be overridden' );
			return false;
		}

		protected function doCreateIterator( string : String ) : IIterator
		{
			return null;
		}
	}
}
