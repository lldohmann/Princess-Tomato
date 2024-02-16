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
;src\main.c:10: void performantdelay(uint8_t numloops)
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
;src\main.c:13: for (ii = 0; ii < numloops; ii++)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;src\main.c:15: wait_vbl_done();
	call	_wait_vbl_done
;src\main.c:13: for (ii = 0; ii < numloops; ii++)
	inc	b
;src\main.c:17: }
	jr	00103$
;src\main.c:33: char check_map(uint8_t x_pos, uint8_t y_pos)
;	---------------------------------
; Function check_map
; ---------------------------------
_check_map::
	ld	c, a
;src\main.c:35: return map_collision[y_pos][x_pos];
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
;src\main.c:36: }
	ret
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
;src\main.c:38: void printMap() {
;	---------------------------------
; Function printMap
; ---------------------------------
_printMap::
;src\main.c:39: for (uint8_t y = 0; y < 11; y++)
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x0b
	ret	NC
;src\main.c:41: for (uint8_t x = 0; x < 10; x++)
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
;src\main.c:43: printf("%c ", map_collision[y][x]);
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
;src\main.c:41: for (uint8_t x = 0; x < 10; x++)
	inc	b
	jr	00104$
00101$:
;src\main.c:45: printf("\n\n");
	push	bc
	ld	de, #___str_2
	call	_puts
	pop	bc
;src\main.c:39: for (uint8_t y = 0; y < 11; y++)
	inc	c
;src\main.c:47: }
	jr	00107$
___str_0:
	.ascii "%c "
	.db 0x00
___str_2:
	.db 0x0a
	.db 0x00
;src\main.c:49: void init_gfx() {
;	---------------------------------
; Function init_gfx
; ---------------------------------
_init_gfx::
;src\main.c:51: set_bkg_data(0, 54u, TileLabel);
	ld	de, #_TileLabel
	push	de
	ld	hl, #0x3600
	push	hl
	call	_set_bkg_data
	add	sp, #4
;src\main.c:52: set_bkg_tiles(0, 0, 20u, 18u, Visual_Map);
	ld	de, #_Visual_Map
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;src\main.c:55: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;src\main.c:58: set_sprite_data(0, 45u, Cast_Tiles);
	ld	de, #_Cast_Tiles
	push	de
	ld	hl, #0x2d00
	push	hl
	call	_set_sprite_data
	add	sp, #4
;src\main.c:59: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;src\main.c:60: }
	ret
