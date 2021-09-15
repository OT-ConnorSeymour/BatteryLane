

PROGRAM _INIT
	(* Insert code here *)
	MAX_INJ_FREQ := 5200;
	MIN_INJ_FREQ := 4800;

	
	MovingAverage.WindowLength:= 4; (* moving window length *) 
	MovingAverage.Enable:= 1; 
	
	LowPassFilter.CutOffFrequency:= 20; (* cut-off frequency [Hz] *)
	LowPassFilter.Order:= 3;             (* 3rd order low-pass filter *)
	LowPassFilter.Type:= mtBESSEL;       (* bessel filter *)
	LowPassFilter.Enable:= 1;            (* enable function block *)
	
	curScalingFactor := 1250/50;
	aiActivePower := 0;
	aiAparentPower := 0;
	aiReactivePower := 0;
	

	aiFrequency := 0;
	aiPF := 0;
	
	aiAverageLineVoltage := 0;
	aiLineVoltageGenL1L2 := 0;
	aiLineVoltageGenL2L3 := 0;
	aiLineVoltageGenL3L1 := 0;
	aiPhaseVoltageGenL1 := 0;
	aiPhaseVoltageGenL2 := 0;
	aiPhaseVoltageGenL3 := 0;

	aiAverageCurrentGen := 0;
	aiPhaseCurrentGenL1 := 0;
	aiPhaseCurrentGenL2 := 0;
	aiPhaseCurrentGenL3 := 0;
	
	aiLineVoltageBusL1L2 := 0;
	aiLineVoltageBusL2L3 := 0;
	aiLineVoltageBusL3L1 := 0;
	
	aiPhaseVoltageL1 := 0;
	aiPhaseVoltageL2 := 0;
	aiPhaseVoltageL3 := 0;
	
	aiLineVoltageSync1 := 0;
	aiLineVoltageSync2 := 0;
	
	aiFrequencySync1 := 0;
	aiFrequencySync2 := 0;

	

	
	

END_PROGRAM