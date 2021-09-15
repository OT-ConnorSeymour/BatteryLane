

PROGRAM _INIT
	prevPowerOutput := -1;
	

	RTACModuleOK := FALSE;
	RTACActInternalError := FALSE;
	RTACActContError := FALSE;
	RTACActOverloadError := FALSE;
	RTACActModusError := FALSE;
	RTACActSlvConError := FALSE;
	RTACActRefreshError := FALSE;
	RTACModSlaveState := 0;
	RTACModbusErrorLast := 0;
	RTACLastErrBlockNr := 0;
	RTACModbusSlaveDiag := FALSE;
	RTACModbusErrorCnt := 0;
	RTACModbusConErrorCnt := 0;
	RTACModbusPktRefreshTimoutCnt := 0;
	RTACPktPendPerSec:= 0;
	RTACModbusMeanResponseTime := 0;
	 
END_PROGRAM