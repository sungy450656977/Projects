if device.platform == "wp8" or device.platform == "winrt" then
--<Ruby>
_G["LAYOUT_COLOR_NONE"] = 0
_G["LAYOUT_COLOR_SOLID"] = 1
_G["LAYOUT_COLOR_GRADIENT"] = 2

_G["LAYOUT_ABSOLUTE"] = 0
_G["LAYOUT_LINEAR_VERTICAL"] = 1
_G["LAYOUT_LINEAR_HORIZONTAL"] = 2
_G["LAYOUT_RELATIVE"] = 3

_G["LAYOUT_CLIPPING_STENCIL"] = 0
_G["LAYOUT_CLIPPING_SCISSOR"] = 1


_G["ModelViewLevel_Default"] = 0
_G["ModelViewLevel_Normal"] = 1
_G["ModelViewLevel_MessageBox"] = 2
_G["ModelViewLevel_Lock"] = 3

--ListViewDirection
_G["LISTVIEW_DIR_NONE"] = 0
_G["LISTVIEW_DIR_VERTICAL"] = 1
_G["LISTVIEW_DIR_HORIZONTAL"] = 2

--ListViewMoveDirection
_G["LISTVIEW_MOVE_DIR_NONE"] = 0
_G["LISTVIEW_MOVE_DIR_UP"] = 1
_G["LISTVIEW_MOVE_DIR_DOWN"] = 2
_G["LISTVIEW_MOVE_DIR_LEFT"] = 3
_G["LISTVIEW_MOVE_DIR_RIGHT"] = 4

--OldListViewEventType
_G["LISTVIEW_EVENT_INIT_CHILD"] = 0
_G["LISTVIEW_EVENT_UPDATE_CHILD"] = 1
_G["LISTVIEW_EVENT_CLICK_CHILD"] = 2

--ListViewCellShowStatus
_G["LISTVIEW_CELL_SHOW_FULL"] = 0
_G["LISTVIEW_CELL_SHOW_HIDE_LEFTTOP"] = 1
_G["LISTVIEW_CELL_SHOW_HIDE_RIGHTBOTTOM"] = 2
_G["LISTVIEW_CELL_SHOW_HALF_LEFTTOP"] = 3
_G["LISTVIEW_CELL_SHOW_HALF_RIGHTBOTTOM"] = 4
_G["LISTVIEW_CELL_HIDE_LEFTTOP"] = 5
_G["LISTVIEW_CELL_HIDE_RIGHTBOTTOM"] = 6
_G["LISTVIEW_CELL_STATUS_MAX"] = 7


--CCS_ScrollviewEventType
_G["CCS_SCROLLVIEW_EVENT_SCROLL_TO_TOP"] = 0
_G["CCS_SCROLLVIEW_EVENT_SCROLL_TO_BOTTOM"] = 1
_G["CCS_SCROLLVIEW_EVENT_SCROLL_TO_LEFT"] = 2
_G["CCS_SCROLLVIEW_EVENT_SCROLL_TO_RIGHT"] = 3
_G["CCS_SCROLLVIEW_EVENT_SCROLLING"] = 4
_G["CCS_SCROLLVIEW_EVENT_BOUNCE_TOP"] = 5
_G["CCS_SCROLLVIEW_EVENT_BOUNCE_BOTTOM"] = 6
_G["CCS_SCROLLVIEW_EVENT_BOUNCE_LEFT"] = 7
_G["CCS_SCROLLVIEW_EVENT_BOUNCE_RIGHT"] = 8

--ScrollviewEventType
_G["SCROLLVIEW_EVENT_SCROLL_TO_TOP"] = 0
_G["SCROLLVIEW_EVENT_SCROLL_TO_BOTTOM"] = 1
_G["SCROLLVIEW_EVENT_SCROLL_TO_LEFT"] = 2
_G["SCROLLVIEW_EVENT_SCROLL_TO_RIGHT"] = 3
_G["SCROLLVIEW_EVENT_SCROLLING"] = 4
_G["SCROLLVIEW_EVENT_SCROLL_STOP"] = 5
_G["SCROLLVIEW_EVENT_BOUNCE_TOP"] = 6
_G["SCROLLVIEW_EVENT_BOUNCE_BOTTOM"] = 7
_G["SCROLLVIEW_EVENT_BOUNCE_LEFT"] = 8
_G["SCROLLVIEW_EVENT_BOUNCE_RIGHT"] = 9



