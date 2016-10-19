package chapter_eight.adapter.adapters 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Pimgd
	 */
	public class SimpleMCAnimation extends MovieClip 
	{
		
		public function SimpleMCAnimation() 
		{
			if (stage) addEventListener(Event.ENTER_FRAME, enterFrame);
			else addEventListener(Event.ADDED_TO_STAGE, addEnterFrame);
		}
		
		private function addEnterFrame(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, addEnterFrame);
			addEventListener(Event.ENTER_FRAME, enterFrame);
		}
		
		private function enterFrame(e:Event = null):void {
			this.graphics.clear();
			this.graphics.beginFill(0xFF00FF, 1);
			this.graphics.drawCircle(0, 0, 50);
			this.graphics.endFill();
			this.x += 5;
		}
		
	}

}