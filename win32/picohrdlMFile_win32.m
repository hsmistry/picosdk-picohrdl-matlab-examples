function [methodinfo,structs,enuminfo,ThunkLibName]=picohrdlMFile_win32
%PICOHRDLMFILE_WIN32 Create structures to define interfaces found in 'HRDL'.

%This function was generated by loadlibrary.m parser version  on Mon Jul  2 14:44:04 2018
%perl options:'HRDL.i -outfile=picohrdlMFile_win32.m'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival);
ThunkLibName=[];
% int16_t  _stdcall HRDLOpenUnit ( void ); 
fcns.name{fcnNum}='HRDLOpenUnit'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLOpenUnitAsync ( void ); 
fcns.name{fcnNum}='HRDLOpenUnitAsync'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLOpenUnitProgress ( int16_t * handle , int16_t * progress ); 
fcns.name{fcnNum}='HRDLOpenUnitProgress'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16Ptr', 'int16Ptr'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLGetUnitInfo ( int16_t handle , char * string , int16_t stringLength , int16_t info ); 
fcns.name{fcnNum}='HRDLGetUnitInfo'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'cstring', 'int16', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLCloseUnit ( int16_t handle ); 
fcns.name{fcnNum}='HRDLCloseUnit'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLGetMinMaxAdcCounts ( int16_t handle , int32_t * minAdc , int32_t * maxAdc , int16_t channel ); 
fcns.name{fcnNum}='HRDLGetMinMaxAdcCounts'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int32Ptr', 'int32Ptr', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLSetAnalogInChannel ( int16_t handle , int16_t channel , int16_t enabled , int16_t range , int16_t singleEnded ); 
fcns.name{fcnNum}='HRDLSetAnalogInChannel'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int16', 'int16', 'int16', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLSetDigitalIOChannel ( int16_t handle , int16_t directionOut , int16_t digitalOutPinState , int16_t enabledDigitalIn ); 
fcns.name{fcnNum}='HRDLSetDigitalIOChannel'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int16', 'int16', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLSetInterval ( int16_t handle , int32_t sampleInterval_ms , int16_t conversionTime ); 
fcns.name{fcnNum}='HRDLSetInterval'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int32', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLRun ( int16_t handle , int32_t nValues , int16_t method ); 
fcns.name{fcnNum}='HRDLRun'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int32', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLReady ( int16_t handle ); 
fcns.name{fcnNum}='HRDLReady'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
% void  _stdcall HRDLStop ( int16_t handle ); 
fcns.name{fcnNum}='HRDLStop'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}=[]; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
% int32_t  _stdcall HRDLGetValues ( int16_t handle , int32_t * values , int16_t * overflow , int32_t no_of_values ); 
fcns.name{fcnNum}='HRDLGetValues'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int16', 'int32Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
% int32_t  _stdcall HRDLGetTimesAndValues ( int16_t handle , int32_t * times , int32_t * values , int16_t * overflow , int32_t noOfValues ); 
fcns.name{fcnNum}='HRDLGetTimesAndValues'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int32'; fcns.RHS{fcnNum}={'int16', 'int32Ptr', 'int32Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLGetSingleValue ( int16_t handle , int16_t channel , int16_t range , int16_t conversionTime , int16_t singleEnded , int16_t * overflow , int32_t * value ); 
fcns.name{fcnNum}='HRDLGetSingleValue'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int16', 'int16', 'int16', 'int16', 'int16Ptr', 'int32Ptr'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLCollectSingleValueAsync ( int16_t handle , int16_t channel , int16_t range , int16_t conversionTime , int16_t singleEnded ); 
fcns.name{fcnNum}='HRDLCollectSingleValueAsync'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int16', 'int16', 'int16', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLGetSingleValueAsync ( int16_t handle , int32_t * value , int16_t * overflow ); 
fcns.name{fcnNum}='HRDLGetSingleValueAsync'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int32Ptr', 'int16Ptr'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLSetMains ( int16_t handle , int16_t sixtyHertz ); 
fcns.name{fcnNum}='HRDLSetMains'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int16'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLGetNumberOfEnabledChannels ( int16_t handle , int16_t * nEnabledChannels ); 
fcns.name{fcnNum}='HRDLGetNumberOfEnabledChannels'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16', 'int16Ptr'};fcnNum=fcnNum+1;
% int16_t  _stdcall HRDLAcknowledge ( int16_t handle ); 
fcns.name{fcnNum}='HRDLAcknowledge'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'int16'};fcnNum=fcnNum+1;
enuminfo.enHRDLConversionTime=struct('HRDL_60MS',0,'HRDL_100MS',1,'HRDL_180MS',2,'HRDL_340MS',3,'HRDL_660MS',4,'HRDL_MAX_CONVERSION_TIMES',5);
enuminfo.enHRDLErrorCode=struct('HRDL_OK',0,'HRDL_KERNEL_DRIVER',1,'HRDL_NOT_FOUND',2,'HRDL_CONFIG_FAIL',3,'HRDL_ERROR_OS_NOT_SUPPORTED',4,'HRDL_MAX_DEVICES',5);
enuminfo.enHRDLInputs=struct('HRDL_DIGITAL_CHANNELS',0,'HRDL_ANALOG_IN_CHANNEL_1',1,'HRDL_ANALOG_IN_CHANNEL_2',2,'HRDL_ANALOG_IN_CHANNEL_3',3,'HRDL_ANALOG_IN_CHANNEL_4',4,'HRDL_ANALOG_IN_CHANNEL_5',5,'HRDL_ANALOG_IN_CHANNEL_6',6,'HRDL_ANALOG_IN_CHANNEL_7',7,'HRDL_ANALOG_IN_CHANNEL_8',8,'HRDL_ANALOG_IN_CHANNEL_9',9,'HRDL_ANALOG_IN_CHANNEL_10',10,'HRDL_ANALOG_IN_CHANNEL_11',11,'HRDL_ANALOG_IN_CHANNEL_12',12,'HRDL_ANALOG_IN_CHANNEL_13',13,'HRDL_ANALOG_IN_CHANNEL_14',14,'HRDL_ANALOG_IN_CHANNEL_15',15,'HRDL_ANALOG_IN_CHANNEL_16',16,'HRDL_MAX_ANALOG_CHANNELS',16);
enuminfo.enBlockMethod=struct('HRDL_BM_BLOCK',0,'HRDL_BM_WINDOW',1,'HRDL_BM_STREAM',2);
enuminfo.enHRDLOpenProgress=struct('HRDL_OPEN_PROGRESS_FAIL',-1,'HRDL_OPEN_PROGRESS_PENDING',0,'HRDL_OPEN_PROGRESS_COMPLETE',1);
enuminfo.enSettingsError=struct('SE_CONVERSION_TIME_OUT_OF_RANGE',0,'SE_SAMPLEINTERVAL_OUT_OF_RANGE',1,'SE_CONVERSION_TIME_TOO_SLOW',2,'SE_CHANNEL_NOT_AVAILABLE',3,'SE_INVALID_CHANNEL',4,'SE_INVALID_VOLTAGE_RANGE',5,'SE_INVALID_PARAMETER',6,'SE_CONVERSION_IN_PROGRESS',7,'SE_COMMUNICATION_FAILED',8,'SE_OK',9,'SE_MAX',9);
enuminfo.enHRDLRange=struct('HRDL_2500_MV',0,'HRDL_1250_MV',1,'HRDL_625_MV',2,'HRDL_313_MV',3,'HRDL_156_MV',4,'HRDL_78_MV',5,'HRDL_39_MV',6,'HRDL_MAX_RANGES',7);
enuminfo.enHRDLDigitalIoChannel=struct('HRDL_DIGITAL_IO_CHANNEL_1',1,'HRDL_DIGITAL_IO_CHANNEL_2',2,'HRDL_DIGITAL_IO_CHANNEL_3',4,'HRDL_DIGITAL_IO_CHANNEL_4',8,'HRDL_MAX_DIGITAL_CHANNELS',4);
enuminfo.enHRDLInfo=struct('HRDL_DRIVER_VERSION',0,'HRDL_USB_VERSION',1,'HRDL_HARDWARE_VERSION',2,'HRDL_VARIANT_INFO',3,'HRDL_BATCH_AND_SERIAL',4,'HRDL_CAL_DATE',5,'HRDL_KERNEL_DRIVER_VERSION',6,'HRDL_ERROR',7,'HRDL_SETTINGS',8);
methodinfo=fcns;