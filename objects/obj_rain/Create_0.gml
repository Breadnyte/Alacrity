/// @description initialize

image_alpha = 0;

roomX = 800;
roomY = 50;

xStart = camera_get_view_x(view_camera[0]);
yStart = camera_get_view_y(view_camera[0]);

cameraWidth = camera_get_view_width(view_camera[0]);

scr_rain();
//create particle systems

global.particle_system = part_system_create();

//emitters
emitterRain = part_emitter_create(global.particle_system);

//create area or region of particles
part_emitter_region(global.particle_system, emitterRain, xStart - roomX, xStart + cameraWidth + roomX, yStart - roomY, yStart - roomY, ps_shape_rectangle, ps_distr_linear);

part_emitter_stream(global.particle_system, emitterRain, global.particle_rain, 30);
