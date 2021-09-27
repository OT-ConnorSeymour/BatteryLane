
PROGRAM _CYCLIC
	//get current time
	status_gettime := RTC_gettime(ADR(rtc_gettime));
	
	// get current SP
	IF rtc_gettime.minute >= 0 AND rtc_gettime.minute < 30 THEN
		currentSP := 1+2*rtc_gettime.hour;
	ELSE
		currentSP := 1+2*rtc_gettime.hour+1;
	END_IF;
	
	NG_Charge_SP := REAL_TO_INT(INT_TO_REAL(maxExpectedOutput) * 0.05 * -1);
	
	//when new SP
	IF currentSP <> prevSP THEN
		//shift baselines
	//	baselineSP[0] := baselineSP[1];
	//	baselineSP[1] := baselineSP[2];
	//	baselineSP[2] := baselineSP[3];
		
		//select the new baseline based on SoC
		IF RTACSoC < NG_SoC THEN
			baselineSP[0] := NG_Charge_SP;
		ELSIF RTACSoC < Extra_Charge_SoC THEN
			baselineSP[0] := Extra_Charge_SP;
		ELSIF  RTACSoC < Base_Charge_SoC THEN
			baselineSP[0] := Const_Charge_SP;
		ELSE
			baselineSP[0] := 0;
		END_IF;
		
		prevSP := currentSP;
	END_IF;
	
	//ramping of the baseline
	IF baselineAuto THEN
		BaselineRamp.x        := 	baselineSP[0]; //current baseline setting
	ELSE
		BaselineRamp.x := DCbaselineAdjustmentManual;

	END_IF;

	BaselineRamp.basetime := baseLCCounter.seccnt;
	BaselineRamp();		(* LCRampLim function block call *)
	DCbaselineAdjustment := BaselineRamp.y; //output to DC algorythm
	
	
END_PROGRAM