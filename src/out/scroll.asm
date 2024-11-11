;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module scroll
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _VDP_DisableSpritesFrom
	.globl _VDP_SetSpritePositionX
	.globl _VDP_SetSpriteExUniColor
	.globl _VDP_SetAdjustOffset
	.globl _VDP_FillVRAM_128K
	.globl _VDP_WriteVRAM_16K
	.globl _VDP_RegWriteBakMask
	.globl _VDP_RegWrite
	.globl _g_Scroll_Adjust
	.globl _g_Scroll_TileY
	.globl _g_Scroll_OffsetY
	.globl _g_Scroll_TileX
	.globl _g_Scroll_OffsetX
	.globl _g_Scroll_Map
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
	.globl _Scroll_Initialize
	.globl _Scroll_SetOffsetH
	.globl _Scroll_SetOffsetV
	.globl _Scroll_HBlankAdjust
	.globl _Scroll_Update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_g_Scroll_Map::
	.ds 2
_g_Scroll_OffsetX::
	.ds 2
_g_Scroll_TileX::
	.ds 1
_g_Scroll_OffsetY::
	.ds 2
_g_Scroll_TileY::
	.ds 1
_g_Scroll_Adjust::
	.ds 1
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
;F:\www\light\MSXgl\engine/src/scroll.c:50: u8 Scroll_Initialize(u16 map)
;	---------------------------------
; Function Scroll_Initialize
; ---------------------------------
_Scroll_Initialize::
	ld	(_g_Scroll_Map), hl
;F:\www\light\MSXgl\engine/src/scroll.c:55: g_Scroll_OffsetX = 0;
	ld	hl, #0x0000
	ld	(_g_Scroll_OffsetX), hl
