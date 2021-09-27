

PROGRAM _INIT

    (* 1D lookup table *)
	Table.NodeVectorX[0] := -0.5;					Table.FcnValues[0] := 100;   
	Table.NodeVectorX[1] := -0.2;					Table.FcnValues[1] := 5;
	Table.NodeVectorX[2] := -1*0.02;		Table.FcnValues[2] := 0.135; 
	Table.NodeVectorX[3] := -1*GRID_DEADAND+0.001;	Table.FcnValues[3] := 0;   
	Table.NodeVectorX[4] := GRID_DEADAND-0.001;		Table.FcnValues[4] := 0;
	//LF & HF
	Table.NodeVectorX[5] := 0.02;			Table.FcnValues[5] := -0.135;   
	Table.NodeVectorX[6] := 0.2;					Table.FcnValues[6] := -5;   
	Table.NodeVectorX[7] := 0.5;					Table.FcnValues[7] := -100;  
	
	//LF Only
	Table.NodeVectorX[5] := 0.02;			Table.FcnValues[5] := 0;   
	Table.NodeVectorX[6] := 0.2;					Table.FcnValues[6] := 0;   
	Table.NodeVectorX[7] := 0.5;					Table.FcnValues[7] := 0;   
	
	Table.NumberOfNodes:= 8;
	Table.Mode:= mtCONSTANT_END_VALUE;  
	Table.Enable:= 1; (* enable function block *)
	 

	
	DCbaselineAdjustment := 0;
	
	expected := 0;

	activePower := 0;
	

	
	
END_PROGRAM