--SCENE_COMPONENT_TYPE
_G["SCENE_COMPONENT_INVALID"] = -1
_G["SCENE_COMPONENT_CCSPRITE"] = 0
_G["SCENE_COMPONENT_TILEDMAP"] = 1
_G["SCENE_COMPONENT_PARTICLE"] = 2
_G["SCENE_COMPONENT_CCARMATURE"] = 3
_G["SCENE_COMPONENT_AUDIO"] = 4
_G["SCENE_COMPONENT_ATTRIBUTE"] = 5
_G["SCENE_COMPONENT_BACKAUDIO"] = 6
_G["SCENE_COMPONENT_GUI"] = 7
_G["SCENE_COMPONENT_MAX"] = 8

--TextureResType
_G["UI_TEX_TYPE_LOCAL"] = 0
_G["UI_TEX_TYPE_PLIST"] = 1

--TouchEventType
_G["TOUCH_EVENT_BEGAN"] = 0
_G["TOUCH_EVENT_MOVED"] = 1
_G["TOUCH_EVENT_ENDED"] = 2
_G["TOUCH_EVENT_CANCELED"] = 3

--CCSTextFiledExEventType
_G["CCSTEXTFIELDEX_EVENT_ATTACH_WITH_IME"] = 0
_G["CCSTEXTFIELDEX_EVENT_DETACH_WITH_IME"] = 1
_G["CCSTEXTFIELDEX_EVENT_KEYBOARD_WILL_SHOW"] = 2
_G["CCSTEXTFIELDEX_EVENT_KEYBOARD_WILL_HIDE"] = 3
_G["CCSTEXTFIELDEX_EVENT_KEYBOARD_DO_SHOW"] = 4
_G["CCSTEXTFIELDEX_EVENT_KEYBOARD_DO_HIDE"] = 5
_G["CCSTEXTFIELDEX_EVENT_TEXT_CHANGE"] = 6
_G["CCSTEXTFIELDEX_EVENT_RETURN"] = 7
_G["CCSTEXTFIELDEX_EVENT_TOUCH_DOWN"] = 8


--CCS_ATLAS_TYPE
_G["CCS_ATLAS_TYPE_DEFAULT"] = 0
_G["CCS_ATLAS_TYPE_LABEL"] = 1
_G["CCS_ATLAS_TYPE_SPRITE"] = 2
_G["CCS_ATLAS_TYPE_ARMATURE"] = 3
_G["CCS_ATLAS_TYPE_HEADER"] = 4


--CCSKeyboardReturnType
_G["kCCSKeyboardReturnTypeDefault"] = 0
_G["kCCSKeyboardReturnTypeDone"] = 1
_G["kCCSKeyboardReturnTypeSend"] = 2
_G["kCCSKeyboardReturnTypeSearch"] = 3
_G["kCCSKeyboardReturnTypeGo"] = 4

--CCSEditBoxInputMode
_G["kCCSEditBoxInputModeAny"] = 0
_G["kCCSEditBoxInputModeEmailAddr"] = 1
_G["kCCSEditBoxInputModeNumeric"] = 2
_G["kCCSEditBoxInputModePhoneNumber"] = 3
_G["kCCSEditBoxInputModeUrl"] = 4
_G["kCCSEditBoxInputModeDecimal"] = 3
_G["kCCSEditBoxInputModeSingleLine"] = 4

--CCSEditBoxInputFlag
_G["kCCSEditBoxInputFlagPassword"] = 0
_G["kCCSEditBoxInputFlagSensitive"] = 1
_G["kCCSEditBoxInputFlagInitialCapsWord"] = 2
_G["kCCSEditBoxInputFlagInitialCapsSentence"] = 3
_G["kCCSEditBoxInputFlagInitialCapsAllCharacters"] = 4


_G["CCCrypto"] = cc.Crypto
_G["CCInteger"] = cc.__Integer


--LayoutParameterType
_G["LAYOUT_PARAMETER_NONE"] = 0
_G["LAYOUT_PARAMETER_LINEAR"] = 1
_G["LAYOUT_PARAMETER_RELATIVE"] = 2


end

if device.platform == "wp8" or device.platform == "winrt" then
	_G["SCALE9SPRITE"] = "ccui.Scale9Sprite"
	_G["CCINTEGER"] = "cc.__Integer"
	_G["CCSPRITE"] = "cc.Sprite"
else
	_G["SCALE9SPRITE"] = "CCScale9Sprite"
	_G["CCINTEGER"] = "CCInteger"
	_G["CCSPRITE"] = "CCSprite"
end

