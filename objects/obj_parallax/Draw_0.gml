/// @description initializing variables

var layer_id1 = layer_get_id("bg_1");
var layer_id2 = layer_get_id("bg_2");
var layer_id3 = layer_get_id("bg_3");

layer_x(layer_id3, floor(lerp(0, camera_get_view_x(view_camera[0]), 0.5)));
layer_x(layer_id2, floor(lerp(0, camera_get_view_x(view_camera[0]), 0.75)));
layer_x(layer_id1, floor(lerp(0, camera_get_view_x(view_camera[0]), 0.8)));