;F:\www\light\MSXgl\engine/src/scroll.c:56: g_Scroll_TileX = 0xFF;
	ld	a, #0xff
	ld	(#_g_Scroll_TileX), a
;F:\www\light\MSXgl\engine/src/scroll.c:60: g_Scroll_OffsetY = 0;
	ld	(_g_Scroll_OffsetY), hl
;F:\www\light\MSXgl\engine/src/scroll.c:61: g_Scroll_TileY = 0xFF;
	ld	hl, #_g_Scroll_TileY
	ld	(hl), #0xff
;F:\www\light\MSXgl\engine/src/scroll.c:65: g_Scroll_Adjust = 0;
	ld	hl, #_g_Scroll_Adjust
	ld	(hl), #0x00
;F:\www\light\MSXgl\engine/src/vdp.h:734: inline void VDP_EnableSprite(u8 enable) { VDP_RegWriteBakMask(8, (u8)~R08_SPD, !enable ? R08_SPD : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xfd
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_VDP_RegWriteBakMask
;F:\www\light\MSXgl\engine/src/vdp.h:1078: inline void VDP_SetSpriteFlag(u8 flag) { VDP_RegWriteBakMask(1, (u8)~(R01_ST|R01_MAG), flag); }
	ld	a, #0x03
	push	af
	inc	sp
	ld	l, #0xfc
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
;F:\www\light\MSXgl\engine/src/scroll.c:74: VDP_FillVRAM(0xFF, g_SpritePatternLow + (SCROLL_MASK_PATTERN * 4), g_SpritePatternHigh, 8 * 4);
	ld	hl, #0x0020
	push	hl
	ld	a, (_g_SpritePatternHigh+0)
	push	af
	inc	sp
	ld	de, (_g_SpritePatternLow)
	ld	a, #0xff
	call	_VDP_FillVRAM_128K
;F:\www\light\MSXgl\engine/src/scroll.c:76: u8 y = (SCROLL_DST_Y) * 8 - 1;
;F:\www\light\MSXgl\engine/src/scroll.c:77: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	ld	bc, #0xf00
	ld	e, #0x00
00106$:
	ld	a, e
	sub	a, #0x05
	jr	NC, 00101$
;F:\www\light\MSXgl\engine/src/scroll.c:79: VDP_SetSpriteExUniColor(sprtId++, 0, y, 0, (u8)(SCROLL_MASK_COLOR + VDP_SPRITE_EC));
	ld	d, c
	inc	c
	push	bc
	push	de
	ld	hl, #0x8100
	push	hl
	push	bc
	inc	sp
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	call	_VDP_SetSpriteExUniColor
	pop	de
	pop	bc
;F:\www\light\MSXgl\engine/src/scroll.c:80: y += 32;
	ld	a, b
	add	a, #0x20
	ld	b, a
;F:\www\light\MSXgl\engine/src/scroll.c:77: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	inc	e
	jp	00106$
00101$:
;F:\www\light\MSXgl\engine/src/scroll.c:82: y = (SCROLL_DST_Y) * 8 - 1;
	ld	b, #0x0f
;F:\www\light\MSXgl\engine/src/scroll.c:83: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	ld	e, #0x00
00109$:
	ld	a, e
	sub	a, #0x05
	jr	NC, 00102$
;F:\www\light\MSXgl\engine/src/scroll.c:85: VDP_SetSpriteExUniColor(sprtId++, 0, y, 0, SCROLL_MASK_COLOR);
	ld	d, c
	inc	c
	push	bc
	push	de
	ld	hl, #0x100
	push	hl
	push	bc
	inc	sp
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	call	_VDP_SetSpriteExUniColor
	pop	de
	pop	bc
;F:\www\light\MSXgl\engine/src/scroll.c:86: y += 32;
	ld	a, b
	add	a, #0x20
	ld	b, a
;F:\www\light\MSXgl\engine/src/scroll.c:83: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	inc	e
	jp	00109$
00102$:
;F:\www\light\MSXgl\engine/src/scroll.c:88: VDP_DisableSpritesFrom(sprtId);
	push	bc
	ld	a, c
	call	_VDP_DisableSpritesFrom
	pop	bc
;F:\www\light\MSXgl\engine/src/scroll.c:91: return sprtId;
	ld	a, c
;F:\www\light\MSXgl\engine/src/scroll.c:92: }
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
;F:\www\light\MSXgl\engine/src/scroll.c:97: void Scroll_SetOffsetH(i8 offset)
;	---------------------------------
; Function Scroll_SetOffsetH
; ---------------------------------
_Scroll_SetOffsetH::
;	spillPairReg hl
;	spillPairReg hl
;F:\www\light\MSXgl\engine/src/scroll.c:102: g_Scroll_OffsetX += offset;
	ld	l, a
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	de, (_g_Scroll_OffsetX)
;F:\www\light\MSXgl\engine/src/scroll.c:99: if(offset > 0)
	xor	a, a
	sub	a, l
	jp	PO, 00126$
	xor	a, #0x80
00126$:
	jp	P, 00107$
;F:\www\light\MSXgl\engine/src/scroll.c:102: g_Scroll_OffsetX += offset;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;F:\www\light\MSXgl\engine/src/scroll.c:103: if(g_Scroll_OffsetX >= ((SCROLL_SRC_W) * 8))
	ld	(_g_Scroll_OffsetX), hl
	ld	a, h
	sub	a, #0x04
	ret	C
;F:\www\light\MSXgl\engine/src/scroll.c:104: g_Scroll_OffsetX += offset - ((SCROLL_SRC_W) * 8);
	ld	a,b
	add	a,#0xfc
	ld	b, a
	add	hl, bc
	ld	(_g_Scroll_OffsetX), hl
	ret
00107$:
;F:\www\light\MSXgl\engine/src/scroll.c:115: if(g_Scroll_OffsetX > -offset)
	xor	a, a
	sub	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	sbc	a, a
	sub	a, b
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	sbc	hl, de
	jr	NC, 00104$
;F:\www\light\MSXgl\engine/src/scroll.c:116: g_Scroll_OffsetX += offset;
	ld	l, c
	ld	h, b
	add	hl, de
	ld	(_g_Scroll_OffsetX), hl
	ret
00104$:
;F:\www\light\MSXgl\engine/src/scroll.c:118: g_Scroll_OffsetX += offset + ((SCROLL_SRC_W) * 8);
	ld	hl, #0x0400
	add	hl, bc
	add	hl, de
	ld	(_g_Scroll_OffsetX), hl
;F:\www\light\MSXgl\engine/src/scroll.c:126: }
	ret
;F:\www\light\MSXgl\engine/src/scroll.c:132: void Scroll_SetOffsetV(i8 offset)
;	---------------------------------
; Function Scroll_SetOffsetV
; ---------------------------------
_Scroll_SetOffsetV::
;F:\www\light\MSXgl\engine/src/scroll.c:136: if(g_Scroll_OffsetY + offset < ((SCROLL_SRC_H) - (SCROLL_DST_H)) * 8)
	ld	e, a
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	ld	hl, (_g_Scroll_OffsetY)
;F:\www\light\MSXgl\engine/src/scroll.c:134: if(offset > 0)
	xor	a, a
	sub	a, e
	jp	PO, 00127$
	xor	a, #0x80
00127$:
	jp	P, 00108$
;F:\www\light\MSXgl\engine/src/scroll.c:136: if(g_Scroll_OffsetY + offset < ((SCROLL_SRC_H) - (SCROLL_DST_H)) * 8)
	add	hl, bc
	ld	a, l
	sub	a, #0x20
	ld	a, h
	sbc	a, #0x00
	jr	NC, 00102$
;F:\www\light\MSXgl\engine/src/scroll.c:137: g_Scroll_OffsetY += offset;
	ld	(_g_Scroll_OffsetY), hl
	ret
00102$:
;F:\www\light\MSXgl\engine/src/scroll.c:139: g_Scroll_OffsetY = ((SCROLL_SRC_H) - (SCROLL_DST_H)) * 8;
	ld	hl, #0x0020
	ld	(_g_Scroll_OffsetY), hl
	ret
00108$:
;F:\www\light\MSXgl\engine/src/scroll.c:143: if(g_Scroll_OffsetY > -offset)
	xor	a, a
	sub	a, c
	ld	e, a
	sbc	a, a
	sub	a, b
	ld	d, a
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00105$
;F:\www\light\MSXgl\engine/src/scroll.c:144: g_Scroll_OffsetY += offset;
	add	hl, bc
	ld	(_g_Scroll_OffsetY), hl
	ret
00105$:
;F:\www\light\MSXgl\engine/src/scroll.c:146: g_Scroll_OffsetY = 0;
	ld	hl, #0x0000
	ld	(_g_Scroll_OffsetY), hl
;F:\www\light\MSXgl\engine/src/scroll.c:148: }
	ret
