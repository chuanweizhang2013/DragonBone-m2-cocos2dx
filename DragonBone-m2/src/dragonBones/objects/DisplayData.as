package dragonBones.objects
{
	import dragonBones.utils.dragonBones_internal;
	
	use namespace dragonBones_internal;
	
	/** @private */
	public class DisplayData
	{
		public var pivotX:Number;
		public var pivotY:Number;
		
		public var width:Number;
		public var height:Number;
		public var size:Number;
		public var text:String;
		public var color:String;
		public var align:String;
		dragonBones_internal var _isArmature:Boolean;
		
		public function get isArmature():Boolean
		{
			return _isArmature;
		}
		
		public function DisplayData()
		{
			pivotX = 0;
			pivotY = 0;
		}
	}
}