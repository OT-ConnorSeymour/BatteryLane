
PROGRAM _CYCLIC
	baseLCCounter();
	base1musec   := baseLCCounter.muscnt;
	base100musec := baseLCCounter.mus100cnt;
	base1msec    := baseLCCounter.mscnt;
	base100msec  := baseLCCounter.ms100cnt;
	base1sec     := baseLCCounter.seccnt;
	
	
	IF startSweepDown THEN
		out := sweepDown[ind];
		ind := ind + 1;
		IF ind > 3000 THEN
			cmdStopSweepDown := TRUE;
		END_IF;
		
	END_IF;
	
	
	
	IF cmdStartSweepDown THEN
		startSweepDown := TRUE;
		startSweepUp := FALSE;
		ind := 0;
		out := 50;
		cmdStartSweepDown := FALSE;
	END_IF;
	
	IF cmdStopSweepDown THEN
		startSweepDown := FALSE;
		ind := 0;
		out := 50;
		cmdStopSweepDown := FALSE;
	END_IF;
	
	IF startSweepUp THEN
		out := sweepUp[ind];
		ind := ind + 1;
		IF ind > 3000 THEN
			cmdStopSweepUp := TRUE;
		END_IF;
		
	END_IF;
	
	
	
	IF cmdStartSweepUp THEN
		startSweepDown := FALSE;
		startSweepUp := TRUE;
		ind := 0;
		out := 50;
		cmdStartSweepUp := FALSE;
	END_IF;
	
	IF cmdStopSweepUp THEN
		startSweepUp := FALSE;
		ind := 0;
		out := 50;
		cmdStopSweepUp := FALSE;
	END_IF;
	
	elapsedTime := UINT_TO_REAL(ind)/20;
	
	IF cmdStartStepTest THEN
		startSweepDown := FALSE;
		startSweepUp := FALSE;
		startStepTest := TRUE;
		startSustainLF := FALSE;
		startInd := base1sec;
		prevDiff := startInd;
		ind := 0;
		out := 50;
		cmdStartStepTest := FALSE;
	END_IF;
	
	IF cmdStopStepTest THEN
		startStepTest := FALSE;
		ind := 0;
		out := 50;
		cmdStopStepTest := FALSE;
	END_IF;
	
	
	IF startStepTest THEN
		
		out := stepTestFull[ind];
		diff := base1sec - startInd;
		
		IF prevDiff <> diff THEN
			ind := ind + 1;
			prevDiff := diff;
		END_IF;
		
		IF ind > 3359 THEN
//		IF ind > 60 THEN
			cmdStopStepTest := TRUE;
		END_IF;
		
	END_IF;
	
	IF cmdStartSustainLF THEN
		startSweepDown := FALSE;
		startSweepUp := FALSE;
		startStepTest := FALSE;
		startSustainLF := TRUE;
		startInd := base1sec;
		prevDiff := startInd;
		ind := 0;
		out := 50;
		cmdStartSustainLF := FALSE;
	END_IF;
	
	IF cmdStopSustainLF THEN
		startSustainLF := FALSE;
		ind := 0;
		out := 50;
		cmdStopSustainLF := FALSE;
	END_IF;
	
	IF startSustainLF THEN
		
		out := sustainLF[ind];
		diff := base1sec - startInd;
		
		IF prevDiff <> diff THEN
			ind := ind + 1;
			prevDiff := diff;
		END_IF;
		
		IF ind > 959 THEN
			//		IF ind > 60 THEN
			cmdStopSustainLF := TRUE;
		END_IF;
		
	END_IF;
	
	IF cmdStartSustainHF THEN
		startSweepDown := FALSE;
		startSweepUp := FALSE;
		startStepTest := FALSE;
		startSustainHF := TRUE;
		startInd := base1sec;
		prevDiff := startInd;
		ind := 0;
		out := 50;
		cmdStartSustainHF := FALSE;
	END_IF;
	
	IF cmdStopSustainHF THEN
		startSustainHF := FALSE;
		ind := 0;
		out := 50;
		cmdStopSustainHF := FALSE;
	END_IF;
	
	IF startSustainHF THEN
		
		out := sustainHF[ind];
		diff := base1sec - startInd;
		
		IF prevDiff <> diff THEN
			ind := ind + 1;
			prevDiff := diff;
		END_IF;
		
		IF ind > 959 THEN
			//		IF ind > 60 THEN
			cmdStopSustainHF := TRUE;
		END_IF;
		
	END_IF;
	
	IF testModeOn THEN
		injFrequency := REAL_TO_UINT(out*100);
	END_IF;
	
	
	 
END_PROGRAM
