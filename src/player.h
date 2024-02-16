#pragma once
#include <stdint.h>
#include <gb/metasprites.h>
/**
 * A Player represents the user's overworld character.
 * A 16 x 16 rectangle with update and drawing logic.
 * It also reads player input
*/

/**
 * Struct for player data. Deliberately public
*/
enum player_state {idle, left, right, up, down};
//const metasprite_t player_down[4];
//const metasprite_t* const player_metasprites[1];
typedef struct player {
    // PLAYER VARIABLES -- PRE-INITIALIZED
    uint8_t local_x; // LOCAL LOCATION ON MAP
    uint8_t local_y;
    uint8_t sprite_x; // SPRITE LOCATION ON SCREEN
    uint8_t sprite_y;
    uint8_t goal_x, goal_y; // TARGET LOCATION ON SCREEN
    uint8_t speed;
    enum player_state state;
    // Input System
    uint8_t joypadCurrent;
    uint8_t joypadPrevious;
};