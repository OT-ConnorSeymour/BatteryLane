
PROGRAM _CYCLIC
	(* Insert code here *)
	IF StaticFFREnabled THEN
		(* call function block *)
		
		TON_01( IN:=timerON, PT:=durationTimer );
		
		IF aiFrequency <= staticThreshold AND NOT(diPhase1LossGen) AND aiFrequency > 4900 THEN
			timerON := TRUE;
		END_IF
		

	
		
		IF timerON AND aiFrequency > 4900 THEN
			powerOutput := maxBatteryPower;
		ELSE
			powerOutput := idleExpectedOutput;
		END_IF

		(* assign results to variables *)
		output := TON_01.Q;
		elapsedTime := TON_01.ET;
	
		IF timerON AND output THEN
			timerON := FALSE;
		END_IF
		
		doACSwitch := timerON;
		diACSwitch := timerON;
	END_IF;
	
	

END_PROGRAM
