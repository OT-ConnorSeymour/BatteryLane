
PROGRAM _CYCLIC
	//To STATIC FFR
	IF cmdToStaticFFR THEN
		StaticFFREnabled := TRUE;
		DynamicContainmentEnabled := FALSE;
		ManualModeEnabled := FALSE;
		operationModeWrite := 2;
		controlState := 3;
		powerOutput := 0;
		cmdToStaticFFR := FALSE;
		powerOutputWriteBlock := FALSE;
	END_IF
	
	//To DC
	IF cmdToDynamicContainment THEN
		StaticFFREnabled := FALSE;
		DynamicContainmentEnabled := TRUE;
		ManualModeEnabled := FALSE;
		operationModeWrite := 2;
		controlState := 4;
		powerOutput := 0;
		cmdToDynamicContainment := FALSE;
		powerOutputWriteBlock := FALSE;
	END_IF
	
	//STATIC and DC OFF
	IF cmdToManual THEN
		StaticFFREnabled := FALSE;
		DynamicContainmentEnabled := FALSE;
		ManualModeEnabled := TRUE;
		operationModeWrite := 2;
		controlState := 2;
		powerOutputManual := 0;
		powerOutput := 0;
		cmdToManual := FALSE;
		powerOutputWriteBlock := FALSE;
		
	END_IF;
	
	//STATIC and DC OFF
	IF cmdToFluenceManual THEN
		StaticFFREnabled := FALSE;
		DynamicContainmentEnabled := FALSE;
		ManualModeEnabled := FALSE;
		operationModeWrite := 2;
		controlState := 2;
		powerOutputManual := 0;
		powerOutput := 0;
		cmdToFluenceManual := FALSE;
		powerOutputWriteBlock := TRUE;
		
	END_IF;
	
	//STATIC and DC OFF
	IF cmdToFFR THEN
		StaticFFREnabled := FALSE;
		DynamicContainmentEnabled := FALSE;
		ManualModeEnabled := FALSE;
		operationModeWrite := 28;
		controlState := 28;
		powerOutput := 0;
		cmdToFFR := FALSE;
		powerOutputWriteBlock := TRUE;
		
	END_IF;
	
	//STATIC and DC OFF
	IF cmdToIdle THEN
		StaticFFREnabled := FALSE;
		DynamicContainmentEnabled := FALSE;
		ManualModeEnabled := FALSE;
		operationModeWrite := 1;
		controlState := 1;
		powerOutput := 0;
		cmdToIdle := FALSE;
		powerOutputWriteBlock := TRUE;
		
	END_IF;
	
	IF prevRTACOperationMode <> RTACOperationMode THEN
		IF RTACOperationMode = 28 AND controlState <> 28 THEN
			cmdToFFR := TRUE;
		END_IF;
		
		IF RTACOperationMode = 2 AND controlState <> 4 THEN
			cmdToManual := TRUE;
		END_IF;
		
		IF RTACOperationMode = 1  AND controlState <> 1 THEN
			cmdToIdle := TRUE;
		END_IF;
		
		prevRTACOperationMode := RTACOperationMode;
	END_IF;
//		
//	prevOperationMode := operationModeWrite;
//		
//	IF OperationModeWriteACK THEN
//		cmdOperationModeWrite := FALSE;
//	END_IF;
	
	//Test Mode
	IF cmdTurnTestModeOn THEN
		testModeOn := TRUE;
		injFrequency := 5000;
		cmdTurnTestModeOn := FALSE;
	END_IF;
	
	IF cmdTurnTestModeOff THEN
		testModeOn := FALSE;
		cmdTurnTestModeOff := FALSE;
	END_IF;
	
	
	
	
	 
END_PROGRAM