;src\main.c:62: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-100
;src\main.c:64: struct player Tomato =
	ldhl	sp,	#0
	ld	a,#0x04
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x50
	ld	(hl+), a
	ld	a, #0x58
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x03
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
;src\main.c:81: const metasprite_t player_down[] = {
	xor	a, a
	ld	(hl+), a
	ld	(hl), #0xf8
	ldhl	sp,	#10
	ld	c, l
	ld	b, h
	ldhl	sp,	#11
	ld	a, #0xf8
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x02
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0xf8
	ld	(hl+), a
	ld	a, #0x01
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x03
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x80
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
;src\main.c:88: const metasprite_t player_up[] = {
	xor	a, a
	ld	(hl+), a
	ld	a,#0xf8
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x04
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x06
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0xf8
	ld	(hl+), a
	ld	a, #0x05
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x07
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x80
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
;src\main.c:96: const metasprite_t player_right_0[] = {
	xor	a, a
	ld	(hl+), a
	ld	a,#0xf8
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x0a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0xf8
	ld	(hl+), a
	ld	a, #0x09
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x0b
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x80
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
;src\main.c:103: const metasprite_t player_right_1[] = {
	xor	a, a
	ld	(hl+), a
	ld	a,#0xf8
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x0c
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x0e
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0xf8
	ld	(hl+), a
	ld	a, #0x0d
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x08
	ld	(hl+), a
	ld	a, #0x0f
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, #0x80
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
;src\main.c:111: const metasprite_t* const player_metasprites[4] = {
	xor	a, a
	ld	(hl+), a
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #30
	add	hl, sp
	ld	c, l
	ld	b, h
	ldhl	sp,	#92
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #50
	add	hl, sp
	ld	c, l
	ld	b, h
	ldhl	sp,	#94
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #70
	add	hl, sp
	ld	c, l
	ld	b, h
	ldhl	sp,	#96
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;src\main.c:115: init_gfx();
	call	_init_gfx
;src\main.c:116: volatile uint8_t timer = 0;
	ldhl	sp,	#98
	ld	(hl), #0x00
;src\main.c:117: move_metasprite(player_metasprites[0], 0, 0, 80, 88);
	ldhl	sp,	#90
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
;src\main.c:120: while(1) {
00143$:
;src\main.c:121: joy = joypad();
	call	_joypad
	ld	(#_joy),a
;src\main.c:122: timer++;
	ldhl	sp,	#98
	inc	(hl)
	ld	a, (hl)
;src\main.c:124: switch (Tomato.state) 
	ldhl	sp,	#7
	ld	c, (hl)
	ld	a, #0x04
	sub	a, c
	jp	C, 00141$
	ld	b, #0x00
	ld	hl, #00226$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00226$:
	jp	00101$
	jp	00129$
	jp	00125$
	jp	00137$
	jp	00133$
;src\main.c:126: case idle:
00101$:
;src\main.c:128: if (joy & J_UP)
	ld	a, (#_joy)
	bit	2, a
	jr	Z, 00123$
;src\main.c:130: if (check_map(Tomato.local_x, Tomato.local_y - 1) == '0')
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	c, a
	dec	c
	ld	b, (hl)
	ld	e, c
	ld	a, b
	call	_check_map
	sub	a, #0x30
	jr	NZ, 00103$
;src\main.c:132: Tomato.local_y -= 1;
	ldhl	sp,	#1
	ld	a, (hl)
	dec	a
;src\main.c:133: Tomato.goal_y = Tomato.sprite_y - 16;
	ld	(hl+), a
	inc	hl
	ld	a, (hl+)
	inc	hl
	add	a, #0xf0
;src\main.c:134: Tomato.state = up;
	ld	(hl+), a
	inc	hl
	ld	(hl), #0x03
	jp	00141$
00103$:
;src\main.c:138: move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ldhl	sp,	#3
	ld	a, (hl-)
	ld	c, a
	ld	a, (hl)
	ldhl	sp,	#99
	ld	(hl), a
	ldhl	sp,	#92
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ld	a, c
	push	af
	inc	sp
	ldhl	sp,	#100
	ld	a, (hl)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
;src\main.c:138: move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	jp	00141$
00123$:
;src\main.c:141: else if (joy & J_DOWN)
	bit	3, a
	jr	Z, 00120$
;src\main.c:143: if (check_map(Tomato.local_x, Tomato.local_y + 1) == '0')
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	c, a
	inc	c
	ld	b, (hl)
	ld	e, c
	ld	a, b
	call	_check_map
	sub	a, #0x30
	jr	NZ, 00106$
;src\main.c:145: Tomato.local_y += 1;
	ldhl	sp,	#1
	ld	a, (hl)
	inc	a
;src\main.c:146: Tomato.goal_y = Tomato.sprite_y + 16;
	ld	(hl+), a
	inc	hl
	ld	a, (hl+)
	inc	hl
	add	a, #0x10
;src\main.c:147: Tomato.state = down;
	ld	(hl+), a
	inc	hl
	ld	(hl), #0x04
	jp	00141$
00106$:
;src\main.c:151: move_metasprite(player_metasprites[0], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ldhl	sp,	#3
	ld	a, (hl-)
	ld	c, a
	ld	a, (hl)
	ldhl	sp,	#99
	ld	(hl), a
	ldhl	sp,	#90
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	ld	a, c
	push	af
	inc	sp
	ldhl	sp,	#100
	ld	a, (hl)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
;src\main.c:151: move_metasprite(player_metasprites[0], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	jp	00141$
00120$:
;src\main.c:154: else if (joy & J_LEFT)
	bit	1, a
	jr	Z, 00117$
;src\main.c:156: if (check_map(Tomato.local_x - 1, Tomato.local_y) == '0')
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	b, a
	ld	c, (hl)
	dec	c
	ld	e, b
	ld	a, c
	call	_check_map
	sub	a, #0x30
	jr	NZ, 00109$
;src\main.c:158: Tomato.local_x -= 1;
	ldhl	sp,	#0
	ld	a, (hl)
	dec	a
;src\main.c:159: Tomato.goal_x = Tomato.sprite_x - 16;
	ld	(hl+), a
	inc	hl
	ld	a, (hl+)
	inc	hl
	add	a, #0xf0
	ld	(hl), a
;src\main.c:160: Tomato.state = left;
	ldhl	sp,	#7
	ld	(hl), #0x01
	jp	00141$
00109$:
;src\main.c:164: move_metasprite_vflip(player_metasprites[3], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ldhl	sp,	#3
	ld	a, (hl-)
	ld	c, a
	ld	a, (hl)
	ldhl	sp,	#99
	ld	(hl), a
	ldhl	sp,	#96
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:169: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:171: return __move_metasprite_vflip(base_sprite, x - 8, y);
	ldhl	sp,	#99
	ld	a, (hl)
	add	a, #0xf8
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite_vflip
	add	sp, #3
;src\main.c:164: move_metasprite_vflip(player_metasprites[3], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	jp	00141$
00117$:
;src\main.c:167: else if (joy  & J_RIGHT)
	rrca
	jp	NC,00141$
;src\main.c:169: if (check_map(Tomato.local_x + 1, Tomato.local_y) == '0')
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	b, a
	ld	c, (hl)
	inc	c
	ld	e, b
	ld	a, c
	call	_check_map
	sub	a, #0x30
	jr	NZ, 00112$
;src\main.c:171: Tomato.local_x += 1;
	ldhl	sp,	#0
	ld	a, (hl)
	inc	a
;src\main.c:172: Tomato.goal_x = Tomato.sprite_x + 16;
	ld	(hl+), a
	inc	hl
	ld	a, (hl+)
	inc	hl
	add	a, #0x10
	ld	(hl), a
;src\main.c:173: Tomato.state = right;
	ldhl	sp,	#7
	ld	(hl), #0x02
	jp	00141$
00112$:
;src\main.c:177: move_metasprite(player_metasprites[2], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ldhl	sp,	#3
	ld	a, (hl-)
	ld	b, a
	ld	c, (hl)
	ldhl	sp,	#94
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	___move_metasprite
	add	sp, #3
;src\main.c:180: break;
	jp	00141$
;src\main.c:181: case right:
00125$:
;src\main.c:138: move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ldhl	sp,	#2
;src\main.c:182: if (Tomato.sprite_x < Tomato.goal_x)
	ld	a, (hl+)
	inc	hl
	ld	c, (hl)
	cp	a, c
	jr	NC, 00127$
;src\main.c:184: Tomato.sprite_x++;
	dec	hl
	dec	hl
	inc	a
;src\main.c:185: move_metasprite(player_metasprites[2], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ld	(hl+), a
	ld	b, (hl)
	ld	c, a
	ldhl	sp,	#94
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:186: performantdelay(Tomato.speed); // speed variable magic number
	ldhl	sp,	#6
	ld	a, (hl)
	call	_performantdelay
	jp	00141$
00127$:
;src\main.c:190: Tomato.state = idle;
	ldhl	sp,	#7
	ld	(hl), #0x00
;src\main.c:192: break;
	jp	00141$
;src\main.c:193: case left:
00129$:
;src\main.c:138: move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ldhl	sp,	#2
;src\main.c:194: if (Tomato.sprite_x > Tomato.goal_x)
	ld	a, (hl+)
	inc	hl
	ld	c, a
	ld	a, (hl)
	sub	a, c
	jr	NC, 00131$
;src\main.c:196: Tomato.sprite_x--;
	dec	hl
	dec	hl
	dec	c
;src\main.c:197: move_metasprite_vflip(player_metasprites[3], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ld	a, c
	ld	(hl+), a
	ld	b, (hl)
	ldhl	sp,	#96
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:169: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:170: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:171: return __move_metasprite_vflip(base_sprite, x - 8, y);
	ld	a, c
	add	a, #0xf8
	push	bc
	inc	sp
	ld	h, a
	ld	l, #0x00
	push	hl
	call	___move_metasprite_vflip
	add	sp, #3
;src\main.c:198: performantdelay(Tomato.speed); // speed variable magic number
	ldhl	sp,	#6
	ld	a, (hl)
	call	_performantdelay
	jr	00141$
00131$:
;src\main.c:202: Tomato.state = idle;
	ldhl	sp,	#7
	ld	(hl), #0x00
;src\main.c:204: break;
	jr	00141$
;src\main.c:205: case down:
00133$:
;src\main.c:133: Tomato.goal_y = Tomato.sprite_y - 16;
	ldhl	sp,	#3
;src\main.c:206: if(Tomato.sprite_y < Tomato.goal_y)
	ld	a, (hl+)
	inc	hl
	ld	c, (hl)
	cp	a, c
	jr	NC, 00135$
;src\main.c:208: Tomato.sprite_y++;
	dec	hl
	dec	hl
	inc	a
;src\main.c:209: move_metasprite(player_metasprites[0], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ld	(hl-), a
	ld	b, a
	ld	c, (hl)
	ldhl	sp,	#90
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:210: performantdelay(Tomato.speed);// speed variable magic number
	ldhl	sp,	#6
	ld	a, (hl)
	call	_performantdelay
	jr	00141$
00135$:
;src\main.c:213: Tomato.state = idle;
	ldhl	sp,	#7
	ld	(hl), #0x00
;src\main.c:215: break;
	jr	00141$
;src\main.c:216: case up:
00137$:
;src\main.c:133: Tomato.goal_y = Tomato.sprite_y - 16;
	ldhl	sp,	#3
;src\main.c:217: if (Tomato.sprite_y > Tomato.goal_y)
	ld	a, (hl+)
	inc	hl
	ld	b, a
	ld	a, (hl)
	sub	a, b
	jr	NC, 00139$
;src\main.c:219: Tomato.sprite_y--;
	dec	hl
	dec	hl
	dec	b
;src\main.c:220: move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
	ld	a, b
	ld	(hl-), a
	ld	c, (hl)
	ldhl	sp,	#92
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;C:/gbdk/include/gb/metasprites.h:140: __current_metasprite = metasprite;
	ld	e, a
	ld	d, h
	ld	hl, #___current_metasprite
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
;C:/gbdk/include/gb/metasprites.h:141: __current_base_tile = base_tile;
	ld	hl, #___current_base_tile
	ld	(hl), #0x00
;C:/gbdk/include/gb/metasprites.h:142: return __move_metasprite(base_sprite, x, y);
	push	bc
	inc	sp
	ld	h, c
	ld	l, #0x00
	push	hl
	call	___move_metasprite
	add	sp, #3
;src\main.c:221: performantdelay(Tomato.speed); // speed variable magic number
	ldhl	sp,	#6
	ld	a, (hl)
	call	_performantdelay
	jr	00141$
00139$:
;src\main.c:224: Tomato.state = idle;
	ldhl	sp,	#7
	ld	(hl), #0x00
;src\main.c:227: }
00141$:
;src\main.c:229: wait_vbl_done();
	call	_wait_vbl_done
	jp	00143$
;src\main.c:231: }
	add	sp, #100
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
