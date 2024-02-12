;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _init_gfx
	.globl _printMap
	.globl _check_map
	.globl _performantdelay
	.globl _puts
	.globl _printf
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _joy
	.globl _map_collision
	.globl _player_metasprites
	.globl _player_down
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_joy::
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
;src\main.c:9: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
;src\main.c:12: for (ii = 0; ii < numloops; ii++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;src\main.c:14: wait_vbl_done();
	call	_wait_vbl_done
;src\main.c:12: for (ii = 0; ii < numloops; ii++)
	inc	b
;src\main.c:16: }
	jr	00103$
;src\main.c:42: char check_map(uint8_t x_pos, uint8_t y_pos)
;	---------------------------------
; Function check_map
; ---------------------------------
_check_map::
	ld	c, a
;src\main.c:44: return map_collision[y_pos][x_pos];
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #_map_collision
	add	hl, de
	ld	e, c
	ld	d, #0x00
	add	hl, de
	ld	a, (hl)
;src\main.c:45: }
	ret
_player_down:
	.db #0xf8	; -8
	.db #0xf8	; -8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x08	;  8
	.db #0xf8	; -8
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x80	; -128
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
_player_metasprites:
	.dw _player_down
_map_collision:
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db 0x00
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db #0x31	; 49	'1'
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
;src\main.c:47: void printMap() {
;	---------------------------------
; Function printMap
; ---------------------------------
_printMap::
;src\main.c:48: for (uint8_t y = 0; y < 11; y++)
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x0b
	ret	NC
;src\main.c:50: for (uint8_t x = 0; x < 10; x++)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	a, l
	add	a, #<(_map_collision)
	ld	e, a
	ld	a, h
	adc	a, #>(_map_collision)
	ld	d, a
	ld	b, #0x00
00104$:
	ld	a, b
	sub	a, #0x0a
	jr	NC, 00101$
;src\main.c:52: printf("%c ", map_collision[y][x]);
	ld	l, b
	ld	h, #0x00
	add	hl, de
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	push	de
	push	hl
	ld	hl, #___str_0
	push	hl
	call	_printf
	add	sp, #4
	pop	de
	pop	bc
;src\main.c:50: for (uint8_t x = 0; x < 10; x++)
	inc	b
	jr	00104$
00101$:
;src\main.c:54: printf("\n\n");
	push	bc
	ld	de, #___str_2
	call	_puts
	pop	bc
;src\main.c:48: for (uint8_t y = 0; y < 11; y++)
	inc	c
;src\main.c:56: }
	jr	00107$
___str_0:
	.ascii "%c "
	.db 0x00
___str_2:
	.db 0x0a
	.db 0x00
