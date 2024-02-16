#include <gb/gb.h>
#include <stdint.h>
#include <stdio.h>
#include <gb/metasprites.h>
#include "../res/Test_Map.h"
#include "../res/PT_Tiles.h"
#include "../res/PT_PlaceHolder_Cast.h"
#include "../src/player.h"

void performantdelay(uint8_t numloops)
{
    uint8_t ii;
    for (ii = 0; ii < numloops; ii++)
    {
        wait_vbl_done();
    }
}

uint8_t joy;

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
    struct player Tomato =
    {
        /* data */
        // PLAYER VARIABLES
        4, // LOCAL LOCATION ON MAP
        4,
        80, // SPRITE LOCATION ON SCREEN
        88,
        0,
        0, // TARGET LOCATION ON SCREEN
        3, // SPEED
        idle,
        // Input System
        0,
        0,
    };
    // INITALIZE PLAYER GRAPHICS
    const metasprite_t player_down[] = {
        {.dy = -8, .dx = -8, .dtile = 0, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 2, .props = 0},
        {.dy = 8, .dx = -8, .dtile = 1, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 3, .props = 0},
        METASPR_TERM
    };
    const metasprite_t player_up[] = {
        {.dy = -8, .dx = -8, .dtile = 4, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 6, .props = 0},
        {.dy = 8, .dx = -8, .dtile = 5, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 7, .props = 0},
        METASPR_TERM

    };
    const metasprite_t player_right_0[] = {
        {.dy = -8, .dx = -8, .dtile = 8, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 10, .props = 0},
        {.dy = 8, .dx = -8, .dtile = 9, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 11, .props = 0},
        METASPR_TERM
    };
    const metasprite_t player_right_1[] = {
        {.dy = -8, .dx = -8, .dtile = 12, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 14, .props = 0},
        {.dy = 8, .dx = -8, .dtile = 13, .props = 0},
        {.dy = 0, .dx = 8, .dtile = 15, .props = 0},
        METASPR_TERM
    };

    const metasprite_t* const player_metasprites[4] = {
        player_down, player_up, player_right_0, player_right_1
    };

	init_gfx();
    volatile uint8_t timer = 0;
    move_metasprite(player_metasprites[0], 0, 0, 80, 88);
    //printf("%c", check_map(local_x, local_y));
    // Loop forever
    while(1) {
        joy = joypad();
        timer++;
        
        switch (Tomato.state) 
        {      
            case idle:
                // Game main loop processing goes here
                if (joy & J_UP)
                {
                    if (check_map(Tomato.local_x, Tomato.local_y - 1) == '0')
                    {
                        Tomato.local_y -= 1;
                        Tomato.goal_y = Tomato.sprite_y - 16;
                        Tomato.state = up;
                    }
                    else
                    {
                        move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    }
                }
                else if (joy & J_DOWN)
                {
                    if (check_map(Tomato.local_x, Tomato.local_y + 1) == '0')
                    {
                        Tomato.local_y += 1;
                        Tomato.goal_y = Tomato.sprite_y + 16;
                        Tomato.state = down;
                    }
                    else 
                    {
                        move_metasprite(player_metasprites[0], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    }
                }
                else if (joy & J_LEFT)
                {
                    if (check_map(Tomato.local_x - 1, Tomato.local_y) == '0')
                    {
                        Tomato.local_x -= 1;
                        Tomato.goal_x = Tomato.sprite_x - 16;
                        Tomato.state = left;
                    }
                    else 
                    {
                        move_metasprite_vflip(player_metasprites[3], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    }
                }
                else if (joy  & J_RIGHT)
                {
                    if (check_map(Tomato.local_x + 1, Tomato.local_y) == '0')
                    {
                        Tomato.local_x += 1;
                        Tomato.goal_x = Tomato.sprite_x + 16;
                        Tomato.state = right;
                    }
                    else 
                    {
                        move_metasprite(player_metasprites[2], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    }
                }
                break;
            case right:
                if (Tomato.sprite_x < Tomato.goal_x)
                {
                    Tomato.sprite_x++;
                    move_metasprite(player_metasprites[2], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    performantdelay(Tomato.speed); // speed variable magic number
                }
                else 
                {
                    Tomato.state = idle;
                }
                break;
            case left:
                if (Tomato.sprite_x > Tomato.goal_x)
                {
                    Tomato.sprite_x--;
                    move_metasprite_vflip(player_metasprites[3], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    performantdelay(Tomato.speed); // speed variable magic number
                }
                else 
                {
                    Tomato.state = idle;
                }
                break;
            case down:
                if(Tomato.sprite_y < Tomato.goal_y)
                {
                    Tomato.sprite_y++;
                    move_metasprite(player_metasprites[0], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    performantdelay(Tomato.speed);// speed variable magic number
                }
                else {
                    Tomato.state = idle;
                }
                break;
            case up:
                if (Tomato.sprite_y > Tomato.goal_y)
                {
                    Tomato.sprite_y--;
                    move_metasprite(player_metasprites[1], 0, 0, Tomato.sprite_x, Tomato.sprite_y);
                    performantdelay(Tomato.speed); // speed variable magic number
                }
                else {
                    Tomato.state = idle;
                }
                break;
        }
		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}