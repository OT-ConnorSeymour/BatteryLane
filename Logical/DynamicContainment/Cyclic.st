
PROGRAM _CYCLIC

	IF DynamicContainmentEnabled THEN
		

		
		IF NOT(diPhase1LossGen) THEN	
			freqDev := filterFreq - GRID_FREQUENCY;
		ELSE
			freqDev := 0;
		END_IF;
		

			Table.InX:= freqDev;   (* freq deviation *)
			Table();          (* run table lookup *)
			powerRatio:= Table.Out; (* calculated % output *)
	
		
		
		powerOutputTmp :=  REAL_TO_INT(INT_TO_REAL(maxExpectedOutput) * powerRatio/100.00 + DCbaselineAdjustment);
		
		diff := expected - powerOutputTmp;
		
		error := (INT_TO_REAL(powerOutputTmp) / INT_TO_REAL(expected))*100 - 100;
	
		powerOutputDINT := REAL_TO_DINT(INT_TO_REAL(maxExpectedOutput) * powerRatio/100.00 + DCbaselineAdjustment);
		
		IF powerOutputDINT = 20000 THEN
			powerOutputDINT := 20200;
		END_IF;
		
		
		
		IF powerOutput = 0 THEN
			powerOutput := 1;
		END_IF;
		
	END_IF;
	
END_PROGRAM
