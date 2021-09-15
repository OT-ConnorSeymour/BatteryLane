

PROGRAM _INIT
	BaselineRamp.enable    := TRUE;
	BaselineRamp.tup       := 2400;
	BaselineRamp.tdown     := 2400;
	BaselineRamp.max_value := maxExpectedOutput;
	BaselineRamp.min_value := -1*maxExpectedOutput;
	BaselineRamp.yset      := 0;
	BaselineRamp.set       := FALSE;
	
	baselineSP[0] := 0;
	baselineSP[1] := 0;
	baselineSP[2] := 0;
	baselineSP[3] := 0;
	
	baselineAuto := TRUE;
	
	prevSP := 0;
	
	NG_SoC := 280; //1/10
	Extra_Charge_SoC := 350; //1/10;
	Base_Charge_SoC := 450; //1/10;
	
	NG_Charge_SP := REAL_TO_INT(INT_TO_REAL(maxExpectedOutput) * 0.05);
	Extra_Charge_SP := -500;
	Const_Charge_SP := -100;
	
	 
END_PROGRAM