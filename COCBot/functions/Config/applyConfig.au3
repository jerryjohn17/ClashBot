;Applies all of the  variable to the GUI

Func applyConfig() ;Applies the data from config to the controls in GUI
	;Search Settings------------------------------------------------------------------------
	GUICtrlSetData($txtDeadMinGold, $MinDeadGold)
	GUICtrlSetData($txtDeadMinElixir, $MinDeadElixir)
	GUICtrlSetData($txtDeadMinDarkElixir, $MinDeadDark)
	GUICtrlSetData($txtDeadMinTrophy, $MinDeadTrophy)
	GUICtrlSetData($txtMinGold, $MinGold)
	GUICtrlSetData($txtMinElixir, $MinElixir)
	GUICtrlSetData($txtMinDarkElixir, $MinDark)
	GUICtrlSetData($txtMinTrophy, $MinTrophy)

	_GUICtrlComboBox_SetCurSel($cmbAny, $icmbAny)
	_GUICtrlComboBox_SetCurSel($cmbDead, $icmbDead)

	For $i = 0 To 4
	   If $icmbTH = $i Then $MaxTH = $THText[$i]
	   If $icmbDeadTH = $i Then $MaxDeadTH = $THText[$i]
    Next

	If $chkConditions[0] = 1 Then
		GUICtrlSetState($chkDeadGE, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadGE, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[1] = 1 Then
		GUICtrlSetState($chkDeadMeetDE, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadMeetDE, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[2] = 1 Then
		GUICtrlSetState($chkDeadMeetTrophy, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadMeetTrophy, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[3] = 1 Then
		GUICtrlSetState($chkDeadMeetTH, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadMeetTH, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[4] = 1 Then
		GUICtrlSetState($chkDeadMeetTHO, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadMeetTHO, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[5] = 1 Then
		GUICtrlSetState($chkMeetGE, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkMeetGE, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[6] = 1 Then
		GUICtrlSetState($chkMeetDE, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkMeetDE, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[7] = 1 Then
		GUICtrlSetState($chkMeetTrophy, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkMeetTrophy, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[8] = 1 Then
		GUICtrlSetState($chkMeetTH, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkMeetTH, $GUI_UNCHECKED)
	EndIf

	If $chkConditions[9] = 1 Then
		GUICtrlSetState($chkMeetTHO, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkMeetTHO, $GUI_UNCHECKED)
	EndIf

	If $AlertBaseFound = 1 Then
		GUICtrlSetState($chkAlertSearch, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkAlertSearch, $GUI_UNCHECKED)
	EndIf

	If $TakeLootSnapShot = 1 Then
		GUICtrlSetState($chkTakeLootSS, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkTakeLootSS, $GUI_UNCHECKED)
	EndIf

	If $TakeAllTownSnapShot = 1 Then
		GUICtrlSetState($chkTakeTownSS, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkTakeTownSS, $GUI_UNCHECKED)
	EndIf

	_GUICtrlComboBox_SetCurSel($cmbTH, $icmbTH)

	;Attack Settings-------------------------------------------------------------------------
	_GUICtrlComboBox_SetCurSel($cmbDeadDeploy, $deployDeadSettings)
	_GUICtrlComboBox_SetCurSel($cmbDeadAlgorithm, $icmbDeadAlgorithm)

	If $checkDeadUseKing = 1 Then
		GUICtrlSetState($chkDeadUseKing, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadUseKing, $GUI_UNCHECKED)
	EndIf

	If $checkDeadUseQueen = 1 Then
		GUICtrlSetState($chkDeadUseQueen, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadUseQueen, $GUI_UNCHECKED)
	EndIf

	If $checkDeadUseClanCastle = 1 Then
		GUICtrlSetState($chkDeadUseClanCastle, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadUseClanCastle, $GUI_UNCHECKED)
	EndIf

	If $checkDeadAttackTH = 1 Then
		GUICtrlSetState($chkDeadAttackTH, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDeadAttackTH, $GUI_UNCHECKED)
	EndIf

	_GUICtrlComboBox_SetCurSel($cmbDeploy, $deploySettings)
	_GUICtrlComboBox_SetCurSel($cmbAlgorithm, $icmbAlgorithm)

	If $checkUseKing = 1 Then
		GUICtrlSetState($chkUseKing, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkUseKing, $GUI_UNCHECKED)
	EndIf

	If $checkUseQueen = 1 Then
		GUICtrlSetState($chkUseQueen, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkUseQueen, $GUI_UNCHECKED)
	EndIf

	If $checkUseClanCastle = 1 Then
		GUICtrlSetState($chkUseClanCastle, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkUseClanCastle, $GUI_UNCHECKED)
	EndIf

	If $checkAttackTH = 1 Then
		GUICtrlSetState($chkAttackTH, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkAttackTH, $GUI_UNCHECKED)
	EndIf

	_GUICtrlComboBox_SetCurSel($cmbUnitDelay, $icmbUnitDelay)
	_GUICtrlComboBox_SetCurSel($cmbWaveDelay, $icmbWaveDelay)

	If $iRandomspeedatk = 1 Then
		GUICtrlSetState($Randomspeedatk, $GUI_CHECKED)
	Else
		GUICtrlSetState($Randomspeedatk, $GUI_UNCHECKED)
	EndIf
	Randomspeedatk()

	;Donate Settings-------------------------------------------------------------------------
	If $ichkRequest = 1 Then
		GUICtrlSetState($chkRequest, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkRequest, $GUI_UNCHECKED)
	EndIf

	;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	If $ichkDonateBarbarians = 1 Then
		GUICtrlSetState($chkDonateBarbarians, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateBarbarians, $GUI_UNCHECKED)
	EndIf
	If $ichkDonateAllBarbarians = 1 Then
		GUICtrlSetState($chkDonateAllBarbarians, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateAllBarbarians, $GUI_UNCHECKED)
	EndIf
	;````````````````````````````````````````````````
	If $ichkDonateArchers = 1 Then
		GUICtrlSetState($chkDonateArchers, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateArchers, $GUI_UNCHECKED)
	EndIf
	If $ichkDonateAllArchers = 1 Then
		GUICtrlSetState($chkDonateAllArchers, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateAllArchers, $GUI_UNCHECKED)
	EndIf
	;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	If $ichkDonateGiants = 1 Then
		GUICtrlSetState($chkDonateGiants, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateGiants, $GUI_UNCHECKED)
	EndIf
	If $ichkDonateAllGiants = 1 Then
		GUICtrlSetState($chkDonateAllGiants, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateAllGiants, $GUI_UNCHECKED)
	EndIf

	GUICtrlSetData($txtDonateBarbarians, $itxtDonateBarbarians)
	GUICtrlSetData($txtDonateArchers, $itxtDonateArchers)
	GUICtrlSetData($txtDonateGiants, $itxtDonateGiants)

	GUICtrlSetData($txtRequest, $itxtRequest)
	chkRequest()
	;Troop Settings--------------------------------------------------------------------------
	_GUICtrlComboBox_SetCurSel($cmbTroopComp, $icmbTroopComp)
	_GUICtrlComboBox_SetCurSel($cmbRaidcap, $icmbRaidcap)
	GUICtrlSetData($txtCapacity, $itxtcampCap)
	GUICtrlSetData($txtBarbarians, $BarbariansComp)
	GUICtrlSetData($txtArchers, $ArchersComp)
	GUICtrlSetData($txtNumGiants, $GiantsComp)
	GUICtrlSetData($txtGoblins, $GoblinsComp)
	GUICtrlSetData($txtNumWallbreakers, $GoblinsComp)
	SetComboTroopComp()

	_GUICtrlComboBox_SetCurSel($cmbBarrack1, $barrackTroop[0])
	_GUICtrlComboBox_SetCurSel($cmbBarrack2, $barrackTroop[1])
	_GUICtrlComboBox_SetCurSel($cmbBarrack3, $barrackTroop[2])
	_GUICtrlComboBox_SetCurSel($cmbBarrack4, $barrackTroop[3])
	;Other Settings--------------------------------------------------------------------------
	If $ichkWalls = 1 Then
		GUICtrlSetState($chkWalls, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkWalls, $GUI_UNCHECKED)
	EndIf
	_GUICtrlComboBox_SetCurSel($cmbWalls, $icmbWalls)

	Switch $iUseStorage
		Case 0
			GUICtrlSetState($UseGold, $GUI_CHECKED)
		Case 1
			GUICtrlSetState($UseElixir, $GUI_CHECKED)
		Case 2
			GUICtrlSetState($UseGoldElix, $GUI_CHECKED)
    EndSwitch

	GUICtrlSetData($txtWallMinGold, $itxtWallMinGold)
	GUICtrlSetData($txtWallMinElixir, $itxtWallMinElixir)
	;General Settings--------------------------------------------------------------------------
	If $frmBotPosX <> -32000 Then WinMove($sBotTitle, "", $frmBotPosX, $frmBotPosY)
	GUICtrlSetData($txtMaxTrophy, $itxtMaxTrophy)

	;Misc Settings--------------------------------------------------------------------------
	GUICtrlSetData($txtReconnect, $itxtReconnect)
	GUICtrlSetData($txtReturnh, $itxtReturnh)
	GUICtrlSetData($txtKingSkill, $itxtKingSkill)
	GUICtrlSetData($txtQueenSkill, $itxtQueenSkill)
	_GUICtrlComboBox_SetCurSel($cmbSearchsp, $icmbSearchsp)
	If $ichkTrap = 1 Then
		GUICtrlSetState($chkTrap, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkTrap, $GUI_UNCHECKED)
	EndIf

	If $ichkBackground = 1 Then
		GUICtrlSetState($chkBackground, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkBackground, $GUI_UNCHECKED)
	EndIf
	chkBackground() ;Applies it to hidden button

	If $ichkBotStop = 1 Then
		GUICtrlSetState($chkBotStop, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkBotStop, $GUI_UNCHECKED)
	EndIf
	_GUICtrlComboBox_SetCurSel($cmbBotCommand, $icmbBotCommand)
	_GUICtrlComboBox_SetCurSel($cmbBotCond, $icmbBotCond)

	If $ichkForceBS = 1 Then
		GUICtrlSetState($chkForceBS, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkForceBS, $GUI_UNCHECKED)
	EndIf

	If $ichkNoAttack = 1 Then
		GUICtrlSetState($chkNoAttack, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkNoAttack, $GUI_UNCHECKED)
	EndIf

	If $ichkDonateOnly = 1 Then
		GUICtrlSetState($chkDonateOnly, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkDonateOnly, $GUI_UNCHECKED)
	EndIf
EndFunc   ;==>applyConfig