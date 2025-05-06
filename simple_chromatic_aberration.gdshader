shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, repeat_disable, filter_nearest;

uniform vec2 r_offset;
uniform vec2 g_offset;
uniform vec2 b_offset;

void fragment(){
    vec2 uv = SCREEN_UV;
    vec2 pixel_size = SCREEN_PIXEL_SIZE;

    float r = texture(SCREEN_TEXTURE, uv + (r_offset * pixel_size), 0.0).r;
    float g = texture(SCREEN_TEXTURE, uv + (g_offset * pixel_size), 0.0).g;
    float b = texture(SCREEN_TEXTURE, uv + (b_offset * pixel_size), 0.0).b;

    COLOR = vec4(r, g, b, 1.0);
}