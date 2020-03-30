/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissive,rgba> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.EmissiveMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matEmissiveIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.EmissiveIntensity>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}], MaterialSurfaceEmissiveShading<false>]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterDefault<PerView.Lighting>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: IComputeEnvironmentColor
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: IComputeEnvironmentColor
@P XenkoEffectBase.RenderTargetExtensions: mixin
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
cbuffer PerMaterial [Size: 48]
@C    scale_id186 => Material.TextureScale
@C    offset_id187 => Material.TextureOffset
@C    scale_id194 => Material.TextureScale.i1
@C    offset_id195 => Material.TextureOffset.i1
@C    constantFloat_id197 => Material.EmissiveIntensity
cbuffer PerView [Size: 1520]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
@C    NearClipPlane_id164 => Camera.NearClipPlane
@C    FarClipPlane_id165 => Camera.FarClipPlane
@C    ZProjection_id166 => Camera.ZProjection
@C    ViewSize_id167 => Camera.ViewSize
@C    AspectRatio_id168 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id83 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id85 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id87 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id88 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id150 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id151 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id152 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id153 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id154 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id155 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id162 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id173 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id174 => LightClustered.ClusterDepthBias
@C    ClusterStride_id175 => LightClustered.ClusterStride
@C    AmbientLight_id178 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SkyMatrix_id179 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id180 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    Texture_id183 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Texture_id183 => Material.DiffuseMap [Stage: None, Slot: (-1--1)]
@R    Sampler_id184 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Sampler_id184 => Material.Sampler.i0 [Stage: None, Slot: (-1--1)]
@R    Texture_id192 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    Texture_id192 => Material.EmissiveMap [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id86 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id86 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id121 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    Sampler_id184 => Material.Sampler.i0 [Stage: Pixel, Slot: (1-1)]
@R    Texture_id183 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id192 => Material.EmissiveMap [Stage: Pixel, Slot: (1-1)]
@R    ShadowMapTexture_id86 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (2-2)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: Pixel, Slot: (3-3)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: Pixel, Slot: (4-4)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (5-5)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (6-6)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
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
@S    LightDirectionalGroup => f9970193df80a5a2cd0e2949fd2c68f8
@S    DirectLightGroupPerView => 687613ae4b0bcdb3a67791902ac3ff9d
@S    LightDirectional => d971eabfd75851e9aac331559fd4c302
@S    ShadowMapReceiverDirectional => 7795d3c11e656b45157edb48696881ef
@S    ShadowMapReceiverBase => c96cd2b4fb68ce6d463fc39ff1e95003
@S    ShadowMapGroup => 02bb2611f8c83a81c84e427249d4cc0f
@S    ShadowMapCommon => c3196415f193e53491ef708d3f81c003
@S    ShadowMapFilterBase => 31fd626ae63e5d5986d375f2a72309e8
@S    Texturing => e6daef0dd90a55f9549c6f5d291e61a5
@S    Math => 49d7f7706890095f248caeaf232f4db4
@S    ShadowMapFilterDefault => 1cdb46e437613906b915ca14aed4cd7e
@S    LightClusteredPointGroup => c5703508c16a19f7acb9ebe6676eeb4a
@S    LightClustered => 82f6bcf6878ecb8f1cf19364969848f1
@S    ScreenPositionBase => b66b925e44d5cef758dd09d560d88680
@S    Camera => 38d8cc7176ac62fc4d9c97d70f9013ab
@S    LightPoint => 5cc6bc739ab0f656d8a48332e8ca569b
@S    LightUtil => 2587d00dc291bbace485f1420ae464ad
@S    LightClusteredSpotGroup => d9e6bd2fe470894c4d8bebba13305bf2
@S    LightSpot => ff13b9737bc99d2458fa5aa679b6b8f0
@S    SpotLightDataInternalShader => 4c9afecddd31668dbea2f90869a2d5f0
@S    LightSpotAttenuationDefault => a424c87e1fb86625b52e4ab0ab01bf46
@S    LightSimpleAmbient => 5216c2bc901f0543bc29393671a09451
@S    LightSkyboxShader => 82f50e49ee33fe5de0a04d94a2fc07f8
@S    IComputeEnvironmentColor => ec85adeba938ee8d9397a3905bce223e
@S    MaterialSurfaceArray => ca7a8b492198ae093d4f490c2ba6aaec
@S    MaterialSurfaceDiffuse => c60d7ca8058e062fcba77cc9b4c7d496
@S    IMaterialSurfacePixel => b5f583c7b871b6a4ebe5c7411883503e
@S    ComputeColorTextureScaledOffsetDynamicSampler => 680e61052fd580928ba07d61381cf7aa
@S    DynamicTexture => c9a2e65d8e419b069971342ac1eaffe1
@S    DynamicSampler => c7e36b002252e5b947f67278b28b0957
@S    DynamicTextureStream => 49c11eb479810dd1fa94c1639e04e5cf
@S    MaterialSurfaceSetStreamFromComputeColor => c2d77b2aa35d9f24b852eb4a5fdc9872
@S    IMaterialSurfaceVertex => 0c5c73d45a721c87c347ae02954665ce
@S    MaterialVertexStream => 88c18bd25810bbb05cdd7c08ebc8c4a2
@S    MaterialDisplacementStream => 2f1b0f776096589363e85354152ef62e
@S    IMaterialSurfaceDomain => f21c77ffcac748537e778154fecb0921
@S    MaterialDomainStream => cf19dcc996d2d1de16031ccad6eafac0
@S    MaterialTessellationStream => fc291f489bf9de3c2dd85f2960efacc9
@S    ComputeColorConstantFloatLink => 12410f8b57e4015ff1a3fce241440b62
@S    MaterialSurfaceLightingAndShading => 68ac8c9f25624fdc15ea262fbc868030
@S    IMaterialSurfaceShading => 43b5938a14c30cfc19b2ddcb76824cbe
@S    MaterialSurfaceShadingDiffuseLambert => ebe9647a0e11903ef16a793ffdbdd34c
@S    MaterialSurfaceEmissiveShading => 013ca1293b7b72150881283c25b3c88c
***************************
*****     Stages      *****
***************************
@G    Vertex => c7466504f5cbe0dc005672d598a15a3a
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
//   float NearClipPlane_id164;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id165;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id166;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id167;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id168;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id83;               // Offset:  400 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id85;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id87;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id88;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id150[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id151[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id152[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id153[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id154;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id155;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id162[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id173;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id174;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id175;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id178;         // Offset: 1408 Size:    12 [unused]
//   float4x4 SkyMatrix_id179;          // Offset: 1424 Size:    64 [unused]
//   float Intensity_id180;             // Offset: 1488 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1504 Size:    16 [unused]
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
// TEXCOORD                 0   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID163_SEM     0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xy          4     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xy
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_output o3.xyzw
dcl_output o4.xy
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.meshNormal_id15.x; v1.y <- __input__.meshNormal_id15.y; v1.z <- __input__.meshNormal_id15.z; 
//   v2.x <- __input__.TexCoord_id137.x; v2.y <- __input__.TexCoord_id137.y; 
//   o4.x <- <VSMain return value>.TexCoord_id137.x; o4.y <- <VSMain return value>.TexCoord_id137.y; 
//   o3.x <- <VSMain return value>.ScreenPosition_id163.x; o3.y <- <VSMain return value>.ScreenPosition_id163.y; o3.z <- <VSMain return value>.ScreenPosition_id163.z; o3.w <- <VSMain return value>.ScreenPosition_id163.w; 
//   o2.x <- <VSMain return value>.DepthVS_id22; o2.y <- <VSMain return value>.normalWS_id18.x; o2.z <- <VSMain return value>.normalWS_id18.y; o2.w <- <VSMain return value>.normalWS_id18.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 930 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_d30aa326356e22d8cd2c4800b44fec32.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 1014
mov o0.xyzw, r0.xyzw

#line 881
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1014
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 965
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1014
mov o4.xy, v2.xyxx
ret 
// Approximately 17 instruction slots used
@G    Pixel => a102c299bcd0896603494c9d34f5c90a
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float2 scale_id186;                // Offset:    0 Size:     8
//   float2 offset_id187;               // Offset:    8 Size:     8
//   float2 scale_id194;                // Offset:   16 Size:     8
//   float2 offset_id195;               // Offset:   24 Size:     8
//   float constantFloat_id197;         // Offset:   32 Size:     4
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
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id164;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id165;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id166;          // Offset:  360 Size:     8
//   float2 ViewSize_id167;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id168;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id83;               // Offset:  400 Size:     4
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id85;                     // Offset:  416 Size:    28
//   float2 ShadowMapTextureSize_id87;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id88;// Offset:  456 Size:     8
//   float4x4 WorldToShadowCascadeUV_id150[4];// Offset:  464 Size:   256
//   float4x4 InverseWorldToShadowCascadeUV_id151[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id152[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id153[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id154;           // Offset: 1296 Size:     4
//   float OffsetScales_id155;          // Offset: 1312 Size:     4
//   float CascadeDepthSplits_id162[4]; // Offset: 1328 Size:    52
//   float ClusterDepthScale_id173;     // Offset: 1380 Size:     4
//   float ClusterDepthBias_id174;      // Offset: 1384 Size:     4
//   float2 ClusterStride_id175;        // Offset: 1392 Size:     8
//   float3 AmbientLight_id178;         // Offset: 1408 Size:    12
//   float4x4 SkyMatrix_id179;          // Offset: 1424 Size:    64 [unused]
//   float Intensity_id180;             // Offset: 1488 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1504 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearClampCompareLessEqualSampler_id121  sampler_c      NA          NA             s0      1 
// Sampler_id184                     sampler      NA          NA             s1      1 
// Texture_id183                     texture  float4          2d             t0      1 
// Texture_id192                     texture  float4          2d             t1      1 
// ShadowMapTexture_id86             texture  float4          2d             t2      1 
// LightClusters_id171               texture   uint2          3d             t3      1 
// LightIndices_id172                texture    uint         buf             t4      1 
// PointLights_id176                 texture  float4         buf             t5      1 
// SpotLights_id177                  texture  float4         buf             t6      1 
// PerMaterial                       cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float     z 
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
// SCREENPOSITION_ID163_SEM     0   xyzw        3     NONE   float   xy w
// TEXCOORD                 0   xy          4     NONE   float   xy  
// SV_IsFrontFace           0   x           5    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer CB0[3], immediateIndexed
dcl_constantbuffer CB1[89], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture3d (uint,uint,uint,uint) t3
dcl_resource_buffer (uint,uint,uint,uint) t4
dcl_resource_buffer (float,float,float,float) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps linear v4.xy
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_temps 13
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id21.x; v0.y <- __input__.PositionWS_id21.y; v0.z <- __input__.PositionWS_id21.z; v0.w <- __input__.PositionWS_id21.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id22; v2.y <- __input__.normalWS_id18.x; v2.z <- __input__.normalWS_id18.y; v2.w <- __input__.normalWS_id18.z; 
//   v3.x <- __input__.ScreenPosition_id163.x; v3.y <- __input__.ScreenPosition_id163.y; v3.z <- __input__.ScreenPosition_id163.z; v3.w <- __input__.ScreenPosition_id163.w; 
//   v4.x <- __input__.TexCoord_id137.x; v4.y <- __input__.TexCoord_id137.y; 
//   v5.x <- __input__.IsFrontFace_id1; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 993 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_d30aa326356e22d8cd2c4800b44fec32.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id163.x; r0.y <- streams.ScreenPosition_id163.y

#line 959
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 960
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 726
mad r0.zw, v4.xxxy, cb0[0].xxxy, cb0[0].zzzw
sample r2.xyzw, r0.zwzz, t0.xyzw, s1  // r2.x <- <Compute_id184 return value>.x; r2.y <- <Compute_id184 return value>.y; r2.z <- <Compute_id184 return value>.z; r2.w <- <Compute_id184 return value>.w

#line 722
mad r0.zw, v4.xxxy, cb0[1].xxxy, cb0[1].zzzw
sample r3.xyzw, r0.zwzz, t1.xyzw, s1  // r3.x <- <Compute_id186 return value>.x; r3.y <- <Compute_id186 return value>.y; r3.z <- <Compute_id186 return value>.z

#line 741
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z

#line 436
dp2 r0.z, cb1[82].xxxx, cb1[28].zzzz

#line 428
mov r4.w, l(1.000000)

#line 755
mov r5.xyz, r1.xyzx  // r5.x <- streams.normalWS_id18.x; r5.y <- streams.normalWS_id18.y; r5.z <- streams.normalWS_id18.z
mov r5.w, v0.x  // r5.w <- streams.PositionWS_id21.x
mov r6.yz, v0.yyzy  // r6.y <- streams.PositionWS_id21.y; r6.z <- streams.PositionWS_id21.z
mov r7.xyz, r2.xyzx  // r7.x <- streams.matDiffuseVisible_id67.x; r7.y <- streams.matDiffuseVisible_id67.y; r7.z <- streams.matDiffuseVisible_id67.z
mov r8.xyz, l(0,0,0,0)  // r8.x <- directLightingContribution.x; r8.y <- directLightingContribution.y; r8.z <- directLightingContribution.z
mov r0.w, v2.x  // r0.w <- streams.DepthVS_id22
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, l(1)
  breakc_nz r3.w

#line 757
  ige r3.w, r1.w, cb1[25].x
  if_nz r3.w

#line 759
    break 

#line 760
  endif 

#line 670
  dp3 r3.w, r5.xyzx, -cb1[26].xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id47

#line 528
  ishl r6.w, r1.w, l(2)  // r6.w <- cascadeIndexBase

#line 535
  lt r7.w, cb1[r6.w + 83].x, r0.w

#line 538
  and r7.w, r7.w, l(1)  // r7.w <- cascadeIndex

#line 535
  iadd r9.xy, r6.wwww, l(1, 2, 0, 0)
  lt r8.w, cb1[r9.x + 83].x, r0.w

#line 538
  movc r7.w, r8.w, l(2), r7.w

#line 535
  lt r8.w, cb1[r9.y + 83].x, r0.w

#line 538
  movc r7.w, r8.w, l(3), r7.w

#line 435
  add r9.x, -r3.w, l(1.000000)
  max r9.x, r9.x, l(0.000000)  // r9.x <- normalOffsetScale

#line 436
  mul r9.x, r0.z, r9.x

#line 543
  mov r6.x, r5.w
  mad r4.xyz, r9.xxxx, r5.xyzx, r6.xyzx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 428
  iadd r6.x, r6.w, r7.w
  ishl r6.w, r6.x, l(2)
  dp4 r9.x, r4.xyzw, cb1[r6.w + 29].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r4.xyzw, cb1[r6.w + 30].xyzw  // r9.y <- shadowPosition.y
  dp4 r9.w, r4.xyzw, cb1[r6.w + 31].xyzw  // r9.w <- shadowPosition.z
  dp4 r10.x, r4.xyzw, cb1[r6.w + 32].xyzw  // r10.x <- shadowPosition.w

#line 429
  add r9.z, r9.w, -cb1[81].x  // r9.z <- shadowPosition.z

#line 430
  div r9.xyz, r9.xyzx, r10.xxxx

#line 404
  sample_c_lz r9.x, r9.xyxx, t2.xxxx, s0, r9.z  // r9.x <- <FilterShadow_id54 return value>

#line 549
  ilt r7.w, l(0), r7.w
  if_nz r7.w

#line 551
    iadd r7.w, r6.x, l(-1)
    add r7.w, -cb1[r7.w + 83].x, cb1[r6.x + 83].x  // r7.w <- splitSize

#line 552
  else 
    mov r7.w, cb1[r6.x + 83].x  // r7.w <- splitSize
  endif 

#line 553
  add r6.x, -r0.w, cb1[r6.x + 83].x
  div r6.x, r6.x, r7.w  // r6.x <- splitDist

#line 554
  lt r7.w, r6.x, l(0.200000)
  if_nz r7.w

#line 557
    if_nz r8.w

#line 559
      mov r9.yzw, r9.xxxx  // r9.y <- shadow.x; r9.z <- shadow.y; r9.w <- shadow.z
    else 

#line 556
      mul_sat r6.x, r6.x, l(5.000000)
      mad r7.w, r6.x, l(-2.000000), l(3.000000)
      mul r6.x, r6.x, r6.x
      mul r6.x, r6.x, r7.w  // r6.x <- lerpAmt

#line 428
      iadd r6.w, r6.w, l(4)
      dp4 r10.x, r4.xyzw, cb1[r6.w + 29].xyzw  // r10.x <- shadowPosition.x
      dp4 r10.y, r4.xyzw, cb1[r6.w + 30].xyzw  // r10.y <- shadowPosition.y
      dp4 r7.w, r4.xyzw, cb1[r6.w + 31].xyzw  // r7.w <- shadowPosition.z
      dp4 r4.x, r4.xyzw, cb1[r6.w + 32].xyzw  // r4.x <- shadowPosition.w

#line 429
      add r10.z, r7.w, -cb1[81].x  // r10.z <- shadowPosition.z

#line 430
      div r4.xyz, r10.xyzx, r4.xxxx  // r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z

#line 404
      sample_c_lz r4.x, r4.xyxx, t2.xxxx, s0, r4.z  // r4.x <- <FilterShadow_id54 return value>

#line 563
      add r4.y, -r4.x, r9.x
      mad r9.yzw, r6.xxxx, r4.yyyy, r4.xxxx  // r9.y <- shadow.x; r9.z <- shadow.y; r9.w <- shadow.z

#line 564
    endif 

#line 565
  else   // Prior locations: r4.x <- shadowPosition.x; r4.y <- shadowPosition.y; r4.z <- shadowPosition.z; r6.x <- splitDist
    mov r9.yzw, r9.xxxx  // r9.y <- shadow.x; r9.z <- shadow.y; r9.w <- shadow.z
  endif 

#line 672
  mul r4.xyz, r9.yzwy, cb1[27].xyzx
  mul r4.xyz, r3.wwww, r4.xyzx  // r4.x <- streams.lightColorNdotL_id43.x; r4.y <- streams.lightColorNdotL_id43.y; r4.z <- streams.lightColorNdotL_id43.z

#line 658
  mul r4.xyz, r4.xyzx, r7.xyzx

#line 765
  mad r8.xyz, r4.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r8.xyzx

#line 755
  iadd r1.w, r1.w, l(1)

#line 767
endloop 

#line 512
add r0.z, v1.z, -cb1[22].z
div r0.z, cb1[22].w, r0.z  // r0.z <- depth

#line 513
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb1[87].xyxx

#line 514
mad r0.z, r0.z, cb1[86].y, cb1[86].z
log r0.z, r0.z
max r0.z, r0.z, l(0.000000)

#line 515
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 514
ftoi r4.xyz, r0.xyzx  // r4.z <- slice

#line 515
mov r4.w, l(0)
ld r0.xyzw, r4.xyzw, t3.xyzw  // r0.x <- streams.lightData_id169.x; r0.y <- streams.lightData_id169.y

#line 649
and r0.z, r0.y, l(0x0000ffff)  // r0.z <- <GetMaxLightCount_id155 return value>

#line 775
mov r4.xyz, r1.xyzx  // r4.x <- streams.normalWS_id18.x; r4.y <- streams.normalWS_id18.y; r4.z <- streams.normalWS_id18.z
mov r4.w, v0.x  // r4.w <- streams.PositionWS_id21.x
mov r5.yz, v0.yyzy  // r5.y <- streams.PositionWS_id21.y; r5.z <- streams.PositionWS_id21.z
mov r6.xyz, r2.xyzx  // r6.x <- streams.matDiffuseVisible_id67.x; r6.y <- streams.matDiffuseVisible_id67.y; r6.z <- streams.matDiffuseVisible_id67.z
mov r7.xyz, r8.xyzx  // r7.x <- directLightingContribution.x; r7.y <- directLightingContribution.y; r7.z <- directLightingContribution.z
mov r9.x, r0.x  // r9.x <- streams.lightIndex_id170
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.z
  breakc_nz r1.w

#line 777
  if_nz r1.w

#line 779
    break 

#line 780
  endif 

#line 499
  ld r10.xyzw, r9.xxxx, t4.xyzw  // r10.x <- realLightIndex

#line 500
  iadd r9.x, r9.x, l(1)  // r9.x <- streams.lightIndex_id170

#line 502
  ishl r1.w, r10.x, l(1)
  ld r10.xyzw, r1.wwww, t5.xyzw  // r10.x <- pointLight1.x; r10.y <- pointLight1.y; r10.z <- pointLight1.z; r10.w <- pointLight1.w

#line 503
  iadd r1.w, r1.w, l(1)
  ld r11.xyzw, r1.wwww, t5.xyzw  // r11.x <- pointLight2.x; r11.y <- pointLight2.y; r11.z <- pointLight2.z

#line 381
  mov r5.x, r4.w
  add r9.yzw, -r5.xxyz, r10.xxyz  // r9.y <- lightVector.x; r9.z <- lightVector.y; r9.w <- lightVector.z

#line 382
  dp3 r1.w, r9.yzwy, r9.yzwy
  sqrt r3.w, r1.w  // r3.w <- lightVectorLength

#line 383
  div r9.yzw, r9.yyzw, r3.wwww  // r9.y <- lightVectorNorm.x; r9.z <- lightVectorNorm.y; r9.w <- lightVectorNorm.z

#line 327
  max r3.w, r1.w, l(0.000100)
  div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w  // r3.w <- attenuation

#line 300
  mul r1.w, r10.w, r1.w  // r1.w <- factor

#line 301
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 302
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id68 return value>

#line 328
  mul r1.w, r1.w, r3.w  // r1.w <- attenuation

#line 418
  mul r10.xyz, r1.wwww, r11.xyzx  // r10.x <- streams.lightColor_id42.x; r10.y <- streams.lightColor_id42.y; r10.z <- streams.lightColor_id42.z

#line 635
  dp3 r1.w, r4.xyzx, r9.yzwy
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id47

#line 637
  mul r9.yzw, r1.wwww, r10.xxyz  // r9.y <- streams.lightColorNdotL_id43.x; r9.z <- streams.lightColorNdotL_id43.y; r9.w <- streams.lightColorNdotL_id43.z

#line 658
  mul r9.yzw, r9.yyzw, r6.xxyz

#line 785
  mad r7.xyz, r9.yzwy, l(0.318310, 0.318310, 0.318310, 0.000000), r7.xyzx

#line 775
  iadd r0.w, r0.w, l(1)

#line 787
endloop   // r9.x <- streams.lightIndex_id170

#line 627
ushr r0.x, r0.y, l(16)  // r0.x <- <GetMaxLightCount_id167 return value>

#line 795
mov r4.xyz, r1.xyzx
mov r4.w, v0.x
mov r5.xy, v0.yzyy  // r5.x <- streams.PositionWS_id21.y; r5.y <- streams.PositionWS_id21.z
mov r5.w, r9.x  // r5.w <- streams.lightIndex_id170
mov r0.yzw, r2.xxyz  // r0.y <- streams.matDiffuseVisible_id67.x; r0.z <- streams.matDiffuseVisible_id67.y; r0.w <- streams.matDiffuseVisible_id67.z
mov r6.xyz, r7.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r3.w, r1.w, r0.x
  breakc_nz r3.w

#line 797
  if_nz r3.w

#line 799
    break 

#line 800
  endif 

#line 471
  ld r8.xyzw, r5.wwww, t4.xyzw  // r8.x <- realLightIndex

#line 472
  iadd r5.w, r5.w, l(1)  // r5.w <- streams.lightIndex_id170

#line 474
  ishl r3.w, r8.x, l(2)
  ld r8.xyzw, r3.wwww, t6.xyzw  // r8.x <- spotLight1.x; r8.y <- spotLight1.y; r8.z <- spotLight1.z

#line 477
  iadd r9.yzw, r3.wwww, l(0, 1, 2, 3)

#line 475
  ld r10.xyzw, r9.yyyy, t6.xyzw  // r10.x <- spotLight2.x; r10.y <- spotLight2.y; r10.z <- spotLight2.z

#line 476
  ld r11.xyzw, r9.zzzz, t6.xyzw  // r11.x <- spotLight3.x; r11.y <- spotLight3.y; r11.z <- spotLight3.z

#line 477
  ld r12.xyzw, r9.wwww, t6.xyzw  // r12.x <- spotLight4.x; r12.y <- spotLight4.y; r12.z <- spotLight4.z

#line 368
  mov r5.z, r4.w
  add r8.xyz, -r5.zxyz, r8.xyzx  // r8.x <- lightVector.x; r8.y <- lightVector.y; r8.z <- lightVector.z

#line 369
  dp3 r3.w, r8.xyzx, r8.xyzx
  sqrt r5.z, r3.w  // r5.z <- lightVectorLength

#line 370
  div r8.xyz, r8.xyzx, r5.zzzz  // r8.x <- lightVectorNorm.x; r8.y <- lightVectorNorm.y; r8.z <- lightVectorNorm.z

#line 320
  max r5.z, r3.w, l(0.000100)
  div r5.z, l(1.000000, 1.000000, 1.000000, 1.000000), r5.z  // r5.z <- attenuation

#line 294
  mul r3.w, r11.z, r3.w  // r3.w <- factor

#line 295
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor

#line 296
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id79 return value>

#line 321
  mul r3.w, r3.w, r5.z  // r3.w <- attenuation

#line 312
  dp3 r5.z, -r10.xyzx, r8.xyzx  // r5.z <- cd

#line 313
  mad_sat r5.z, r5.z, r11.x, r11.y  // r5.z <- attenuation

#line 314
  mul r5.z, r5.z, r5.z

#line 376
  mul r3.w, r3.w, r5.z  // r3.w <- attenuation

#line 410
  mul r9.yzw, r3.wwww, r12.xxyz  // r9.y <- streams.lightColor_id42.x; r9.z <- streams.lightColor_id42.y; r9.w <- streams.lightColor_id42.z

#line 613
  dp3 r3.w, r4.xyzx, r8.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id47

#line 615
  mul r8.xyz, r3.wwww, r9.yzwy  // r8.x <- streams.lightColorNdotL_id43.x; r8.y <- streams.lightColorNdotL_id43.y; r8.z <- streams.lightColorNdotL_id43.z

#line 658
  mul r8.xyz, r0.yzwy, r8.xyzx

#line 805
  mad r6.xyz, r8.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 795
  iadd r1.w, r1.w, l(1)

#line 807
endloop   // r5.w <- streams.lightIndex_id170

#line 601
mul r0.xyz, r2.xyzx, cb1[88].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id191 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id191 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id191 return value>.z

#line 834
mad r0.xyz, r6.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx  // r0.x <- streams.shadingColor_id71.x; r0.y <- streams.shadingColor_id71.y; r0.z <- streams.shadingColor_id71.z

#line 735
mad o0.xyz, r3.xyzx, cb0[2].xxxx, r0.xyzx

#line 997
mov o0.w, r2.w
ret 
// Approximately 191 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id84 = 1;
const static int TCascadeCountBase_id148 = 4;
const static int TLightCountBase_id149 = 1;
const static int TCascadeCount_id156 = 4;
const static int TLightCount_id157 = 1;
const static bool TBlendCascades_id158 = true;
const static bool TDepthRangeAuto_id159 = true;
const static bool TCascadeDebug_id160 = false;
const static bool TComputeTransmittance_id161 = false;
static const float PI_id200 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id201 = false;
const static bool TUseAlphaFromEmissive_id203 = false;
struct PS_STREAMS 
{
    float4 ScreenPosition_id163;
    float3 normalWS_id18;
    float4 PositionWS_id21;
    float2 TexCoord_id137;
    float DepthVS_id22;
    float4 ShadingPosition_id0;
    bool IsFrontFace_id1;
    float3 meshNormalWS_id16;
    float3 viewWS_id66;
    float3 shadingColor_id71;
    float matBlend_id39;
    float3 matNormal_id49;
    float4 matColorBase_id50;
    float4 matDiffuse_id51;
    float3 matDiffuseVisible_id67;
    float3 matSpecular_id53;
    float3 matSpecularVisible_id69;
    float matSpecularIntensity_id54;
    float matGlossiness_id52;
    float alphaRoughness_id68;
    float matAmbientOcclusion_id55;
    float matAmbientOcclusionDirectLightingFactor_id56;
    float matCavity_id57;
    float matCavityDiffuse_id58;
    float matCavitySpecular_id59;
    float4 matEmissive_id60;
    float matEmissiveIntensity_id61;
    float matScatteringStrength_id62;
    float2 matDiffuseSpecularAlphaBlend_id63;
    float3 matAlphaBlendColor_id64;
    float matAlphaDiscard_id65;
    float shadingColorAlpha_id72;
    float3 lightPositionWS_id40;
    float3 lightDirectionWS_id41;
    float3 lightColor_id42;
    float3 lightColorNdotL_id43;
    float3 lightSpecularColorNdotL_id44;
    float3 envLightDiffuseColor_id45;
    float3 envLightSpecularColor_id46;
    float lightDirectAmbientOcclusion_id48;
    float NdotL_id47;
    float NdotV_id70;
    float thicknessWS_id82;
    float3 shadowColor_id81;
    float3 H_id73;
    float NdotH_id74;
    float LdotH_id75;
    float VdotH_id76;
    uint2 lightData_id169;
    int lightIndex_id170;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id163 : SCREENPOSITION_ID163_SEM;
    float2 TexCoord_id137 : TEXCOORD0;
    bool IsFrontFace_id1 : SV_IsFrontFace;
};
struct VS_STREAMS 
{
    float4 Position_id20;
    float3 meshNormal_id15;
    float2 TexCoord_id137;
    float4 PositionH_id23;
    float3 meshNormalWS_id16;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float DepthVS_id22;
    float3 normalWS_id18;
    float4 ScreenPosition_id163;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id22 : DEPTH_VS;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id163 : SCREENPOSITION_ID163_SEM;
    float2 TexCoord_id137 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    float3 meshNormal_id15 : NORMAL;
    float2 TexCoord_id137 : TEXCOORD0;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
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
    float2 scale_id186;
    float2 offset_id187;
    float2 scale_id194;
    float2 offset_id195;
    float constantFloat_id197;
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
    float NearClipPlane_id164 = 1.0f;
    float FarClipPlane_id165 = 100.0f;
    float2 ZProjection_id166;
    float2 ViewSize_id167;
    float AspectRatio_id168;
    float4 _padding_PerView_Default;
    int LightCount_id83;
    DirectionalLightData Lights_id85[TMaxLightCount_id84];
    float2 ShadowMapTextureSize_id87;
    float2 ShadowMapTextureTexelSize_id88;
    float4x4 WorldToShadowCascadeUV_id150[TCascadeCountBase_id148 * TLightCountBase_id149];
    float4x4 InverseWorldToShadowCascadeUV_id151[TCascadeCountBase_id148 * TLightCountBase_id149];
    float4x4 ViewMatrices_id152[TCascadeCountBase_id148 * TLightCountBase_id149];
    float2 DepthRanges_id153[TCascadeCountBase_id148 * TLightCountBase_id149];
    float DepthBiases_id154[TLightCountBase_id149];
    float OffsetScales_id155[TLightCountBase_id149];
    float CascadeDepthSplits_id162[TCascadeCount_id156 * TLightCount_id157];
    float ClusterDepthScale_id173;
    float ClusterDepthBias_id174;
    float2 ClusterStride_id175;
    float3 AmbientLight_id178;
    float4x4 SkyMatrix_id179;
    float Intensity_id180;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id90;
    float2 Texture1TexelSize_id92;
    float2 Texture2TexelSize_id94;
    float2 Texture3TexelSize_id96;
    float2 Texture4TexelSize_id98;
    float2 Texture5TexelSize_id100;
    float2 Texture6TexelSize_id102;
    float2 Texture7TexelSize_id104;
    float2 Texture8TexelSize_id106;
    float2 Texture9TexelSize_id108;
};
Texture2D Texture0_id89;
Texture2D Texture1_id91;
Texture2D Texture2_id93;
Texture2D Texture3_id95;
Texture2D Texture4_id97;
Texture2D Texture5_id99;
Texture2D Texture6_id101;
Texture2D Texture7_id103;
Texture2D Texture8_id105;
Texture2D Texture9_id107;
TextureCube TextureCube0_id109;
TextureCube TextureCube1_id110;
TextureCube TextureCube2_id111;
TextureCube TextureCube3_id112;
Texture3D Texture3D0_id113;
Texture3D Texture3D1_id114;
Texture3D Texture3D2_id115;
Texture3D Texture3D3_id116;
SamplerState Sampler_id117;
SamplerState PointSampler_id118 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id119 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id120 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id121 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id122 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id123 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id124 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id125 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id126 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id127;
SamplerState Sampler1_id128;
SamplerState Sampler2_id129;
SamplerState Sampler3_id130;
SamplerState Sampler4_id131;
SamplerState Sampler5_id132;
SamplerState Sampler6_id133;
SamplerState Sampler7_id134;
SamplerState Sampler8_id135;
SamplerState Sampler9_id136;
Texture2D Texture_id183;
SamplerState Sampler_id184;
Texture2D Texture_id192;
Texture2D ShadowMapTexture_id86;
Texture3D<uint2> LightClusters_id171;
Buffer<uint> LightIndices_id172;
Buffer<float4> PointLights_id176;
Buffer<float4> SpotLights_id177;
float SmoothDistanceAttenuation_id79(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id68(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float4 Project_id53(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float GetAngularAttenuation_id81(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id80(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id79(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id70(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id68(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleThickness_id61(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id86.SampleLevel(LinearBorderSampler_id120, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id53(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
void CalculateAdjustedShadowSpacePixelPosition_id60(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id53(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id53(float4(ShadowMapTextureTexelSize_id88.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id53(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id59(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id53(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id53(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id88.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id53(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float ComputeAttenuation_id82(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id80(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id81(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id69(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id70(lightVectorLength, lightInvSquareRadius);
}
float FilterThickness_id55(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float filterRadiusInPixels = 1.5;
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id60(filterRadiusInPixels, pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id59(filterRadiusInPixels, pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleThickness_id61(adjustedPixelPositionShadowSpace, adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id54(float2 position, float positionDepth)
{
    return ShadowMapTexture_id86.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id121, position, positionDepth);
}
void ProcessLight_id83(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id82(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightColor_id42 = light.Color * attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id72(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id69(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color * attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
float ComputeThicknessFromCascade_id58(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id148;
    return FilterThickness_id55(pixelPositionWS, meshNormalWS, DepthRanges_id153[arrayIndex], WorldToShadowCascadeUV_id150[arrayIndex], InverseWorldToShadowCascadeUV_id151[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id57(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id150[cascadeIndex + lightIndex * TCascadeCountBase_id148]);
    shadowPosition.z -= DepthBiases_id154[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id54(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id56(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id88.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id170(float3 direction)
{
    return 0;
}
float4 Compute_id169(float3 direction)
{
    return 0;
}
void PrepareEnvironmentLight_id91(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
}
void PrepareEnvironmentLight_id87(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
}
float3 ComputeSpecularTextureProjection_id78(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id77(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id76(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id82 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id75(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id172.Load(streams.lightIndex_id170);
    streams.lightIndex_id170++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id177.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id177.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id177.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id177.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id83(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id67(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id66(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id65(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id82 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id64(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id172.Load(streams.lightIndex_id170);
    streams.lightIndex_id170++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id176.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id176.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id72(streams, pointLight);
}
void PrepareLightData_id71(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id166.y / (projectedDepth - ZProjection_id166.x);
    float2 texCoord = float2(streams.ScreenPosition_id163.x + 1, 1 - streams.ScreenPosition_id163.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id173 + ClusterDepthBias_id174), 0));
    streams.lightData_id169 = LightClusters_id171.Load(int4(texCoord * ClusterStride_id175, slice, 0));
    streams.lightIndex_id170 = streams.lightData_id169.x;
}
float3 ComputeSpecularTextureProjection_id50(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id49(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id48(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    int cascadeIndexBase = lightIndex * TCascadeCount_id156;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id156 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id22 > CascadeDepthSplits_id162[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float3 shadow = 1.0;
    float tempThickness = 999.0;
    float3 shadowPosition = position.xyz;
    shadowPosition += GetShadowPositionOffset_id56(OffsetScales_id155[lightIndex], streams.NdotL_id47, streams.normalWS_id18);
    if (cascadeIndex < TCascadeCount_id156)
    {
        shadow = ComputeShadowFromCascade_id57(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id162[cascadeIndexBase + cascadeIndex];
        float splitSize = nextSplit;
        if (cascadeIndex > 0)
        {
            splitSize = nextSplit - CascadeDepthSplits_id162[cascadeIndexBase + cascadeIndex - 1];
        }
        float splitDist = (nextSplit - streams.DepthVS_id22) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id156 - 1)
            {
            }
            else if (TBlendCascades_id158)
            {
                float nextShadow = ComputeShadowFromCascade_id57(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id82 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id47(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id42 = Lights_id85[lightIndex].Color;
    streams.lightDirectionWS_id41 = -Lights_id85[lightIndex].DirectionWS;
}
void ResetStream_id117()
{
}
void AfterLightingAndShading_id198()
{
}
void PrepareEnvironmentLight_id183(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
}
void PrepareEnvironmentLight_id180(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id91(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id55;
    float3 sampleDirection = mul(streams.normalWS_id18, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id45 = Compute_id169(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id63.x;
    sampleDirection = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id46 = Compute_id170(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id63.y;
}
float3 ComputeEnvironmentLightContribution_id191(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id67;
    return diffuseColor * streams.envLightDiffuseColor_id45;
}
void PrepareEnvironmentLight_id175(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id87(streams);
    float3 lightColor = AmbientLight_id178 * streams.matAmbientOcclusion_id55;
    streams.envLightDiffuseColor_id45 = lightColor;
    streams.envLightSpecularColor_id46 = lightColor;
}
void PrepareDirectLight_id164(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id75(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id81 = ComputeShadow_id76(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.shadowColor_id81 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id77(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id78(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id168(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y >> 16;
}
int GetMaxLightCount_id167(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y >> 16;
}
void PrepareDirectLights_id162()
{
}
void PrepareDirectLight_id151(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id64(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id81 = ComputeShadow_id65(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.shadowColor_id81 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id66(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id67(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id156(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y & 0xFFFF;
}
int GetMaxLightCount_id155(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y & 0xFFFF;
}
void PrepareDirectLights_id154(inout PS_STREAMS streams)
{
    PrepareLightData_id71(streams);
}
float3 ComputeDirectLightContribution_id190(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id67;
    return diffuseColor / PI_id200 * streams.lightColorNdotL_id43 * streams.matDiffuseSpecularAlphaBlend_id63.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id73 = normalize(streams.viewWS_id66 + streams.lightDirectionWS_id41);
    streams.NdotH_id74 = saturate(dot(streams.normalWS_id18, streams.H_id73));
    streams.LdotH_id75 = saturate(dot(streams.lightDirectionWS_id41, streams.H_id73));
    streams.VdotH_id76 = streams.LdotH_id75;
}
void PrepareDirectLight_id127(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id47(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id81 = ComputeShadow_id48(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.shadowColor_id81 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id49(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id50(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id129()
{
    return LightCount_id83;
}
int GetMaxLightCount_id130()
{
    return TMaxLightCount_id84;
}
void PrepareDirectLights_id125()
{
}
void PrepareForLightingAndShading_id195()
{
}
void PrepareMaterialForLightingAndShading_id113(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id48 = lerp(1.0, streams.matAmbientOcclusion_id55, streams.matAmbientOcclusionDirectLightingFactor_id56);
    streams.matDiffuseVisible_id67 = streams.matDiffuse_id51.rgb * lerp(1.0f, streams.matCavity_id57, streams.matCavityDiffuse_id58) * streams.matDiffuseSpecularAlphaBlend_id63.r * streams.matAlphaBlendColor_id64;
    streams.matSpecularVisible_id69 = streams.matSpecular_id53.rgb * streams.matSpecularIntensity_id54 * lerp(1.0f, streams.matCavity_id57, streams.matCavitySpecular_id59) * streams.matDiffuseSpecularAlphaBlend_id63.g * streams.matAlphaBlendColor_id64;
    streams.NdotV_id70 = max(dot(streams.normalWS_id18, streams.viewWS_id66), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id52;
    streams.alphaRoughness_id68 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id112(inout PS_STREAMS streams)
{
    streams.lightPositionWS_id40 = 0;
    streams.lightDirectionWS_id41 = 0;
    streams.lightColor_id42 = 0;
    streams.lightColorNdotL_id43 = 0;
    streams.lightSpecularColorNdotL_id44 = 0;
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
    streams.lightDirectAmbientOcclusion_id48 = 1.0f;
    streams.NdotL_id47 = 0;
}
void UpdateNormalFromTangentSpace_id23(float3 normalInTangentSpace)
{
}
float4 Compute_id188()
{
    return float4(constantFloat_id197, constantFloat_id197, constantFloat_id197, constantFloat_id197);
}
float4 Compute_id186(inout PS_STREAMS streams)
{
    return Texture_id192.Sample(Sampler_id184, streams.TexCoord_id137 * scale_id194 + offset_id195).rgba;
}
float4 Compute_id184(inout PS_STREAMS streams)
{
    return Texture_id183.Sample(Sampler_id184, streams.TexCoord_id137 * scale_id186 + offset_id187).rgba;
}
void ResetStream_id118(inout PS_STREAMS streams)
{
    ResetStream_id117();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id243(inout PS_STREAMS streams)
{
    streams.shadingColor_id71 += streams.matEmissive_id60.rgb * streams.matEmissiveIntensity_id61;
}
void Compute_id242(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id49);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id112(streams);
    PrepareMaterialForLightingAndShading_id113(streams);

    {
        PrepareForLightingAndShading_id195();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id125();
        const int maxLightCount = GetMaxLightCount_id130();
        int count = GetLightCount_id129();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id127(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id190(streams);
            }
        }
    }

    {
        PrepareDirectLights_id154(streams);
        const int maxLightCount = GetMaxLightCount_id155(streams);
        int count = GetLightCount_id156(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id151(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id190(streams);
            }
        }
    }

    {
        PrepareDirectLights_id162();
        const int maxLightCount = GetMaxLightCount_id167(streams);
        int count = GetLightCount_id168(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id164(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id190(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id175(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id191(streams);
        }
    }

    {
        PrepareEnvironmentLight_id180(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id191(streams);
        }
    }

    {
        PrepareEnvironmentLight_id183(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id191(streams);
        }
    }
    streams.shadingColor_id71 += directLightingContribution * PI_id200 + environmentLightingContribution;
    streams.shadingColorAlpha_id72 = streams.matDiffuse_id51.a;

    {
        AfterLightingAndShading_id198();
    }
}
void Compute_id226(inout PS_STREAMS streams)
{
    streams.matEmissiveIntensity_id61 = Compute_id188().r;
}
void Compute_id221(inout PS_STREAMS streams)
{
    streams.matEmissive_id60 = Compute_id186(streams).rgba;
}
void Compute_id216(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id184(streams);
    streams.matDiffuse_id51 = colorBase;
    streams.matColorBase_id50 = colorBase;
}
void ResetStream_id119(inout PS_STREAMS streams)
{
    ResetStream_id118(streams);
    streams.matNormal_id49 = float3(0, 0, 1);
    streams.matColorBase_id50 = 0.0f;
    streams.matDiffuse_id51 = 0.0f;
    streams.matDiffuseVisible_id67 = 0.0f;
    streams.matSpecular_id53 = 0.0f;
    streams.matSpecularVisible_id69 = 0.0f;
    streams.matSpecularIntensity_id54 = 1.0f;
    streams.matGlossiness_id52 = 0.0f;
    streams.alphaRoughness_id68 = 1.0f;
    streams.matAmbientOcclusion_id55 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id56 = 0.0f;
    streams.matCavity_id57 = 1.0f;
    streams.matCavityDiffuse_id58 = 0.0f;
    streams.matCavitySpecular_id59 = 0.0f;
    streams.matEmissive_id60 = 0.0f;
    streams.matEmissiveIntensity_id61 = 0.0f;
    streams.matScatteringStrength_id62 = 1.0f;
    streams.matDiffuseSpecularAlphaBlend_id63 = 1.0f;
    streams.matAlphaBlendColor_id64 = 1.0f;
    streams.matAlphaDiscard_id65 = 0.1f;
}
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
void Compute_id44(inout PS_STREAMS streams)
{

    {
        Compute_id216(streams);
    }

    {
        Compute_id221(streams);
    }

    {
        Compute_id226(streams);
    }

    {
        Compute_id242(streams);
    }

    {
        Compute_id243(streams);
    }
}
void ResetStream_id43(inout PS_STREAMS streams)
{
    ResetStream_id119(streams);
    streams.shadingColorAlpha_id72 = 1.0f;
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
float4 Shading_id31(inout PS_STREAMS streams)
{
    streams.viewWS_id66 = normalize(Eye_id30.xyz - streams.PositionWS_id21.xyz);
    streams.shadingColor_id71 = 0;
    ResetStream_id43(streams);
    Compute_id44(streams);
    return float4(streams.shadingColor_id71, streams.shadingColorAlpha_id72);
}
void PSMain_id1()
{
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
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id2 = Shading_id31(streams);
}
void GenerateNormal_PS_id22(inout PS_STREAMS streams)
{
    if (dot(streams.normalWS_id18, streams.normalWS_id18) > 0)
        streams.normalWS_id18 = normalize(streams.normalWS_id18);
    streams.meshNormalWS_id16 = streams.normalWS_id18;
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void PSMain_id20(inout PS_STREAMS streams)
{
    GenerateNormal_PS_id22(streams);
    PSMain_id3(streams);
}
void VSMain_id19(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id21(streams);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id21 = __input__.PositionWS_id21;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id22 = __input__.DepthVS_id22;
    streams.normalWS_id18 = __input__.normalWS_id18;
    streams.ScreenPosition_id163 = __input__.ScreenPosition_id163;
    streams.TexCoord_id137 = __input__.TexCoord_id137;
    streams.IsFrontFace_id1 = __input__.IsFrontFace_id1;
    streams.ScreenPosition_id163 /= streams.ScreenPosition_id163.w;
    PSMain_id20(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    streams.TexCoord_id137 = __input__.TexCoord_id137;
    VSMain_id19(streams);
    streams.ScreenPosition_id163 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.ScreenPosition_id163 = streams.ScreenPosition_id163;
    __output__.TexCoord_id137 = streams.TexCoord_id137;
    return __output__;
}
