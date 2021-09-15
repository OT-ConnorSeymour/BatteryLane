
PROGRAM _CYCLIC
	IF ManualModeEnabled THEN
		powerOutput := powerOutputManual;
		
		IF chargeToSoC THEN
			IF RTACSoC < chargeToSoCTarget THEN
				powerOutput := chargeToSoCPowerTarget;
			ELSE
				powerOutput := 0;	
			END_IF;
		END_IF;
	END_IF;

	
	
	 
END_PROGRAM
