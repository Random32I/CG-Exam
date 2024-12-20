Shader "Custom/RimLighting"
{
    Properties
    {
        _RimColor ("Rim Color", Color) = (0,0.5,0.5,0.0)
        _RimPower ("Rim Power", Range(0.5,8.0)) = 3.0
        _MainColor ("Main Color", Color) = (0,0.5,0.5,0.0)
    }
    SubShader
    {
        CGPROGRAM
        #pragma  surface surf Lambert
        struct Input
        {
            float3 viewDir;
        };

        float4 _RimColor;
        float4 _MainColor;
        float _RimPower;

        void surf (Input IN, inout SurfaceOutput o)
        {
            half rim = 1.0 - saturate(dot(normalize(IN.viewDir), o.Normal));
            o.Emission = _RimColor.rgb * pow (rim, _RimPower);
            o.Albedo = _MainColor;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
