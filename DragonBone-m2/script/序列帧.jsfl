﻿fl.outputPanel.clear();   var doc=fl.getDocumentDOM();  var lib=fl.getDocumentDOM().library;   var items = doc.library.getSelectedItems();var selectName="";fl.getDocumentDOM().getTimeline().addNewLayer("images") var lastItem=[];for(var i=0;i<items.length;i++){	lastItem[i]=items[i];}fl.getDocumentDOM().getTimeline().removeFrames();  for(var i = 0; i<lastItem.length; i++){		lib.selectNone();	var names= lastItem[i].name.split("/");    selectName=(names[names.length-1] );	  	var temp3=selectName.substring(selectName.length-2, selectName.length-1);	var num=1;	if(temp3>=1 && temp3<=9){    		 num=2;	}	 	var idx=selectName.substring(selectName.length-num, selectName.length); 　	fl.getDocumentDOM().getTimeline().insertBlankKeyframe(parseInt(idx-1))     lib.selectItem(lastItem[i].name)	lib.addItemToDocument({x:0, y:0});  } 