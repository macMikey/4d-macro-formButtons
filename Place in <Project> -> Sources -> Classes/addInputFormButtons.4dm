Class constructor
	
	This:C1470.buttons_c:=New collection:C1472
	This:C1470.buttons_c.push(New object:C1471("object"; "bFirst"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 21; "width"; 48; "height"; 48; "tooltip"; "First Record"; "action"; "firstRecord"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/FirstRecord.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	This:C1470.buttons_c.push(New object:C1471("object"; "bPrevious"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 84; "width"; 48; "height"; 48; "tooltip"; "Previous Record"; "action"; "previousRecord"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/PreviousRecord.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	This:C1470.buttons_c.push(New object:C1471("object"; "bNext"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 147; "width"; 48; "height"; 48; "tooltip"; "Next Record"; "action"; "nextRecord"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/NextRecord.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	This:C1470.buttons_c.push(New object:C1471("object"; "bLast"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 210; "width"; 48; "height"; 48; "tooltip"; "Last Record"; "action"; "lastRecord"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/LastRecord.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	This:C1470.buttons_c.push(New object:C1471("object"; "bDelete"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 273; "width"; 48; "height"; 48; "tooltip"; "Delete Record"; "action"; "deleteRecord"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/DeleteRecord.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	This:C1470.buttons_c.push(New object:C1471("object"; "bCancel"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 336; "width"; 48; "height"; 48; "tooltip"; "Cancel"; "action"; "cancel"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/Cancel.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	This:C1470.buttons_c.push(New object:C1471("object"; "bValidate"; "definition"; New object:C1471("type"; "pictureButton"; "top"; 16; "left"; 399; "width"; 48; "height"; 48; "tooltip"; "Accept"; "action"; "accept"; "rowCount"; 4; "picture"; "/RESOURCES/Images/Buttons/LightGrey/Validate.png"; "switchWhenRollover"; True:C214; "switchBackWhenReleased"; True:C214; "useLastFrameAsDisabled"; True:C214; "events"; New collection:C1472("onClick"))))
	
Function onInvoke($editor : Object)->$result : Object
	var $buttons_c : Collection
	var $item : Text
	var $elem : Object
	
	$buttons_c:=This:C1470.buttons_c
	For each ($elem; $buttons_c)
		$item:=$elem.object
		
		//Add button in the current page
		$editor.editor.currentPage.objects[$item]:=$elem.definition
		//Add button to selection
		$editor.editor.currentSelection.push($item)
	End for each 
	
	// Notify the modification to the 4D Form editor
	$result:=New object:C1471("currentSelection"; $editor.editor.currentSelection; "currentPage"; $editor.editor.currentPage)