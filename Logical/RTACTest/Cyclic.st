
PROGRAM _CYCLIC

	IF RTACTest THEN
		IF rampTest THEN
			powerOutput := powerOutput +1;
			
			IF powerOutput > 1000 THEN
				powerOutput := -1000;
				END_IF;
		END_IF;
	END_IF;
	

	 
END_PROGRAM
