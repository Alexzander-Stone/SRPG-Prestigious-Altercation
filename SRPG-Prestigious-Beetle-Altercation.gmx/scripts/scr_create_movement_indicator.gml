// Arg 0 = object's x location
// Arg 1 = object's y location
// Arg 2 = object's movement max
// Arg 3 = Grid width and height

// Returns an array of the ids created for the indicators.
current_index = 0;
id_array[0] = 0;

totalRow = 2 * argument2 + 1;

// Go from the upper-most square to the middle using the width/height and max movement number.
number_of_squares = 1;
for(column = argument1 - (argument2*argument3); column <= argument1; column+= argument3) {
    
    for(row = number_of_squares-1; row >= 0; row--) {
        if(row == 0) { // Middle square
            id_array[current_index++] = instance_create(argument0, column, obj_movement_indicator);
            break;
        }
        else { // Squares outside middle boundary, duos
            id_array[current_index++] = instance_create(argument0 + row*argument3, column, obj_movement_indicator);
            id_array[current_index++] = instance_create(argument0 - row*argument3, column, obj_movement_indicator);
        }
    }
    number_of_squares++;
}

// Go from the bottom-most square to the middle using the width/height and max movement number.
number_of_squares -=3;
for(column = argument1 + (argument2*argument3); column > argument1; column-= argument3) {

    for(row = number_of_squares-1; row >= 0; row--) {
        if(row == 0) { // Middle square
            id_array[current_index++] = instance_create(argument0, column, obj_movement_indicator);
            break;
        }
        else { // Squares outside middle boundary, duos
            id_array[current_index++] = instance_create(argument0 + row*argument3, column, obj_movement_indicator);
            id_array[current_index++] = instance_create(argument0 - row*argument3, column, obj_movement_indicator);
        }
    }
    number_of_squares++; 
}

return id_array;
