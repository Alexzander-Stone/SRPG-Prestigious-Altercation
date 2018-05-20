// Arg 0 = object's x location
// Arg 1 = object's y location
// Arg 2 = object's movement max
// Arg 3 = Grid width and height
totalRow = 2 * argument2 + 1;

// Go from the upper-most square to the middle using the width/height and max movement number.
number_of_squares = 1;
for(column = argument1 - (argument2*argument3); column <= argument1; column+= argument3) {
    
    for(row = number_of_squares-1; row >= 0; row--) {
        if(row == 0) { // Middle square
            instance_create(argument0, column, obj_movement_indicator);
            break;
        }
        else { // Squares outside middle boundary, duos
            instance_create(argument0 + row*argument3, column, obj_movement_indicator);
            instance_create(argument0 - row*argument3, column, obj_movement_indicator);
        }
    }
    number_of_squares++;
}

// Go from the bottom-most square to the middle using the width/height and max movement number.
number_of_squares -=3;
for(column = argument1 + (argument2*argument3); column > argument1; column-= argument3) {

    for(row = number_of_squares-1; row >= 0; row--) {
        if(row == 0) { // Middle square
            instance_create(argument0, column, obj_movement_indicator);
            break;
        }
        else { // Squares outside middle boundary, duos
            instance_create(argument0 + row*argument3, column, obj_movement_indicator);
            instance_create(argument0 - row*argument3, column, obj_movement_indicator);
        }
    }
    number_of_squares++; 
}
