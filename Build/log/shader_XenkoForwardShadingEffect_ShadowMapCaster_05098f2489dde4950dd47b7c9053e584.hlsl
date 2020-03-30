/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect.ShadowMapCaster
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorConstantColorLink<Material.EmissiveValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
cbuffer PerView [Size: 352]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => acbe3d4d44a046eede871176bee9c754
@S    ShaderBaseStream => a3a5bf8185f2a3d89972293f806430d3
@S    ShadingBase => a56c21640e78c756e8d56651480eb9f5
@S    ComputeColor => ded06879812e042b84d284d2272e4b4a
@S    TransformationBase => be8628f6067b518dd5c7b3fe338b9320
@S    NormalStream => b59c6ee174b93be981cc113a7a70d70b
@S    TransformationWAndVP => 37eaa3c16c9e83fd77e04c47c6794803
@S    PositionStream4 => b1f2243b30eb87e6e40bc6af56b4fd18
@S    PositionHStream4 => 0c0bb9059a8e3199d9ec950f3a7d2b66
@S    Transformation => ce8c4a6980d1f949f5f9aed15679c96d
@S    NormalFromMesh => 7e93d74a2c2c59456ebca897ee2c4bdb
@S    NormalBase => 118edc0075e4c3a87c3cb4570a808039
@S    NormalUpdate => 9bf3758fe45b1105750554fed463a15e
@S    MaterialSurfacePixelStageCompositor => cb7b21ca902e1b289c9d765318058f5a
@S    PositionStream => d767885dace5d697c6532bb4f0f5b3f8
@S    MaterialPixelShadingStream => ce423644e4da2371ef9e6b451c39edf7
@S    MaterialPixelStream => 83c4d63f50d89eb133457f26bcc25822
@S    MaterialStream => f4c30b25d4f10a4a3809b97598bfca17
@S    IStreamInitializer => 37d0ab08af9e2896a54aa43c0ea2ad0f
@S    LightStream => 622a7adc4e53980a3d0e0fecffc76661
@S    DirectLightGroupArray => b6017f14fd58343b7a54fefa2ca81610
@S    DirectLightGroup => 08ae1198dfb5788ff8584d747c3b8368
@S    ShadowGroup => 05cfb339de033879838a6606f047a866
@S    ShadowStream => 38650f3182fa7d3cab3bae43f9398f4e
@S    TextureProjectionGroup => 47f8334211d8d5ae6d98f32a923759cc
@S    EnvironmentLightArray => 4129555ea2051a98f5cf5e315d791d3e
@S    EnvironmentLight => 6aceaad54f2057382904d7f6dfa58e4f
@S    IMaterialSurface => d56637e1116951bd72b1817daa1a6158
@S    ShadowMapCasterNoPixelShader => 42afd0e2e40c8b7405a2f30cef7739da
@S    MaterialSurfaceArray => ca7a8b492198ae093d4f490c2ba6aaec
@S    MaterialSurfaceDiffuse => c60d7ca8058e062fcba77cc9b4c7d496
@S    IMaterialSurfacePixel => b5f583c7b871b6a4ebe5c7411883503e
@S    ComputeColorConstantColorLink => a30d6cd76f7c0875cdeffdb3ae8bae33
@S    MaterialSurfaceSetStreamFromComputeColor => c2d77b2aa35d9f24b852eb4a5fdc9872
@S    IMaterialSurfaceVertex => 0c5c73d45a721c87c347ae02954665ce
@S    MaterialVertexStream => 88c18bd25810bbb05cdd7c08ebc8c4a2
@S    MaterialDisplacementStream => 2f1b0f776096589363e85354152ef62e
@S    IMaterialSurfaceDomain => f21c77ffcac748537e778154fecb0921
@S    MaterialDomainStream => cf19dcc996d2d1de16031ccad6eafac0
@S    MaterialTessellationStream => fc291f489bf9de3c2dd85f2960efacc9
@S    Texturing => e6daef0dd90a55f9549c6f5d291e61a5
@S    ComputeColorConstantFloatLink => 12410f8b57e4015ff1a3fce241440b62
@S    MaterialSurfaceLightingAndShading => 68ac8c9f25624fdc15ea262fbc868030
@S    Math => 49d7f7706890095f248caeaf232f4db4
@S    IMaterialSurfaceShading => 43b5938a14c30cfc19b2ddcb76824cbe
@S    MaterialSurfaceShadingDiffuseLambert => ebe9647a0e11903ef16a793ffdbdd34c
@S    MaterialSurfaceEmissiveShading => 013ca1293b7b72150881283c25b3c88c
***************************
*****     Stages      *****
***************************
@G    Vertex => 8d7e876a1749ad384a82d7593dde4efd
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// MESHNORMALWS_ID16_SEM     0    yzw        3     NONE   float    yzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
//
vs_4_0
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.xyz
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   o4.x <- <VSMain return value>.normalWS_id18.x; o4.y <- <VSMain return value>.normalWS_id18.y; o4.z <- <VSMain return value>.normalWS_id18.z; 
//   o3.x <- <VSMain return value>.DepthVS_id22; o3.y <- <VSMain return value>.meshNormalWS_id16.x; o3.z <- <VSMain return value>.meshNormalWS_id16.y; o3.w <- <VSMain return value>.meshNormalWS_id16.z; 
//   o2.x <- <VSMain return value>.PositionH_id23.x; o2.y <- <VSMain return value>.PositionH_id23.y; o2.z <- <VSMain return value>.PositionH_id23.z; o2.w <- <VSMain return value>.PositionH_id23.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 167 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_ShadowMapCaster_05098f2489dde4950dd47b7c9053e584.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 202
mov o0.xyzw, r0.xyzw

