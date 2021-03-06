#extension GL_OES_EGL_image_external : require
precision mediump float;

uniform samplerExternalOES sCamera;
uniform float uOnFlip;
varying vec2 vTextureCoord;

void main() {
  if (uOnFlip == 1.0) {
    gl_FragColor = texture2D(sCamera, vec2(vTextureCoord.x, 1.0 - vTextureCoord.y));
  } else if (uOnFlip == 2.0) {
    gl_FragColor = texture2D(sCamera, vec2(1.0 - vTextureCoord.x, vTextureCoord.y));
  } else {
    gl_FragColor = texture2D(sCamera, vTextureCoord);
  }
}