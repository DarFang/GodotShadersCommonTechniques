shader_type canvas_item;
uniform sampler2D screen_texture: hint_screen_texture, filter_nearest;
uniform sampler2D noise_text1: repeat_enable;
uniform sampler2D noise_text2: repeat_enable;
uniform vec2 offset1 = vec2(0.1);
uniform vec2 offset2 = vec2(0.2);
uniform float distortion_strength: hint_range(-1, 1) = 1; 
void fragment() {
	vec4 noise_color1 = texture(noise_text1, UV + offset1*TIME);
	vec4 noise_color2 = texture(noise_text2, UV + offset2*TIME);
	float final_noise = noise_color1.r * noise_color2.r;
	vec4 final_color = texture(screen_texture, SCREEN_UV + final_noise*distortion_strength);
	COLOR = final_color;
	
}
