Shader "Custom/Scroll"
{
    Properties
    {
        _MainTex ("Main Texture", 2D) = "white" {}
        _ScrollX ("Scroll X", Range(-5,5)) = 1
        _ScrollY ("Scroll Y", Range(-5,5)) = 1
        _Speed("Speed", Range(0,100)) = 10
    }
    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert 

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        float _ScrollX;
        float _ScrollY;
        float _Speed;


        void surf (Input IN, inout SurfaceOutput o)
        {
            _ScrollX *= _Time;
            _ScrollY *= _Time;
            float3 background = (tex2D(_MainTex, IN.uv_MainTex + float2(_ScrollX, _ScrollY))).rgb;

            o.Albedo = background.rgb;

        }
        ENDCG
    }
    FallBack "Diffuse"
}
