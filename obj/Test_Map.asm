;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module Test_Map
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Visual_Map
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_Visual_Map:
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x0d	; 13
	.db #0x0f	; 15
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x22	; 34
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x23	; 35
	.area _INITIALIZER
	.area _CABS (ABS)
