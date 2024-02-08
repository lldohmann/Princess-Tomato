#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include <gb/metasprites.h>
#include "../res/Test_Map.h"
#include "../res/PT_Tiles.h"
#include "../res/PT_PlaceHolder_Cast.h"

void performantdelay(uint8_t numloops)
{
    uint8_t ii;
    for (ii = 0; ii < numloops; ii++)
    {
        wait_vbl_done();
    }
}

uint8_t joy;
const metasprite_t player_down[] = {
    {.dy = -8, .dx = -8, .dtile = 0, .props = 0},
    {.dy = 0, .dx = 8, .dtile = 2, .props = 0},
    {.dy = 8, .dx = -8, .dtile = 1, .props = 0},
    {.dy = 0, .dx = 8, .dtile = 3, .props = 0},
    METASPR_TERM
};
const metasprite_t* const player_metasprites[1] = {
    player_down
};

const unsigned char map_collision[10][11] = {
    {'1', '1', '1', '1', '1', '1', '1', '1', '1', '1'},
    {'1', '1', '1', '1', '1', '1', '1', '1', '1', '1'},
    {'1', '1', '1', '1', '0', '0', '0', '0', '0', '1'},
    {'1', '1', '1', '1', '0', '1', '0', '1', '0', '1'},
    {'0', '0', '0', '0', '0', '0', '0', '0', '0', '1'},
    {'1', '1', '1', '1', '0', '1', '0', '1', '0', '1'},
    {'1', '1', '1', '1', '0', '0', '0', '0', '0', '1'},
    {'1', '1', '1', '1', '1', '1', '1', '1', '1', '1'},
    {'1', '1', '1', '1', '1', '1', '1', '1', '1', '1'},
};

char check_map(uint8_t x_pos, uint8_t y_pos)
{
    return map_collision[y_pos][x_pos];
}

void printMap() {
    for (uint8_t y = 0; y < 11; y++)
    {
        for (uint8_t x = 0; x < 10; x++)
        {
            printf("%c ", map_collision[y][x]);
        }
        printf("\n\n");
    }
}

void init_gfx() {
    // Load Background tiles and then map
    set_bkg_data(0, 54u, TileLabel);
    set_bkg_tiles(0, 0, 20u, 18u, Visual_Map);

	// Turn the background map on to make it visible
    SHOW_BKG;

    // Set Sprite Data
    set_sprite_data(0, 45u, Cast_Tiles);
    SHOW_SPRITES;
}

void main(void)
{
    uint8_t local_x = 4;
    uint8_t local_y = 4;
    uint8_t sprite_x = 80;
    uint8_t sprite_y = 88;
    uint8_t goal_x, goal_y;
	init_gfx();
    volatile uint8_t timer = 0;
    move_metasprite(player_metasprites[0], 0, 0, 80, 88);
    //printf("%c", check_map(local_x, local_y));
    // Loop forever
    while(1) {
        joy = joypad();
        timer++;

		// Game main loop processing goes here
        if (joy & J_UP)
        {
            if (check_map(local_x, local_y - 1) == '0')
            {
                local_y -= 1;
                sprite_y -= 16;
                move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
                performantdelay(30);
            }
        }
        if (joy & J_DOWN)
        {
            if (check_map(local_x, local_y + 1) == '0')
            {
                local_y += 1;
                sprite_y += 16;
                move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
                performantdelay(30);
            }
        }
        if (joy & J_LEFT)
        {
            if (check_map(local_x - 1, local_y) == '0')
            {
                local_x -= 1;
                sprite_x -= 16;
                move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
                performantdelay(30);
            }
        }
        if (joy  & J_RIGHT)
        {
            if (check_map(local_x + 1, local_y) == '0')
            {
                local_x += 1;
                sprite_x += 16;
                move_metasprite(player_metasprites[0], 0, 0, sprite_x, sprite_y);
                performantdelay(30);
            }
        }
		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}
