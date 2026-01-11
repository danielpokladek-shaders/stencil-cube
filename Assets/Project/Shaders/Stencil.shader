Shader "DP/Stencil"
{
    Properties
    {
        [IntRange] _ID("Stencil ID", Range(1, 4)) = 1
    }
    SubShader
    {
        Tags
        {
            "RenderType" = "Opaque"
            "RenderPipeline" = "UniversalPipeline"
            "Queue" = "Geometry"
        }

        Pass
        {
            Blend Zero One
            ZWrite Off

            Stencil
            {
                Ref [_ID]
                Comp Always
                Pass Replace
                Fail Keep
            }
        }
    }
}