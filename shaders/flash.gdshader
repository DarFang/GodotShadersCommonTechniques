shader_type canvas_item;
uniform vec4 flash_color: source_color = vec4(1.);
uniform float flash_pct: hint_range(0.0, 1.0);

void fragment() {
	vec4 original_color = texture(TEXTURE, UV);
	COLOR = mix (original_color, flash_color, flash_pct);;
	COLOR.a *= original_color.a;
}