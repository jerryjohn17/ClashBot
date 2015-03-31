;Will detect how much gold per search

Func CheckCostPerSearch()
    Local $i = 0
	Local $GoldPriortoSearch = $GoldCount
	SetLog("Checking Gold Cost Per Search (This is done one time only) ", $COLOR_GREEN)
   	ZoomOut()
	PrepareSearch()
	If _Sleep(3000) Then Return
    ReturnHome(False, False) ;Return home no screenshot
	SetLog("Opening Builder page to read Resources..", $COLOR_BLUE)
    Click(388,30) ; Click Builder Button
    _CaptureRegion()
	Local $i = 0
	While _ColorCheck(_GetPixelColor(819, 39), Hex(0xF8FCFF, 6), 20) = False
		$i += 1
		If _Sleep(500) Then Return
		_CaptureRegion()
		If $i >= 20 Then ExitLoop
	WEnd
	If _ColorCheck(_GetPixelColor(318, 637), Hex(0xD854D0, 6), 20) Then
	    Local $CurrentGold = GetOther(356,625, "Resource")
    Else
		Local $CurrentGold = GetOther(440,625, "Resource")
    EndIf

    Click (820,40) ;

    $SearchCost = $GoldPriortoSearch - $CurrentGold
    SetLog("Gold Cost Per Search is: " & $SearchCost, $COLOR_BLUE)
EndFunc   ;==>CheckGoldCostPerSearch