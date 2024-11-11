//*****************************************************************************
// PROJECT SETTINGS
//*****************************************************************************

//-- Project name (string). Will be use for output filename
ProjName = "light";

//-- List of project modules to build (array). If empty, ProjName will be added
ProjModules = [ ProjName ];


//-- List of library modules to build (array)
LibModules = ["system", "bios", "vdp", "print", "input", "memory", 'scroll' ];
Machine = "2";
Target = "ROM_32K";

AddROMSignature = true;


//*******************************************************************************
// SIGNATURE SETTINGS
//*******************************************************************************

//-- Add application signature to binary data (boolean)
AppSignature = true;

//-- Application company (*). Can be 2 character string or 16-bits integer (0~65535)
AppCompany = "GL";

//-- Application ID. Can be 2 character string or 16-bits integer (0~65535)
AppID = "EX";



//*******************************************************************************
// MAKE SETTINGS
//*******************************************************************************

CompileComplexity = "Default";



//*****************************************************************************
// BUILD TOOL OPTION
//*****************************************************************************

//-- Activate verbose mode and get more build information (boolean)
Verbose = true;

//*******************************************************************************
// EMULATOR SETINGS
//*******************************************************************************
