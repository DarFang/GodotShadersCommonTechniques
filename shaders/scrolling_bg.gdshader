shader_type canvas_item;
uniform vec2 tiling = vec2(1.,1.);
uniform vec2 offset;
void vertex() {
	//tile the image, add image with offset
	UV = UV * tiling + offset * TIME;
}