;F:\www\light\MSXgl\engine/src/scroll.c:153: void Scroll_HBlankAdjust(u8 adjust)
;	---------------------------------
; Function Scroll_HBlankAdjust
; ---------------------------------
_Scroll_HBlankAdjust::
;F:\www\light\MSXgl\engine/src/scroll.c:155: switch(adjust)
	ld	c, a
	or	a, a
	jr	Z, 00101$
	dec	c
	jr	Z, 00102$
	jp	00103$
;F:\www\light\MSXgl\engine/src/scroll.c:157: case 0:
00101$:
;F:\www\light\MSXgl\engine/src/vdp.h:759: inline void VDP_SetHBlankLine(u8 line) { VDP_RegWrite(19, line); }
	ld	l, #0x09
;	spillPairReg hl
;	spillPairReg hl
;F:\www\light\MSXgl\engine/src/scroll.c:159: break;
	ld	a, #0x13
	jp	_VDP_RegWrite
;F:\www\light\MSXgl\engine/src/scroll.c:160: case 1:
00102$:
;F:\www\light\MSXgl\engine/src/scroll.c:161: VDP_SetAdjustOffset(g_Scroll_Adjust);
	ld	a, (_g_Scroll_Adjust+0)
	call	_VDP_SetAdjustOffset
;F:\www\light\MSXgl\engine/src/vdp.h:759: inline void VDP_SetHBlankLine(u8 line) { VDP_RegWrite(19, line); }
	ld	l, #0xac
;	spillPairReg hl
;	spillPairReg hl
;F:\www\light\MSXgl\engine/src/scroll.c:163: break;
	ld	a, #0x13
	jp	_VDP_RegWrite
;F:\www\light\MSXgl\engine/src/scroll.c:164: default:
00103$:
;F:\www\light\MSXgl\engine/src/scroll.c:165: VDP_SetAdjustOffset(0);
	xor	a, a
;F:\www\light\MSXgl\engine/src/scroll.c:167: }
;F:\www\light\MSXgl\engine/src/scroll.c:168: }
	jp	_VDP_SetAdjustOffset
;F:\www\light\MSXgl\engine/src/scroll.c:173: void Scroll_Update()
;	---------------------------------
; Function Scroll_Update
; ---------------------------------
_Scroll_Update::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-15
	add	hl, sp
	ld	sp, hl
;F:\www\light\MSXgl\engine/src/scroll.c:177: u8  offsetStepX = g_Scroll_OffsetX & 0x7;
	ld	a, (_g_Scroll_OffsetX+0)
	and	a, #0x07
	ld	c, a
