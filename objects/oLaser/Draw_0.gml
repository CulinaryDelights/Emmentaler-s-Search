direction = point_direction(x,y, mouse_x, mouse_y);

var max_length = 1000;
var solid_object = oWall;

for(var i = 0; i < max_length; i++){

    var lx = x + lengthdir_x(i, direction);
    var ly = y + lengthdir_y(i, direction);

    if(collision_point(lx,ly,solid_object,false,true)){
        break;
    }

}

draw_line_width_color(x,y,lx,ly,8,c_red,c_red);