#line 146
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 202
mov o1.xyzw, r1.xyzw
mov o2.xyzw, r1.xyzw
mov o3.x, r1.w

#line 180
dp3 r0.y, v1.xyzx, cb0[8].xyzx  // r0.y <- streams.meshNormalWS_id16.x
dp3 r0.z, v1.xyzx, cb0[9].xyzx  // r0.z <- streams.meshNormalWS_id16.y
dp3 r0.w, v1.xyzx, cb0[10].xyzx  // r0.w <- streams.meshNormalWS_id16.z

#line 202
mov o3.yzw, r0.yyzw
mov o4.xyz, r0.yzwy
ret 
// Approximately 18 instruction slots used
***************************
*************************/
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float3 normalWS_id18;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id23 : POSITIONH;
    float DepthVS_id22 : DEPTH_VS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float3 normalWS_id18 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
};
cbuffer PerDraw 
{
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
};
cbuffer PerMaterial 
{
    float4 constantColor_id81;
    float4 constantColor_id144;
    float constantFloat_id146;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id87;
    float2 Texture1TexelSize_id89;
    float2 Texture2TexelSize_id91;
    float2 Texture3TexelSize_id93;
    float2 Texture4TexelSize_id95;
    float2 Texture5TexelSize_id97;
    float2 Texture6TexelSize_id99;
    float2 Texture7TexelSize_id101;
    float2 Texture8TexelSize_id103;
    float2 Texture9TexelSize_id105;
};
Texture2D Texture0_id86;
Texture2D Texture1_id88;
Texture2D Texture2_id90;
Texture2D Texture3_id92;
Texture2D Texture4_id94;
Texture2D Texture5_id96;
Texture2D Texture6_id98;
Texture2D Texture7_id100;
Texture2D Texture8_id102;
Texture2D Texture9_id104;
TextureCube TextureCube0_id106;
TextureCube TextureCube1_id107;
TextureCube TextureCube2_id108;
TextureCube TextureCube3_id109;
Texture3D Texture3D0_id110;
Texture3D Texture3D1_id111;
Texture3D Texture3D2_id112;
Texture3D Texture3D3_id113;
SamplerState Sampler_id114;
SamplerState PointSampler_id115 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id116 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id117 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id118 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id119 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id120 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id121 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id122 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id123 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id124;
SamplerState Sampler1_id125;
SamplerState Sampler2_id126;
SamplerState Sampler3_id127;
SamplerState Sampler4_id128;
SamplerState Sampler5_id129;
SamplerState Sampler6_id130;
SamplerState Sampler7_id131;
SamplerState Sampler8_id132;
SamplerState Sampler9_id133;
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void GenerateNormal_VS_id20(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id9(streams);
    GenerateNormal_VS_id20(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id23 = streams.PositionH_id23;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.meshNormalWS_id16 = streams.meshNormalWS_id16;
    __output__.normalWS_id18 = streams.normalWS_id18;
    return __output__;
}
