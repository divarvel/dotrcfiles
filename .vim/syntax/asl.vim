" Vim syntax file
" Language:	ASL
" Maintainer:	Sebastian Witt <se.witt@gmx.net>
" Last Change:	2006 Aug 30


" Read the C syntax to start with
runtime! syntax/c.vim
unlet b:current_syntax


" ASL compiler controls
syn keyword aslCompiler     External Include
" ASL table managment
syn keyword aslTable        DefinitionBlock Load LoadTable Unload
" ASL object creation
syn keyword aslObjectC      Alias Buffer Device Function Method Name Package PowerResource
                          \ Processor Scope ThermalZone
" ASL operation region
syn keyword aslOpRegion     BankField DataTableRegion Field IndexField OperationRegion
" ASL buffer fields
syn keyword aslBufferFields CreateBitField CreateByteField CreateDWordField CreateField
                          \ CreateQWordField CreateWordField
" ASL synchronization
syn keyword aslSync         Acquire Event Mutex Notify Release Reset Signal Wait
" ASL object reference
syn keyword aslObjRef       CondRefOf DerefOf RefOf
" ASL integer arithmetic
syn keyword aslArith        Add And Decrement Divide FindSetLeftBit FindSetRightBit Increment
                          \ Mod Multiply NAnd NOr Not Or ShiftLeft ShiftRight Substract Xor
" ASL logical operators
syn keyword aslLOps         LAnd LEqual LGreater LGreaterEqual LLess LLessEqual LNot LNotEqual LOr
" ASL method control
syn keyword aslMethControl  Break BreakPoint Case Continue Default Else ElseIf Fatal If NoOp Return
                          \ Sleep Stall Switch While
" ASL data type conversion
syn keyword aslDataConv     Concatenate CopyObject Debug EISAID FromBCD Index Match Mid ObjectType
                          \ SizeOf Store Timer ToBCD ToBuffer ToDecimalString ToHexString ToInteger
                          \ ToString ToUUID Unicode
" ASL resource macros
syn keyword aslResMacros    ConcatenateResourceTemplate DMA DWordIo DWordMemory DWordSpace
                          \ EndDependentFn ExntendedIO ExtendedMemory ExtendedSpace FixedIO
                          \ Interrupt IO IRQ IRQNoFlags Memory24 Memory32 Memory32Fixed
                          \ QWordIO QWordMemory QWordSpace Register StartDependentFn
                          \ StartDependentFnNoPri VendorLong VendorShort WordBusNumber
                          \ WordIO WordSpace
" ASL Constants
syn keyword aslConstants    One Ones Revision Zero
" ASL control method objects
syn keyword aslCMObjects    Arg? Local?


" ASL object constants
syn keyword aslDIObjects    _ADR _CID _DDN _HID _MLS _PLD _STR _SUN _UID
syn keyword aslDCObjects    _CRS _DIS _DMA _FIX _GSB _HPP _HPX _MAT _OSC _PRS _PRT _PXM _SLI _SRS
syn keyword aslDSObjects    _EDL _EJD _Ejx _LCK _OST _RMV _STA
syn keyword aslOCObjects    _INI _DCK _BDN _REG _BBN _SEG _GLK


" Default highlighting
command -nargs=+ HiLink hi def link <args>
  HiLink aslCompiler     PreProc
  HiLink aslTable        StorageClass
  HiLink aslObjectC      Function
  HiLink aslOpRegion     Function
  HiLink aslBufferFields Structure
  HiLink aslSync         Special
  HiLink aslObjRef       Statement
  HiLink aslArith        Operator
  HiLink aslLOps         Operator
  HiLink aslMethControl  Conditional
  HiLink aslDataConv     Function
  HiLink aslResMacros    Structure
  HiLink aslConstants    Constant
  HiLink aslDIObjects    Constant
  HiLink aslDCObjects    Constant
  HiLink aslDSObjects    Constant
  HiLink aslOCObjects    Constant
delcommand HiLink

let b:current_syntax = "asl"

" vim: ts=4
