shader_type canvas_item;
uniform sampler2D mask_tex;
void fragment() {
	if(COLOR.a > 0.0)
	{
		vec4 mask_color = texture(mask_tex,UV);
		COLOR.a = mask_color.r;
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
