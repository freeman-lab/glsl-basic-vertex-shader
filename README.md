# glsl-basic-vertex-shader

GLSL snippet for a generic vertex shader for use with `glslify`. Includes standard components like `model` `view` and `projection` matrices. Designed as standalone use. You might find it useful if you find yourself writing this a lot.

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

Make sure you define all `attributes` and `uniforms`. The `varying` variables can be used in your fragment shader.

### attributes

- `vec3` `position` input vertex position
- `vec3` `normal` input vertex normal

### uniforms

- `mat4` `proj` projection matrix
- `mat4` `view` view matrix
- `mat4` `model` model matrix
- `mat4` `animate` animation matrix
- `mat3` `modelNormal` transpose inverse of model matrix
- `mat3` `animateNormal` transpose inverse of animation matrix

### varying

- `vec3` `vposition` calculated vertex position
- `vec3` `vnormal` calculated vertex normal
