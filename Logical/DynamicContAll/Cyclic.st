
PROGRAM _CYCLIC
	
//	IF testModeOn THEN
//		
//		IF injFrequency < MIN_INJ_FREQ THEN
//			injFrequency := MIN_INJ_FREQ;
//		END_IF;
//		
//		IF injFrequency > MAX_INJ_FREQ THEN
//			injFrequency := MAX_INJ_FREQ;
//		END_IF;
//		
//		
//		:= injFrequency;
//	ELSE
//		frequency := aiFrequency;
//	END_IF;
//	
//	MovingAverage.In:= UINT_TO_REAL(frequency);  
//	MovingAverage();  
//
//	filterFreq := brmceil(MovingAverage.Out*10)/1000;
//	filterFreqMA := brmceil(MovingAverage.Out*10)/1000;
//
//	
//	LowPassFilter.In:= UINT_TO_REAL(frequency);;  
//	LowPassFilter(); 
//	
//	filterFreqLowPass:= brmceil(LowPassFilter.Out*10)/1000;
//
//	
//	
//	IF DynamicContainmentEnabled THEN
//		
//
//		
//		IF NOT(diPhase1LossGen) THEN	
//			freqDev := filterFreq - GRID_FREQUENCY;
//		ELSE
//			freqDev := 0;
//		END_IF;
//		
//
//		Table.InX:= freqDev;   (* freq deviation *)
//		Table();          (* run table lookup *)
//		powerRatio:= Table.Out; (* calculated % output *)
//	
//		
//		
//		powerOutputTmp :=  REAL_TO_INT(INT_TO_REAL(maxExpectedOutput) * powerRatio/100.00 + DCbaselineAdjustment);
//		
//		diff := expected - powerOutputTmp;
//		
//		error := (INT_TO_REAL(powerOutputTmp) / INT_TO_REAL(expected))*100 - 100;
//	
//		powerOutputDINT := REAL_TO_DINT(INT_TO_REAL(maxExpectedOutput) * powerRatio/100.00 + DCbaselineAdjustment);
//		
//		IF powerOutputDINT = 20000 THEN
//			powerOutputDINT := 20200;
//		END_IF;
//
//		
//	END_IF;
//	
//	IF NOT(cmdWritePowerOutput) AND NOT(WritePowerOutputACK) THEN
//	
//		IF prevPowerOutput <> powerOutputDINT THEN
//			cmdWritePowerOutput := TRUE;
//		END_IF;
//		prevPowerOutput := powerOutputDINT;
//	END_IF;
//
//	IF WritePowerOutputACK THEN
//		cmdWritePowerOutput := FALSE;
//	END_IF;
//	
END_PROGRAM
