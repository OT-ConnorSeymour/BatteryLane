
PROGRAM _CYCLIC
	
	IF testModeOn THEN
		
		IF injFrequency < MIN_INJ_FREQ THEN
			injFrequency := MIN_INJ_FREQ;
		END_IF;
		
		IF injFrequency > MAX_INJ_FREQ THEN
			injFrequency := MAX_INJ_FREQ;
		END_IF;
		
		frequency := injFrequency;
	ELSE
		frequency := aiFrequency;
	END_IF;
	
	MovingAverage.In:= UINT_TO_REAL(frequency);  

	MovingAverage();  
	// filterFreq := MovingAverage.Out/100;
	filterFreq := brmceil(MovingAverage.Out*10)/1000;
	filterFreqMA := brmceil(MovingAverage.Out*10)/1000;

	
	LowPassFilter.In:= UINT_TO_REAL(frequency);;  
	(* call function block *)
	LowPassFilter();  
	filterFreqLowPass:= LowPassFilter.Out/100;  
	LowPassFilter.Update:= 0;
	
	activePower := aiActivePower;
	
	powerOutputDINT := INT_TO_DINT(powerOutput);
	
END_PROGRAM
