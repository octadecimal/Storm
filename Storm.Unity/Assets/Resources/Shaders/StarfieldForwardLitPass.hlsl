float iTime;
float Scale;
float2 Offset;

#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

struct Attributes {
  float3 positionOS: POSITION;
};

struct Interpolators {
  float4 positionCS: SV_POSITION;
};

Interpolators vert(Attributes input) {
  Interpolators output;

  VertexPositionInputs posInputs = GetVertexPositionInputs(input.positionOS);
  output.positionCS = posInputs.positionCS;

  return output;
}

float4 frag(Interpolators input): SV_TARGET {
  return float4(1, 0.5, 0.25, 1);
}

float4 main(in float2 uv: TEXCOORD0): SV_TARGET {
  uv.x += iTime * 0.001;
  float x = sin(uv.x * Scale + Offset.x) - (uv.y * Scale + Offset.y);
  return float4(0,x,0,1);
}