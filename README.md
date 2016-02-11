# glsl-basic-vertex-shader

GLSL snippet for a generic vertex shader for use with [`glslify`](https://github.com/stackgl/glslify). Includes standard components like model, animate, view, and projection matrices. Designed for standalone use. You might find it useful if you find yourself writing this boilerplate shader, or something similar, a lot.

## install

Add to your project with

```bash
npm install glsl-basic-vertex-shader
```

## usage

Inside your vertex shader just call

```glsl
#pragma glslify: main = require('glsl-basic-vertex-shader')
```

## components

Make sure you define all `attributes` and `uniforms`. If you don't need to use any of the matrices just set them to the identity matrix. The `varying` variables can be used in your fragment shader.

### attributes

- `vec3` `position` input vertex position
- `vec3` `normal` input vertex normal

### uniforms

- `mat4` `projection` projection matrix
- `mat4` `view` view matrix
- `mat4` `model` model matrix
- `mat4` `animate` animation matrix
- `mat3` `modelNormal` transpose inverse of model matrix
- `mat3` `animateNormal` transpose inverse of animation matrix

### varying

- `vec3` `vposition` computed vertex position
- `vec3` `vnormal` computed vertex normal
