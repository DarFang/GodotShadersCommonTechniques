shader_type canvas_item;

void fragment() {
	// Called for every pixel the material is visible on.
	vec4 original_color = texture(TEXTURE, UV);
	float grayscale = (original_color.b + original_color.r + original_color.g)/3.0;
	COLOR = vec4(vec3(grayscale), COLOR.a);
}