precision highp float;

attribute vec3 position;
attribute vec3 normal;

uniform mat4 proj;
uniform mat4 view;
uniform mat4 model;
uniform mat4 animate;
uniform mat3 modelNormal;
uniform mat3 animateNormal;

varying vec3 vposition;
varying vec3 vnormal;

void main() {
  vposition = (model * animate * vec4(position, 1.0)).xyz;
  vnormal = normalize(modelNormal * animateNormal * normal);
  gl_Position = proj * view * vec4(vposition, 1.0);
}

#pragma glslify: export(main)