.386
;.model flat,stdcall
INCLUDE Irvine32.inc
ExitProcess PROTO, dwExitCode:DWORD

DumpRegs PROTO
OPTION PROC:PRIVATE
lyrics PROTO
EXTERNDEF sum:DWORD