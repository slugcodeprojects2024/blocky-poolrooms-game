// Fragment Shader
precision mediump float;
uniform sampler2D u_Sampler;
uniform float u_texColorWeight;
uniform vec4 u_baseColor;
varying vec2 v_TexCoord;

void main() {
    // Get texture color
    vec4 texColor = texture2D(u_Sampler, v_TexCoord);
    
    // Blend base color and texture color based on weight
    gl_FragColor = mix(u_baseColor, texColor, u_texColorWeight);
}