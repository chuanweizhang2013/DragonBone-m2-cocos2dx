package control
{
	public class ExportExpandDataCommand
	{
		public function ExportExpandDataCommand()
		{
		}
		
		public static var xmlData:XML;
		public static  var expandData:XML;
		
		public static function getTag(armatureName:String,boneName:String):String{
			for each (var attrs:XML in expandData.attr){  
				if(attrs.@name==armatureName){
					for each (var item:XML in attrs.item){  
						if(item.@name==boneName && item.@key=="tag"){
							return   item.@data
						} 
					}
				}
				
			}
				return "";
		}
		
		
		public static function getAlign(armatureName:String,boneName:String):String{
			for each (var attrs:XML in expandData.attr){  
				if(attrs.@name==armatureName){
					for each (var item:XML in attrs.item){  
						if(item.@name==boneName && item.@key=="align"){
							return   item.@data;
						} 
					}
				}
				
			}
			return "";
		}
		
		
		
		
		
		public static function getClickEffect(armatureName:String,boneName:String):String{
			for each (var attrs:XML in expandData.attr){  
				if(attrs.@name==armatureName){
					for each (var item:XML in attrs.item){  
						if(item.@name==boneName && item.@key=="clickEffect"){
							return   item.@data
						} 
					}
				}
				
			}
			return "";
		}
		
		
		public static function getEvent(armatureName:String,boneName:String):String{
			for each (var attrs:XML in expandData.attr){  
				if(attrs.@name==armatureName){
					for each (var item:XML in attrs.item){  
						if(item.@name==boneName && item.@key=="event"){
							return   item.@data;
						} 
					}
				}
				
			}
			return "";
		}
		
		
		 public static function getMergeData():String{
			 for each (var armature:XML in xmlData.armatures[0].armature){ 
				 for each (var bone:XML in armature.b){ 
					 var tag:String= getTag(armature.@name,bone.@name);
					 if(tag!=""){ 
						 bone.@tag=tag;
					 }
					 
					 var align:String= getAlign(armature.@name,bone.@name);
					 if(align!=""){ 
						 bone.@align=align;
					 }
					 
					 
					 var event:String= getEvent(armature.@name,bone.@name);
					 if(event!=""){ 
						 bone.@event=event;
					 }
					 
					 var clickEffect:String= getClickEffect(armature.@name,bone.@name);
					 if(clickEffect!="" && clickEffect!="0"){ 
						 bone.@clickEffect=clickEffect;
					 }
				 }
			 }
			 
			 return xmlData.toXMLString();
		 }
		
	}
}