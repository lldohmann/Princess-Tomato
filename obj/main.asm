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
	add	sp, #-8
;src\main.c:76: uint8_t local_x = 4; // LOCAL LOCATION ON MAP
	ldhl	sp,	#1
;src\main.c:77: uint8_t local_y = 4;
	ld	a, #0x04
	ld	(hl+), a
	ld	(hl), #0x04
;src\main.c:78: uint8_t sprite_x = 80; // SPRITE LOCATION ON SCREEN
	ldhl	sp,	#6
;src\main.c:79: uint8_t sprite_y = 88;
	ld	a, #0x50
	ld	(hl+), a
	ld	(hl), #0x58
;src\main.c:81: enum player_state state = idle;
	ldhl	sp,	#3
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
	ldhl	sp,	#4
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
00147$:
;src\main.c:88: joy = joypad();
	call	_joypad
	ld	(#_joy),a
;src\main.c:89: timer++;
	ldhl	sp,	#0
	inc	(hl)
	ld	a, (hl)
;src\main.c:90: if (state == idle)
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
	jp	NZ, 00144$
;src\main.c:93: if (joy & J_UP)
	ld	a, (#_joy)
;src\main.c:95: if (check_map(local_x, local_y - 1) == '0')
	ldhl	sp,	#2
	ld	b, (hl)
;src\main.c:98: goal_y = sprite_y - 16;
	ldhl	sp,	#7
	ld	c, (hl)
;src\main.c:93: if (joy & J_UP)
	bit	2, a
	jr	Z, 00118$
;src\main.c:95: if (check_map(local_x, local_y - 1) == '0')
	dec	b
	push	bc
	ld	e, b
	ldhl	sp,	#3
	ld	a, (hl)
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00145$
;src\main.c:97: local_y -= 1;
	ldhl	sp,	#2
	ld	(hl), b
;src\main.c:98: goal_y = sprite_y - 16;
	ld	a, c
	add	a, #0xf0
	ldhl	sp,	#5
;src\main.c:99: state = up;
	ld	(hl-), a
	dec	hl
	ld	(hl), #0x03
	jp	00145$
00118$:
;src\main.c:104: else if (joy & J_DOWN)
	bit	3, a
	jr	Z, 00115$
;src\main.c:106: if (check_map(local_x, local_y + 1) == '0')
	inc	b
	push	bc
	ld	e, b
	ldhl	sp,	#3
	ld	a, (hl)
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00145$
;src\main.c:108: local_y += 1;
	ldhl	sp,	#2
	ld	(hl), b
;src\main.c:109: goal_y = sprite_y + 16;
	ld	a, c
	add	a, #0x10
	ldhl	sp,	#5
;src\main.c:110: state = down;
	ld	(hl-), a
	dec	hl
	ld	(hl), #0x04
	jp	00145$
00115$:
;src\main.c:117: if (check_map(local_x - 1, local_y) == '0')
	ldhl	sp,	#1
	ld	b, (hl)
;src\main.c:120: goal_x = sprite_x - 16;
	ldhl	sp,	#6
	ld	c, (hl)
;src\main.c:115: else if (joy & J_LEFT)
	bit	1, a
	jr	Z, 00112$
;src\main.c:117: if (check_map(local_x - 1, local_y) == '0')
	dec	b
	push	bc
	ldhl	sp,	#4
	ld	e, (hl)
	ld	a, b
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00145$
;src\main.c:119: local_x -= 1;
	ldhl	sp,	#1
	ld	(hl), b
;src\main.c:120: goal_x = sprite_x - 16;
	ld	a, c
	add	a, #0xf0
	ldhl	sp,	#4
;src\main.c:121: state = left;
	ld	(hl-), a
	ld	(hl), #0x01
	jp	00145$
00112$:
;src\main.c:126: else if (joy  & J_RIGHT)
	rrca
	jp	NC,00145$
;src\main.c:128: if (check_map(local_x + 1, local_y) == '0')
	inc	b
	push	bc
	ldhl	sp,	#4
	ld	e, (hl)
	ld	a, b
	call	_check_map
	pop	bc
	sub	a, #0x30
	jp	NZ,00145$
;src\main.c:130: local_x += 1;
	ldhl	sp,	#1
	ld	(hl), b
;src\main.c:131: goal_x = sprite_x + 16;
	ld	a, c
	add	a, #0x10
	ldhl	sp,	#4
;src\main.c:132: state = right;
	ld	(hl-), a
	ld	(hl), #0x02
	jp	00145$
00144$:
;src\main.c:139: else if (state == right) // switch(state)
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00141$
;src\main.c:141: if (sprite_x < goal_x)
	ldhl	sp,	#6
	ld	a, (hl-)
	dec	hl
	sub	a, (hl)
	jr	NC, 00121$
;src\main.c:143: sprite_x++;
	inc	hl
	inc	hl
	inc	(hl)
;src\main.c:144: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
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
	ldhl	sp,	#7
	ld	a, (hl-)
	push	af
	inc	sp
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:145: performantdelay(5); // speed variable magic number
	ld	a, #0x05
	call	_performantdelay
	jp	00145$
00121$:
;src\main.c:149: state = idle;
	ldhl	sp,	#3
	ld	(hl), #0x00
	jp	00145$
00141$:
;src\main.c:152: else if (state == left)
	ldhl	sp,	#3
	ld	a, (hl)
	dec	a
	jr	NZ, 00138$
;src\main.c:154: if (sprite_x > goal_x)
	ldhl	sp,	#4
	ld	a, (hl+)
	inc	hl
	sub	a, (hl)
	jr	NC, 00124$
;src\main.c:156: sprite_x--;
	dec	(hl)
;src\main.c:157: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
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
	ldhl	sp,	#7
	ld	a, (hl-)
	push	af
	inc	sp
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:158: performantdelay(5); // speed variable magic number
	ld	a, #0x05
	call	_performantdelay
	jp	00145$
00124$:
;src\main.c:162: state = idle;
	ldhl	sp,	#3
	ld	(hl), #0x00
	jp	00145$
00138$:
;src\main.c:165: else if (state == down)
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00135$
;src\main.c:167: if(sprite_y < goal_y)
	ldhl	sp,	#7
	ld	a, (hl-)
	dec	hl
	sub	a, (hl)
	jr	NC, 00127$
;src\main.c:169: sprite_y++;
	inc	hl
	inc	hl
	inc	(hl)
;src\main.c:170: move_metasprite_hvflip(player_metasprites[0], 0, 0, sprite_x, sprite_y);
	ld	hl, #_player_metasprites
	ld	a, (hl+)
	ld	b, a
	ld	a, (hl)
	ldhl	sp,	#7
	ld	c, (hl)
	dec	hl
	ld	e, (hl)
;C:/gbdk/include/gb/metasprites.h:228: __current_metasprite = metasprite;
	ld	hl, #___current_metasprite
	ld	(hl), b
	inc	hl
	ld	(hl), a
;C:/gbdk/include/gb/metasprites.h:229: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:230: return __move_metasprite_hvflip(base_sprite, x - 8, y - ((LCDC_REG & 0x04U) ? 16 : 8));
	ldh	a, (_LCDC_REG + 0)
	bit	2, a
	jr	Z, 00156$
	ld	hl, #0x0010
	jr	00157$
00156$:
	ld	hl, #0x0008
00157$:
	ld	a, c
	sub	a, l
	ld	b, a
	ld	a, e
	add	a, #0xf8
	push	bc
	inc	sp
	ld	h, a
	ld	l, #0x00
	push	hl
	call	___move_metasprite_hvflip
	add	sp, #3
;src\main.c:171: performantdelay(5);// speed variable magic number
	ld	a, #0x05
	call	_performantdelay
	jr	00145$
00127$:
;src\main.c:174: state = idle;
	ldhl	sp,	#3
	ld	(hl), #0x00
	jr	00145$
00135$:
;src\main.c:177: else if (state == up)
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ, 00145$
;src\main.c:179: if (sprite_y > goal_y)
	ldhl	sp,	#5
	ld	a, (hl+)
	inc	hl
	sub	a, (hl)
	jr	NC, 00130$
;src\main.c:181: sprite_y--;
	dec	(hl)
;src\main.c:182: move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
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
	ldhl	sp,	#7
	ld	a, (hl-)
	push	af
	inc	sp
	ld	h, (hl)
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:183: performantdelay(5); // speed variable magic number
	ld	a, #0x05
	call	_performantdelay
	jr	00145$
00130$:
;src\main.c:186: state = idle;
	ldhl	sp,	#3
	ld	(hl), #0x00
00145$:
;src\main.c:190: wait_vbl_done();
	call	_wait_vbl_done
	jp	00147$
;src\main.c:192: }
	add	sp, #8
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
