
PROGRAM _CYCLIC
	
	IF NOT(cmdWritePowerOutput) AND NOT(WritePowerOutputACK) THEN
	
		IF prevPowerOutput <> powerOutputDINT THEN
			cmdWritePowerOutput := TRUE;
		END_IF;
		prevPowerOutput := powerOutputDINT;
	END_IF;

	IF WritePowerOutputACK THEN
		cmdWritePowerOutput := FALSE;
	END_IF;
	
	
	IF NOT(cmdOperationModeWrite) AND NOT(OperationModeWriteACK) THEN
		IF prevOperationMode <> operationModeWrite THEN
			cmdOperationModeWrite := TRUE;
		END_IF;	
		prevOperationMode := operationModeWrite;
	END_IF;
	
	IF OperationModeWriteACK THEN
		cmdOperationModeWrite := FALSE;
	END_IF;
	
	RTACModbusSlaveDiag := ModbusSlaveDiagOn;
	 
END_PROGRAM
