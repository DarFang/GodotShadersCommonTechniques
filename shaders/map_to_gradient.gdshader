shader_type canvas_item;

uniform sampler2D gradient_texture;

void fragment() {
	// Called for every pixel the material is visible on.
	vec4 original_color = texture(TEXTURE, UV);
	float grayscale = (original_color.b + original_color.r + original_color.g)/3.0;

	vec4 gradient_color = texture(gradient_texture, vec2(grayscale));
	COLOR = vec4(gradient_color.xyz, COLOR.a);
}