;src\main.c:58: void init_gfx() {
;	---------------------------------
; Function init_gfx
; ---------------------------------
_init_gfx::
;src\main.c:60: set_bkg_data(0, 54u, TileLabel);
	ld	de, #_TileLabel
	push	de
	ld	hl, #0x3600
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\main.c:61: set_bkg_tiles(0, 0, 20u, 18u, Visual_Map);
	ld	de, #_Visual_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;src\main.c:64: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src\main.c:67: set_sprite_data(0, 45u, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x2d00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\main.c:68: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src\main.c:69: }
	ret
;src\main.c:73: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-7
;src\main.c:76: uint8_t local_x = 4; // LOCAL LOCATION ON MAP
	ldhl	sp,	#1
;src\main.c:77: uint8_t local_y = 4;
	ld	a, #0x04
	ld	(hl+), a
	ld	(hl), #0x04
;src\main.c:78: uint8_t sprite_x = 80; // SPRITE LOCATION ON SCREEN
	ldhl	sp,	#6
	ld	(hl), #0x50
;src\main.c:79: uint8_t sprite_y = 88;
	ldhl	sp,	#3
;src\main.c:81: enum player_state state = idle;
	ld	a, #0x58
	ld	(hl+), a
	ld	(hl), #0x00
;src\main.c:82: init_gfx();
	call	_init_gfx
;src\main.c:83: volatile uint8_t timer = 0;
	ldhl	sp,	#0
	ld	(hl), #0x00
;src\main.c:84: move_metasprite(player_metasprites[0], 0, 0, 80, 88);
	ld	hl, #_player_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ld	hl, #0x5850
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
;src\main.c:87: while(1) {
	ldhl	sp,	#5
	ld	(hl), #0x00
00129$:
;src\main.c:88: joy = joypad();
	call	_joypad
	ld	(#_joy),a
;src\main.c:89: timer++;
	ldhl	sp,	#0
	inc	(hl)
	ld	a, (hl)
;src\main.c:90: if (state == idle)
	ldhl	sp,	#4
	ld	a, (hl)
	or	a, a
	jp	NZ, 00126$
;src\main.c:93: if (joy & J_UP)
	ld	a, (#_joy)
;src\main.c:95: if (check_map(local_x, local_y - 1) == '0')
	ldhl	sp,	#2
	ld	c, (hl)
;src\main.c:98: sprite_y -= 16;
	inc	hl
	ld	b, (hl)
;src\main.c:93: if (joy & J_UP)
	bit	2, a
	jr	Z, 00118$
;src\main.c:95: if (check_map(local_x, local_y - 1) == '0')
	dec	c
	push	bc
	ld	e, c
	ldhl	sp,	#3
	ld	a, (hl)
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00127$
;src\main.c:97: local_y -= 1;
	ldhl	sp,	#2
;src\main.c:98: sprite_y -= 16;
	ld	a, c
	ld	(hl+), a
	ld	a, b
	add	a, #0xf0
	ld	(hl), a
;src\main.c:99: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
	ld	hl, #_player_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:100: performantdelay(30);
	ld	a, #0x1e
	call	_performantdelay
	jp	00127$
00118$:
;src\main.c:103: else if (joy & J_DOWN)
	bit	3, a
	jr	Z, 00115$
;src\main.c:105: if (check_map(local_x, local_y + 1) == '0')
	inc	c
	push	bc
	ld	e, c
	ldhl	sp,	#3
	ld	a, (hl)
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00127$
;src\main.c:107: local_y += 1;
	ldhl	sp,	#2
;src\main.c:108: sprite_y += 16;
	ld	a, c
	ld	(hl+), a
	ld	a, b
	add	a, #0x10
	ld	(hl), a
;src\main.c:109: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
	ld	hl, #_player_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:110: performantdelay(30);
	ld	a, #0x1e
	call	_performantdelay
	jp	00127$
00115$:
;src\main.c:115: if (check_map(local_x - 1, local_y) == '0')
	ldhl	sp,	#1
	ld	c, (hl)
;src\main.c:118: sprite_x -= 16;
	ldhl	sp,	#6
	ld	b, (hl)
;src\main.c:113: else if (joy & J_LEFT)
	bit	1, a
	jr	Z, 00112$
;src\main.c:115: if (check_map(local_x - 1, local_y) == '0')
	dec	c
	push	bc
	ldhl	sp,	#4
	ld	e, (hl)
	ld	a, c
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00127$
;src\main.c:117: local_x -= 1;
	ldhl	sp,	#1
	ld	(hl), c
;src\main.c:118: sprite_x -= 16;
	ld	a, b
	add	a, #0xf0
	ldhl	sp,	#6
	ld	(hl), a
;src\main.c:119: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
	ld	hl, #_player_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:120: performantdelay(30);
	ld	a, #0x1e
	call	_performantdelay
	jr	00127$
00112$:
;src\main.c:123: else if (joy  & J_RIGHT)
	rrca
	jr	NC, 00127$
;src\main.c:125: if (check_map(local_x + 1, local_y) == '0')
	inc	c
	push	bc
	ldhl	sp,	#4
	ld	e, (hl)
	ld	a, c
	call	_check_map
	pop	bc
	sub	a, #0x30
	jr	NZ, 00127$
;src\main.c:127: local_x += 1;
	ldhl	sp,	#1
	ld	(hl), c
;src\main.c:128: goal_x = sprite_x + 16;
	ld	a, b
	add	a, #0x10
	ldhl	sp,	#5
;src\main.c:129: state = right;
	ld	(hl-), a
	ld	(hl), #0x02
	jr	00127$
00126$:
;src\main.c:135: else if (state == right)
	ldhl	sp,	#4
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00127$
;src\main.c:137: if (sprite_x < goal_x)
	ldhl	sp,	#6
	ld	a, (hl-)
	sub	a, (hl)
	jr	NC, 00121$
;src\main.c:139: sprite_x++;
	inc	hl
	inc	(hl)
;src\main.c:140: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
	ld	hl, #_player_metasprites
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl)
	ld	hl, #___current_metasprite
	ld	(hl), c
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#7
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:141: performantdelay(10);
	ld	a, #0x0a
	call	_performantdelay
	jr	00127$
00121$:
;src\main.c:145: state = idle;
	ldhl	sp,	#4
	ld	(hl), #0x00
00127$:
;src\main.c:149: wait_vbl_done();
	call	_wait_vbl_done
	jp	00129$
;src\main.c:151: }
	add	sp, #7
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
