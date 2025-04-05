Shader "Storm/Starfield" {
  Properties {}

  SubShader {
    Tags {
      "RenderPipeline" = "UniversalPipeline"
    }

    Pass {
      Name "FowardLit"
      Tags {
        "LightMode" = "UniversalForward"
      }

      HLSLPROGRAM
      #pragma vertex vert
      #pragma fragment frag

      #include "StarfieldForwardLitPass.hlsl"
      ENDHLSL
    }
  }
}