;F:\www\light\MSXgl\engine/src/scroll.c:178: u16 offsetTileX = g_Scroll_OffsetX >> 3;
	ld	a, (_g_Scroll_OffsetX+0)
	ld	-15 (ix), a
	ld	a, (_g_Scroll_OffsetX+1)
	ld	-14 (ix), a
	srl	-14 (ix)
	rr	-15 (ix)
	srl	-14 (ix)
	rr	-15 (ix)
	srl	-14 (ix)
	rr	-15 (ix)
;F:\www\light\MSXgl\engine/src/scroll.c:183: u8  offsetStepY = g_Scroll_OffsetY & 0x7;
	ld	a, (_g_Scroll_OffsetY+0)
	and	a, #0x07
	ld	b, a
;F:\www\light\MSXgl\engine/src/scroll.c:184: u16 offsetTileY = g_Scroll_OffsetY >> 3;
	ld	a, (_g_Scroll_OffsetY+0)
	ld	-3 (ix), a
	ld	a, (_g_Scroll_OffsetY+1)
	ld	-2 (ix), a
	srl	-2 (ix)
	rr	-3 (ix)
	srl	-2 (ix)
	rr	-3 (ix)
	srl	-2 (ix)
	rr	-3 (ix)
;F:\www\light\MSXgl\engine/src/scroll.c:191: g_Scroll_Adjust |= offsetStepX;
	ld	a, c
	ld	(#_g_Scroll_Adjust), a
;F:\www\light\MSXgl\engine/src/scroll.c:194: g_Scroll_Adjust |= offsetStepY << 4;
	ld	a, b
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	b, a
	ld	a, (_g_Scroll_Adjust+0)
	or	a, b
	ld	(_g_Scroll_Adjust+0), a
;F:\www\light\MSXgl\engine/src/scroll.c:205: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	ld	e, #0x00
	ld	-1 (ix), #0x00
00111$:
	ld	a, -1 (ix)
	sub	a, #0x05
	jr	NC, 00101$
;F:\www\light\MSXgl\engine/src/scroll.c:206: VDP_SetSpritePositionX(sprtId++, offsetStepX);
	ld	b, e
	inc	e
	push	bc
	push	de
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	call	_VDP_SetSpritePositionX
	pop	de
	pop	bc
;F:\www\light\MSXgl\engine/src/scroll.c:205: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	inc	-1 (ix)
	jp	00111$
00101$:
;F:\www\light\MSXgl\engine/src/scroll.c:207: offsetStepX += (((SCROLL_DST_W) - 1) * 8);
	ld	a, c
	add	a, #0xf8
	ld	c, a
;F:\www\light\MSXgl\engine/src/scroll.c:208: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	ld	b, #0x00
00114$:
	ld	a, b
	sub	a, #0x05
	jr	NC, 00102$
;F:\www\light\MSXgl\engine/src/scroll.c:209: VDP_SetSpritePositionX(sprtId++, offsetStepX);
	ld	d, e
	inc	e
	push	bc
	push	de
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	call	_VDP_SetSpritePositionX
	pop	de
	pop	bc
;F:\www\light\MSXgl\engine/src/scroll.c:208: for(u8 i = 0; i < (SCROLL_DST_H + 3) / 4; ++i)
	inc	b
	jp	00114$
00102$:
;F:\www\light\MSXgl\engine/src/scroll.c:214: if((offsetTileX == g_Scroll_TileX) && (offsetTileY == g_Scroll_TileY))
	ld	a, (_g_Scroll_TileX+0)
	ld	c, a
	ld	b, #0x00
	pop	hl
	push	hl
	cp	a, a
	sbc	hl, bc
	jr	NZ, 00104$
	ld	a, (_g_Scroll_TileY+0)
	ld	c, a
	ld	b, #0x00
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	cp	a, a
	sbc	hl, bc
	jp	Z,00119$
;F:\www\light\MSXgl\engine/src/scroll.c:215: return;
	jp	00104$
00104$:
;F:\www\light\MSXgl\engine/src/scroll.c:225: g_Scroll_TileX = offsetTileX;
	ld	a, -15 (ix)
	ld	(_g_Scroll_TileX+0), a
;F:\www\light\MSXgl\engine/src/scroll.c:232: g_Scroll_TileY = offsetTileY;
	ld	a, -3 (ix)
	ld	(_g_Scroll_TileY+0), a
;F:\www\light\MSXgl\engine/src/scroll.c:239: u16 src = (u16)g_Scroll_Map + ((SCROLL_SRC_Y) * (SCROLL_SRC_W)) + (TILE_Y * (SCROLL_SRC_W)) + TILE_X;
	ld	c, -3 (ix)
	xor	a, a
	rr	a
	ld	b, c
	rr	b
	rra
	ld	c, a
	ld	hl, (_g_Scroll_Map)
	add	hl, bc
	pop	de
	push	de
	add	hl, de
	ld	-13 (ix), l
	ld	-12 (ix), h
;F:\www\light\MSXgl\engine/src/scroll.c:240: u16 dst = g_ScreenLayoutLow + ((SCROLL_DST_Y) * SCROLL_SCREEN_W) + (SCROLL_DST_X);
	ld	hl, (_g_ScreenLayoutLow)
	ld	bc, #0x0040
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
;F:\www\light\MSXgl\engine/src/scroll.c:241: u16 sw = (SCROLL_SRC_W) - TILE_X;
	ld	a, #0x80
	sub	a, -15 (ix)
	ld	-9 (ix), a
	sbc	a, a
	sub	a, -14 (ix)
	ld	-8 (ix), a
;F:\www\light\MSXgl\engine/src/scroll.c:242: for(u8 y = 0; y < (SCROLL_DST_H); ++y)
	ld	a, #0x20
	sub	a, -9 (ix)
	ld	-7 (ix), a
	sbc	a, a
	sub	a, -8 (ix)
	ld	-6 (ix), a
	ld	-1 (ix), #0x00
00117$:
	ld	a, -1 (ix)
	sub	a, #0x14
	jp	NC, 00119$
;F:\www\light\MSXgl\engine/src/scroll.c:245: if(TILE_X + (SCROLL_DST_W) > (SCROLL_SRC_W))
	ld	a, -15 (ix)
	ld	-5 (ix), a
	ld	a, -14 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x20
	ld	-3 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-2 (ix), a
;F:\www\light\MSXgl\engine/src/scroll.c:247: VDP_WriteVRAM_16K((const u8*)src, dst, sw);
	ld	c, -13 (ix)
	ld	b, -12 (ix)
;F:\www\light\MSXgl\engine/src/scroll.c:245: if(TILE_X + (SCROLL_DST_W) > (SCROLL_SRC_W))
	ld	a, #0x80
	cp	a, -3 (ix)
	ld	a, #0x00
	sbc	a, -2 (ix)
	jr	NC, 00107$
;F:\www\light\MSXgl\engine/src/scroll.c:247: VDP_WriteVRAM_16K((const u8*)src, dst, sw);
	push	bc
	ld	l, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_16K
	pop	bc
;F:\www\light\MSXgl\engine/src/scroll.c:248: VDP_WriteVRAM_16K((const u8*)src - TILE_X, dst + sw, (SCROLL_DST_W) - sw);
	ld	a, -11 (ix)
	add	a, -9 (ix)
	ld	e, a
	ld	a, -10 (ix)
	adc	a, -8 (ix)
	ld	d, a
	ld	a, c
	sub	a, -15 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	sbc	a, -14 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, -7 (ix)
	ld	b, -6 (ix)
	push	bc
	call	_VDP_WriteVRAM_16K
	jp	00108$
00107$:
;F:\www\light\MSXgl\engine/src/scroll.c:252: VDP_WriteVRAM_16K((const u8*)src, dst, (SCROLL_DST_W));
	ld	hl, #0x0020
	push	hl
	ld	e, -11 (ix)
	ld	d, -10 (ix)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_16K
00108$:
;F:\www\light\MSXgl\engine/src/scroll.c:253: src += (SCROLL_SRC_W);
	ld	c, -13 (ix)
	ld	b, -12 (ix)
	ld	hl, #0x0080
	add	hl, bc
	ld	-13 (ix), l
	ld	-12 (ix), h
;F:\www\light\MSXgl\engine/src/scroll.c:254: dst += SCROLL_SCREEN_W;
	ld	c, -11 (ix)
	ld	b, -10 (ix)
	ld	hl, #0x0020
	add	hl, bc
	ld	-11 (ix), l
	ld	-10 (ix), h
;F:\www\light\MSXgl\engine/src/scroll.c:242: for(u8 y = 0; y < (SCROLL_DST_H); ++y)
	inc	-1 (ix)
	jp	00117$
00119$:
;F:\www\light\MSXgl\engine/src/scroll.c:256: }
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
