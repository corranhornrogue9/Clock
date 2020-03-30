/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorTextureScaledOffsetDynamicSampler<Material.DiffuseMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale,Material.TextureOffset>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecular,rgb> [{computeColorSource = ComputeColorTextureScaledOffsetDynamicSampler<Material.SpecularMap,TEXCOORD0,Material.Sampler.i0,rgba,Material.TextureScale.i1,Material.TextureOffset.i1>}], mixin MaterialSurfaceSetStreamFromComputeColor<matSpecularIntensity,r> [{computeColorSource = ComputeColorConstantFloatLink<Material.SpecularIntensityValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<true>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
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
@C    constantFloat_id189 => Material.GlossinessValue
@C    scale_id197 => Material.TextureScale.i1
@C    offset_id198 => Material.TextureOffset.i1
@C    constantFloat_id200 => Material.SpecularIntensityValue
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
@R    Texture_id195 => Material.SpecularMap [Stage: None, Slot: (-1--1)]
@R    Texture_id195 => Material.SpecularMap [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id207 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
@R    EnvironmentLightingDFG_LUT_id207 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: None, Slot: (-1--1)]
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
@R    LinearSampler_id119 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    LinearClampCompareLessEqualSampler_id121 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (1-1)]
@R    Sampler_id184 => Material.Sampler.i0 [Stage: Pixel, Slot: (2-2)]
@R    Texture_id183 => Material.DiffuseMap [Stage: Pixel, Slot: (0-0)]
@R    Texture_id195 => Material.SpecularMap [Stage: Pixel, Slot: (1-1)]
@R    EnvironmentLightingDFG_LUT_id207 => MaterialSpecularMicrofacetEnvironmentGGXLUT.EnvironmentLightingDFG_LUT [Stage: Pixel, Slot: (2-2)]
@R    ShadowMapTexture_id86 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: Pixel, Slot: (3-3)]
@R    LightClusters_id171 => LightClustered.LightClusters [Stage: Pixel, Slot: (4-4)]
@R    LightIndices_id172 => LightClustered.LightIndices [Stage: Pixel, Slot: (5-5)]
@R    PointLights_id176 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (6-6)]
@R    SpotLights_id177 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (7-7)]
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
@S    MaterialSurfaceGlossinessMap => d7edef2f457bc2e68a2644819057820d
@S    ComputeColorConstantFloatLink => 12410f8b57e4015ff1a3fce241440b62
@S    MaterialSurfaceSetStreamFromComputeColor => c2d77b2aa35d9f24b852eb4a5fdc9872
@S    IMaterialSurfaceVertex => 0c5c73d45a721c87c347ae02954665ce
@S    MaterialVertexStream => 88c18bd25810bbb05cdd7c08ebc8c4a2
@S    MaterialDisplacementStream => 2f1b0f776096589363e85354152ef62e
@S    IMaterialSurfaceDomain => f21c77ffcac748537e778154fecb0921
@S    MaterialDomainStream => cf19dcc996d2d1de16031ccad6eafac0
@S    MaterialTessellationStream => fc291f489bf9de3c2dd85f2960efacc9
@S    MaterialSurfaceLightingAndShading => 68ac8c9f25624fdc15ea262fbc868030
@S    IMaterialSurfaceShading => 43b5938a14c30cfc19b2ddcb76824cbe
@S    MaterialSurfaceShadingDiffuseLambert => ebe9647a0e11903ef16a793ffdbdd34c
@S    MaterialSurfaceShadingSpecularMicrofacet => d73b976ae539136e12c8ad3b9c23fde4
@S    BRDFMicrofacet => 7e71ebf42695365a986502c8c568bd4c
@S    IMaterialSpecularMicrofacetFresnelFunction => 202cfaa696414bc80515f7cc9128dba0
@S    IMaterialSpecularMicrofacetVisibilityFunction => 3426c6d9f0a56bcb6863f3537df6b8dd
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => b91eb150f041a287afbd1a1317f3218b
@S    IMaterialSpecularMicrofacetEnvironmentFunction => 6fe5dc0428d341b5128f0268a3b15d6e
@S    MaterialSpecularMicrofacetEnvironmentGGXLUT => 1d429af3e4e1cf62dbc90503fc7cf2bd
@S    MaterialSpecularMicrofacetFresnelSchlick => 7c4f716bc4013816bc7dfd0875fe37c0
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => 786a567442fa4cebef54fd786bf5f585
@S    MaterialSpecularMicrofacetNormalDistributionGGX => db0c804e82483452e11bd0226bd029ff
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
#line 1038 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c4146fa9a81b7a4db5df70b2d6a268c4.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 1122
mov o0.xyzw, r0.xyzw

#line 989
dp4 r1.x, r0.xyzw, cb1[16].xyzw  // r1.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r1.y, r0.xyzw, cb1[17].xyzw  // r1.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r1.z, r0.xyzw, cb1[18].xyzw  // r1.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r1.w, r0.xyzw, cb1[19].xyzw  // r1.w <- <ComputeShadingPosition_id11 return value>.w

#line 1122
mov o1.xyzw, r1.xyzw
mov o3.xyzw, r1.xyzw
mov o2.x, r1.w

#line 1073
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 1122
mov o4.xy, v2.xyxx
ret 
// Approximately 17 instruction slots used
@G    Pixel => 25422f3d07f1d1f91b7090b72980f8ae
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
//   float constantFloat_id189;         // Offset:   16 Size:     4
//   float2 scale_id197;                // Offset:   20 Size:     8
//   float2 offset_id198;               // Offset:   32 Size:     8
//   float constantFloat_id200;         // Offset:   40 Size:     4
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
//   float4 Eye_id30;                   // Offset:  336 Size:    16
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
// LinearSampler_id119               sampler      NA          NA             s0      1 
// LinearClampCompareLessEqualSampler_id121  sampler_c      NA          NA             s1      1 
// Sampler_id184                     sampler      NA          NA             s2      1 
// Texture_id183                     texture  float4          2d             t0      1 
// Texture_id195                     texture  float4          2d             t1      1 
// EnvironmentLightingDFG_LUT_id207    texture  float4          2d             t2      1 
// ShadowMapTexture_id86             texture  float4          2d             t3      1 
// LightClusters_id171               texture   uint2          3d             t4      1 
// LightIndices_id172                texture    uint         buf             t5      1 
// PointLights_id176                 texture  float4         buf             t6      1 
// SpotLights_id177                  texture  float4         buf             t7      1 
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
dcl_sampler s0, mode_default
dcl_sampler s1, mode_comparison
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture3d (uint,uint,uint,uint) t4
dcl_resource_buffer (uint,uint,uint,uint) t5
dcl_resource_buffer (float,float,float,float) t6
dcl_resource_buffer (float,float,float,float) t7
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.z, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_input_ps linear v3.xyw
dcl_input_ps linear v4.xy
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_temps 20
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
#line 1101 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_c4146fa9a81b7a4db5df70b2d6a268c4.hlsl"
div r0.xy, v3.xyxx, v3.wwww  // r0.x <- streams.ScreenPosition_id163.x; r0.y <- streams.ScreenPosition_id163.y

#line 1067
dp3 r0.z, v2.yzwy, v2.yzwy
lt r0.w, l(0.000000), r0.z

#line 1068
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, v2.yzwy  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z
movc r1.xyz, r0.wwww, r1.xyzx, v2.yzwy

#line 1042
add r2.xyz, -v0.xyzx, cb1[21].xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx  // r2.x <- streams.viewWS_id66.x; r2.y <- streams.viewWS_id66.y; r2.z <- streams.viewWS_id66.z

#line 801
mad r0.zw, v4.xxxy, cb0[0].xxxy, cb0[0].zzzw
sample r3.xyzw, r0.zwzz, t0.xyzw, s2  // r3.x <- <Compute_id243 return value>.x; r3.y <- <Compute_id243 return value>.y; r3.z <- <Compute_id243 return value>.z; r3.w <- <Compute_id243 return value>.w

#line 793
mad r0.zw, v4.xxxy, cb0[1].yyyz, cb0[2].xxxy
sample r4.xyzw, r0.zwzz, t1.xyzw, s2  // r4.x <- <Compute_id247 return value>.x; r4.y <- <Compute_id247 return value>.y; r4.z <- <Compute_id247 return value>.z

#line 812
movc r1.xyz, v5.xxxx, r1.xyzx, -r1.xyzx  // r1.x <- streams.normalWS_id18.x; r1.y <- streams.normalWS_id18.y; r1.z <- streams.normalWS_id18.z

#line 767
mul r5.xyz, r4.xyzx, cb0[2].zzzz  // r5.x <- streams.matSpecularVisible_id69.x; r5.y <- streams.matSpecularVisible_id69.y; r5.z <- streams.matSpecularVisible_id69.z

#line 768
dp3 r0.z, r1.xyzx, r2.xyzx
max r6.y, r0.z, l(0.000100)  // r6.y <- streams.NdotV_id70

#line 769
add r0.z, -cb0[1].x, l(1.000000)  // r0.z <- roughness

#line 770
mul r0.z, r0.z, r0.z
max r0.z, r0.z, l(0.001000)  // r0.z <- streams.alphaRoughness_id68

#line 461
dp2 r0.w, cb1[82].xxxx, cb1[28].zzzz

#line 453
mov r7.w, l(1.000000)

#line 830
mov r1.w, r6.y  // r1.w <- streams.NdotV_id70
mov r8.xyz, r1.xyzx  // r8.x <- streams.normalWS_id18.x; r8.y <- streams.normalWS_id18.y; r8.z <- streams.normalWS_id18.z
mov r8.w, v0.x  // r8.w <- streams.PositionWS_id21.x
mov r9.xy, v0.yzyy  // r9.x <- streams.PositionWS_id21.y; r9.y <- streams.PositionWS_id21.z
mov r9.zw, r2.xxxy  // r9.z <- streams.viewWS_id66.x; r9.w <- streams.viewWS_id66.y
mov r10.z, r2.z  // r10.z <- streams.viewWS_id66.z
mov r11.xyz, r3.xyzx  // r11.x <- streams.matDiffuseVisible_id67.x; r11.y <- streams.matDiffuseVisible_id67.y; r11.z <- streams.matDiffuseVisible_id67.z
mov r12.xyz, r5.xyzx  // r12.x <- streams.matSpecularVisible_id69.x; r12.y <- streams.matSpecularVisible_id69.y; r12.z <- streams.matSpecularVisible_id69.z
mov r12.w, r0.z  // r12.w <- streams.alphaRoughness_id68
mov r13.xyz, l(0,0,0,0)  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z
mov r2.w, v2.x  // r2.w <- streams.DepthVS_id22
mov r4.w, l(0)  // r4.w <- i
loop 
  ige r5.w, r4.w, l(1)
  breakc_nz r5.w

#line 832
  ige r5.w, r4.w, cb1[25].x
  if_nz r5.w

#line 834
    break 

#line 835
  endif 

#line 738
  dp3 r5.w, r8.xyzx, -cb1[26].xyzx
  max r5.w, r5.w, l(0.000100)  // r5.w <- streams.NdotL_id47

#line 571
  ishl r6.z, r4.w, l(2)  // r6.z <- cascadeIndexBase

#line 578
  lt r6.w, cb1[r6.z + 83].x, r2.w

#line 581
  and r6.w, r6.w, l(1)  // r6.w <- cascadeIndex

#line 578
  iadd r14.xy, r6.zzzz, l(1, 2, 0, 0)
  lt r10.w, cb1[r14.x + 83].x, r2.w

#line 581
  movc r6.w, r10.w, l(2), r6.w

#line 578
  lt r10.w, cb1[r14.y + 83].x, r2.w

#line 581
  movc r6.w, r10.w, l(3), r6.w

#line 460
  add r11.w, -r5.w, l(1.000000)
  max r11.w, r11.w, l(0.000000)  // r11.w <- normalOffsetScale

#line 461
  mul r11.w, r0.w, r11.w

#line 586
  mov r14.x, r8.w
  mov r14.yz, r9.xxyx
  mad r7.xyz, r11.wwww, r8.xyzx, r14.xyzx  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 453
  iadd r6.z, r6.z, r6.w
  ishl r11.w, r6.z, l(2)
  dp4 r14.x, r7.xyzw, cb1[r11.w + 29].xyzw  // r14.x <- shadowPosition.x
  dp4 r14.y, r7.xyzw, cb1[r11.w + 30].xyzw  // r14.y <- shadowPosition.y
  dp4 r13.w, r7.xyzw, cb1[r11.w + 31].xyzw  // r13.w <- shadowPosition.z
  dp4 r14.w, r7.xyzw, cb1[r11.w + 32].xyzw  // r14.w <- shadowPosition.w

#line 454
  add r14.z, r13.w, -cb1[81].x  // r14.z <- shadowPosition.z

#line 455
  div r14.xyz, r14.xyzx, r14.wwww

#line 415
  sample_c_lz r13.w, r14.xyxx, t3.xxxx, s1, r14.z  // r13.w <- <FilterShadow_id58 return value>

#line 592
  ilt r6.w, l(0), r6.w
  if_nz r6.w

#line 594
    iadd r6.w, r6.z, l(-1)
    add r6.w, -cb1[r6.w + 83].x, cb1[r6.z + 83].x  // r6.w <- splitSize

#line 595
  else 
    mov r6.w, cb1[r6.z + 83].x  // r6.w <- splitSize
  endif 

#line 596
  add r6.z, -r2.w, cb1[r6.z + 83].x
  div r6.z, r6.z, r6.w  // r6.z <- splitDist

#line 597
  lt r6.w, r6.z, l(0.200000)
  if_nz r6.w

#line 600
    if_nz r10.w

#line 602
      mov r14.xyz, r13.wwww  // r14.x <- shadow.x; r14.y <- shadow.y; r14.z <- shadow.z
    else 

#line 599
      mul_sat r6.z, r6.z, l(5.000000)
      mad r6.w, r6.z, l(-2.000000), l(3.000000)
      mul r6.z, r6.z, r6.z
      mul r6.z, r6.z, r6.w  // r6.z <- lerpAmt

#line 453
      iadd r6.w, r11.w, l(4)
      dp4 r15.x, r7.xyzw, cb1[r6.w + 29].xyzw  // r15.x <- shadowPosition.x
      dp4 r15.y, r7.xyzw, cb1[r6.w + 30].xyzw  // r15.y <- shadowPosition.y
      dp4 r10.w, r7.xyzw, cb1[r6.w + 31].xyzw  // r10.w <- shadowPosition.z
      dp4 r6.w, r7.xyzw, cb1[r6.w + 32].xyzw  // r6.w <- shadowPosition.w

#line 454
      add r15.z, r10.w, -cb1[81].x  // r15.z <- shadowPosition.z

#line 455
      div r7.xyz, r15.xyzx, r6.wwww  // r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z

#line 415
      sample_c_lz r6.w, r7.xyxx, t3.xxxx, s1, r7.z  // r6.w <- <FilterShadow_id58 return value>

#line 606
      add r7.x, -r6.w, r13.w
      mad r14.xyz, r6.zzzz, r7.xxxx, r6.wwww  // r14.x <- shadow.x; r14.y <- shadow.y; r14.z <- shadow.z

#line 607
    endif 

#line 608
  else   // Prior locations: r7.x <- shadowPosition.x; r7.y <- shadowPosition.y; r7.z <- shadowPosition.z; r6.z <- splitDist
    mov r14.xyz, r13.wwww  // r14.x <- shadow.x; r14.y <- shadow.y; r14.z <- shadow.z
  endif 

#line 740
  mul r7.xyz, r14.xyzx, cb1[27].xyzx
  mul r7.xyz, r5.wwww, r7.xyzx  // r7.x <- streams.lightColorNdotL_id43.x; r7.y <- streams.lightColorNdotL_id43.y; r7.z <- streams.lightColorNdotL_id43.z

#line 730
  mov r10.xy, r9.zwzz
  add r10.xyw, r10.xyxz, -cb1[26].xyxz
  dp3 r6.z, r10.xywx, r10.xywx
  rsq r6.z, r6.z
  mul r10.xyw, r6.zzzz, r10.xyxw  // r10.x <- streams.H_id73.x; r10.y <- streams.H_id73.y; r10.w <- streams.H_id73.z

#line 731
  dp3_sat r6.z, r8.xyzx, r10.xywx  // r6.z <- streams.NdotH_id74

#line 732
  dp3_sat r6.w, -cb1[26].xyzx, r10.xywx  // r6.w <- streams.LdotH_id75

#line 724
  add r10.xyw, -r12.xyxz, l(1.000000, 1.000000, 0.000000, 1.000000)
  mul r14.xyz, r10.xywx, r11.xyzx  // r14.x <- diffuseColor.x; r14.y <- diffuseColor.y; r14.z <- diffuseColor.z

#line 726
  mul r14.xyz, r7.xyzx, r14.xyzx

#line 840
  mad r14.xyz, r14.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 396
  add r6.w, -r6.w, l(1.000000)
  mul r11.w, r6.w, r6.w
  mul r11.w, r11.w, r11.w
  mul r6.w, r6.w, r11.w
  mad r10.xyw, r10.xyxw, r6.wwww, r12.xyxz  // r10.x <- <FresnelSchlick_id143 return value>.x; r10.y <- <FresnelSchlick_id143 return value>.y; r10.w <- <FresnelSchlick_id143 return value>.z

#line 391
  mul r6.w, r12.w, l(0.500000)  // r6.w <- k

#line 392
  mad r11.w, -r12.w, l(0.500000), l(1.000000)
  mad r13.w, r5.w, r11.w, r6.w
  div r13.w, r5.w, r13.w  // r13.w <- <VisibilityhSchlickGGX_id159 return value>
  mad r6.w, r1.w, r11.w, r6.w
  div r6.w, r1.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id159 return value>

#line 440
  mul r6.w, r6.w, r13.w
  mul r5.w, r1.w, r5.w
  div r5.w, r6.w, r5.w  // r5.w <- <VisibilitySmithSchlickGGX_id161 return value>

#line 434
  mul r6.w, r12.w, r12.w  // r6.w <- alphaR2

#line 435
  mul r6.z, r6.z, r6.z
  mad r11.w, r12.w, r12.w, l(-1.000000)
  mad r6.z, r6.z, r11.w, l(1.000000)
  max r6.z, r6.z, l(0.000100)  // r6.z <- d

#line 436
  mul r6.z, r6.z, r6.z
  mul r6.z, r6.z, l(3.141593)
  div r6.z, r6.w, r6.z  // r6.z <- <NormalDistributionGGX_id173 return value>

#line 716
  mul r10.xyw, r5.wwww, r10.xyxw
  mul r10.xyw, r6.zzzz, r10.xyxw
  mul r7.xyz, r7.xyzx, r10.xywx

#line 844
  mad r13.xyz, r7.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r14.xyzx  // r13.x <- directLightingContribution.x; r13.y <- directLightingContribution.y; r13.z <- directLightingContribution.z

#line 830
  iadd r4.w, r4.w, l(1)

#line 846
endloop 

#line 543
add r0.w, v1.z, -cb1[22].z
div r0.w, cb1[22].w, r0.w  // r0.w <- depth

#line 544
mad r0.xy, r0.xyxx, l(1.000000, -1.000000, 0.000000, 0.000000), l(1.000000, 1.000000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, cb1[87].xyxx

#line 545
mad r0.w, r0.w, cb1[86].y, cb1[86].z
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)

#line 546
mul r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)

#line 545
ftoi r7.xyz, r0.xywx  // r7.z <- slice

#line 546
mov r7.w, l(0)
ld r7.xyzw, r7.xyzw, t4.xyzw  // r7.x <- streams.lightData_id169.x; r7.y <- streams.lightData_id169.y

#line 704
and r0.x, r7.y, l(0x0000ffff)  // r0.x <- <GetMaxLightCount_id214 return value>

#line 854
mov r8.xyz, r1.xyzx
mov r8.w, v0.x
mov r9.xy, v0.yzyy
mov r9.zw, r2.xxxy
mov r10.z, r2.z
mov r11.xyz, r3.xyzx
mov r12.xyz, r5.xyzx
mov r12.w, r0.z
mov r0.w, r6.y  // r0.w <- streams.NdotV_id70
mov r0.y, r7.x  // r0.y <- streams.lightIndex_id170
mov r14.xyz, r13.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z
mov r1.w, l(0)  // r1.w <- i
loop 
  ige r2.w, r1.w, r0.x
  breakc_nz r2.w

#line 856
  if_nz r2.w

#line 858
    break 

#line 859
  endif 

#line 530
  ld r15.xyzw, r0.yyyy, t5.xyzw  // r15.x <- realLightIndex

#line 531
  iadd r0.y, r0.y, l(1)  // r0.y <- streams.lightIndex_id170

#line 533
  ishl r2.w, r15.x, l(1)
  ld r15.xyzw, r2.wwww, t6.xyzw  // r15.x <- pointLight1.x; r15.y <- pointLight1.y; r15.z <- pointLight1.z; r15.w <- pointLight1.w

#line 534
  iadd r2.w, r2.w, l(1)
  ld r16.xyzw, r2.wwww, t6.xyzw  // r16.x <- pointLight2.x; r16.y <- pointLight2.y; r16.z <- pointLight2.z

#line 383
  mov r17.x, r8.w
  mov r17.yz, r9.xxyx
  add r15.xyz, r15.xyzx, -r17.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 384
  dp3 r2.w, r15.xyzx, r15.xyzx
  sqrt r4.w, r2.w  // r4.w <- lightVectorLength

#line 385
  div r15.xyz, r15.xyzx, r4.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 329
  max r4.w, r2.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 302
  mul r2.w, r15.w, r2.w  // r2.w <- factor

#line 303
  mad r2.w, -r2.w, r2.w, l(1.000000)
  max r2.w, r2.w, l(0.000000)  // r2.w <- smoothFactor

#line 304
  mul r2.w, r2.w, r2.w  // r2.w <- <SmoothDistanceAttenuation_id72 return value>

#line 330
  mul r2.w, r2.w, r4.w  // r2.w <- attenuation

#line 429
  mul r16.xyz, r2.wwww, r16.xyzx  // r16.x <- streams.lightColor_id42.x; r16.y <- streams.lightColor_id42.y; r16.z <- streams.lightColor_id42.z

#line 690
  dp3 r2.w, r8.xyzx, r15.xyzx
  max r2.w, r2.w, l(0.000100)  // r2.w <- streams.NdotL_id47

#line 692
  mul r16.xyz, r2.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id43.x; r16.y <- streams.lightColorNdotL_id43.y; r16.z <- streams.lightColorNdotL_id43.z

#line 730
  mov r10.xy, r9.zwzz
  add r10.xyw, r15.xyxz, r10.xyxz
  dp3 r4.w, r10.xywx, r10.xywx
  rsq r4.w, r4.w
  mul r10.xyw, r4.wwww, r10.xyxw  // r10.x <- streams.H_id73.x; r10.y <- streams.H_id73.y; r10.w <- streams.H_id73.z

#line 731
  dp3_sat r4.w, r8.xyzx, r10.xywx  // r4.w <- streams.NdotH_id74

#line 732
  dp3_sat r5.w, r15.xyzx, r10.xywx  // r5.w <- streams.LdotH_id75

#line 724
  add r10.xyw, -r12.xyxz, l(1.000000, 1.000000, 0.000000, 1.000000)
  mul r15.xyz, r10.xywx, r11.xyzx  // r15.x <- diffuseColor.x; r15.y <- diffuseColor.y; r15.z <- diffuseColor.z

#line 726
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 864
  mad r15.xyz, r15.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r14.xyzx  // r15.x <- directLightingContribution.x; r15.y <- directLightingContribution.y; r15.z <- directLightingContribution.z

#line 396
  add r5.w, -r5.w, l(1.000000)
  mul r6.z, r5.w, r5.w
  mul r6.z, r6.z, r6.z
  mul r5.w, r5.w, r6.z
  mad r10.xyw, r10.xyxw, r5.wwww, r12.xyxz  // r10.x <- <FresnelSchlick_id143 return value>.x; r10.y <- <FresnelSchlick_id143 return value>.y; r10.w <- <FresnelSchlick_id143 return value>.z

#line 391
  mul r5.w, r12.w, l(0.500000)  // r5.w <- k

#line 392
  mad r6.z, -r12.w, l(0.500000), l(1.000000)
  mad r6.w, r2.w, r6.z, r5.w
  div r6.w, r2.w, r6.w  // r6.w <- <VisibilityhSchlickGGX_id159 return value>
  mad r5.w, r0.w, r6.z, r5.w
  div r5.w, r0.w, r5.w  // r5.w <- <VisibilityhSchlickGGX_id159 return value>

#line 440
  mul r5.w, r5.w, r6.w
  mul r2.w, r0.w, r2.w
  div r2.w, r5.w, r2.w  // r2.w <- <VisibilitySmithSchlickGGX_id161 return value>

#line 434
  mul r5.w, r12.w, r12.w  // r5.w <- alphaR2

#line 435
  mul r4.w, r4.w, r4.w
  mad r6.z, r12.w, r12.w, l(-1.000000)
  mad r4.w, r4.w, r6.z, l(1.000000)
  max r4.w, r4.w, l(0.000100)  // r4.w <- d

#line 436
  mul r4.w, r4.w, r4.w
  mul r4.w, r4.w, l(3.141593)
  div r4.w, r5.w, r4.w  // r4.w <- <NormalDistributionGGX_id173 return value>

#line 716
  mul r10.xyw, r2.wwww, r10.xyxw
  mul r10.xyw, r4.wwww, r10.xyxw
  mul r10.xyw, r16.xyxz, r10.xyxw

#line 868
  mad r14.xyz, r10.xywx, l(0.250000, 0.250000, 0.250000, 0.000000), r15.xyzx  // r14.x <- directLightingContribution.x; r14.y <- directLightingContribution.y; r14.z <- directLightingContribution.z

#line 854
  iadd r1.w, r1.w, l(1)

#line 870
endloop   // r0.y <- streams.lightIndex_id170

#line 682
ushr r0.x, r7.y, l(16)  // r0.x <- <GetMaxLightCount_id226 return value>

#line 878
mov r7.xyz, r1.xyzx  // r7.x <- streams.normalWS_id18.x; r7.y <- streams.normalWS_id18.y; r7.z <- streams.normalWS_id18.z
mov r7.w, v0.x  // r7.w <- streams.PositionWS_id21.x
mov r8.xy, v0.yzyy  // r8.x <- streams.PositionWS_id21.y; r8.y <- streams.PositionWS_id21.z
mov r8.zw, r2.xxxy  // r8.z <- streams.viewWS_id66.x; r8.w <- streams.viewWS_id66.y
mov r9.x, r2.z  // r9.x <- streams.viewWS_id66.z
mov r9.z, r0.y  // r9.z <- streams.lightIndex_id170
mov r10.xyz, r3.xyzx  // r10.x <- streams.matDiffuseVisible_id67.x; r10.y <- streams.matDiffuseVisible_id67.y; r10.z <- streams.matDiffuseVisible_id67.z
mov r11.xyz, r5.xyzx  // r11.x <- streams.matSpecularVisible_id69.x; r11.y <- streams.matSpecularVisible_id69.y; r11.z <- streams.matSpecularVisible_id69.z
mov r12.xyz, r14.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z
mov r13.x, r0.z  // r13.x <- streams.alphaRoughness_id68
mov r13.y, r6.y  // r13.y <- streams.NdotV_id70
mov r0.w, l(0)  // r0.w <- i
loop 
  ige r1.w, r0.w, r0.x
  breakc_nz r1.w

#line 880
  if_nz r1.w

#line 882
    break 

#line 883
  endif 

#line 502
  ld r15.xyzw, r9.zzzz, t5.xyzw  // r15.x <- realLightIndex

#line 503
  iadd r9.z, r9.z, l(1)  // r9.z <- streams.lightIndex_id170

#line 505
  ishl r1.w, r15.x, l(2)
  ld r15.xyzw, r1.wwww, t7.xyzw  // r15.x <- spotLight1.x; r15.y <- spotLight1.y; r15.z <- spotLight1.z

#line 508
  iadd r16.xyz, r1.wwww, l(1, 2, 3, 0)

#line 506
  ld r17.xyzw, r16.xxxx, t7.xyzw  // r17.x <- spotLight2.x; r17.y <- spotLight2.y; r17.z <- spotLight2.z

#line 507
  ld r18.xyzw, r16.yyyy, t7.xyzw  // r18.x <- spotLight3.x; r18.y <- spotLight3.y; r18.z <- spotLight3.z

#line 508
  ld r16.xyzw, r16.zzzz, t7.xyzw  // r16.x <- spotLight4.x; r16.y <- spotLight4.y; r16.z <- spotLight4.z

#line 370
  mov r19.x, r7.w
  mov r19.yz, r8.xxyx
  add r15.xyz, r15.xyzx, -r19.xyzx  // r15.x <- lightVector.x; r15.y <- lightVector.y; r15.z <- lightVector.z

#line 371
  dp3 r1.w, r15.xyzx, r15.xyzx
  sqrt r2.w, r1.w  // r2.w <- lightVectorLength

#line 372
  div r15.xyz, r15.xyzx, r2.wwww  // r15.x <- lightVectorNorm.x; r15.y <- lightVectorNorm.y; r15.z <- lightVectorNorm.z

#line 322
  max r2.w, r1.w, l(0.000100)
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w  // r2.w <- attenuation

#line 296
  mul r1.w, r18.z, r1.w  // r1.w <- factor

#line 297
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor

#line 298
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id83 return value>

#line 323
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 314
  dp3 r2.w, -r17.xyzx, r15.xyzx  // r2.w <- cd

#line 315
  mad_sat r2.w, r2.w, r18.x, r18.y  // r2.w <- attenuation

#line 316
  mul r2.w, r2.w, r2.w

#line 378
  mul r1.w, r1.w, r2.w  // r1.w <- attenuation

#line 421
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.lightColor_id42.x; r16.y <- streams.lightColor_id42.y; r16.z <- streams.lightColor_id42.z

#line 668
  dp3 r1.w, r7.xyzx, r15.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id47

#line 670
  mul r16.xyz, r1.wwww, r16.xyzx  // r16.x <- streams.lightColorNdotL_id43.x; r16.y <- streams.lightColorNdotL_id43.y; r16.z <- streams.lightColorNdotL_id43.z

#line 730
  mov r9.yw, r8.zzzw
  add r17.xyz, r15.xyzx, r9.ywxy
  dp3 r2.w, r17.xyzx, r17.xyzx
  rsq r2.w, r2.w
  mul r17.xyz, r2.wwww, r17.xyzx  // r17.x <- streams.H_id73.x; r17.y <- streams.H_id73.y; r17.z <- streams.H_id73.z

#line 731
  dp3_sat r2.w, r7.xyzx, r17.xyzx  // r2.w <- streams.NdotH_id74

#line 732
  dp3_sat r4.w, r15.xyzx, r17.xyzx  // r4.w <- streams.LdotH_id75

#line 724
  add r15.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r17.xyz, r10.xyzx, r15.xyzx  // r17.x <- diffuseColor.x; r17.y <- diffuseColor.y; r17.z <- diffuseColor.z

#line 726
  mul r17.xyz, r16.xyzx, r17.xyzx

#line 888
  mad r17.xyz, r17.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r12.xyzx  // r17.x <- directLightingContribution.x; r17.y <- directLightingContribution.y; r17.z <- directLightingContribution.z

#line 396
  add r4.w, -r4.w, l(1.000000)
  mul r5.w, r4.w, r4.w
  mul r5.w, r5.w, r5.w
  mul r4.w, r4.w, r5.w
  mad r15.xyz, r15.xyzx, r4.wwww, r11.xyzx  // r15.x <- <FresnelSchlick_id143 return value>.x; r15.y <- <FresnelSchlick_id143 return value>.y; r15.z <- <FresnelSchlick_id143 return value>.z

#line 391
  mul r4.w, r13.x, l(0.500000)  // r4.w <- k

#line 392
  mad r5.w, -r13.x, l(0.500000), l(1.000000)
  mad r6.z, r1.w, r5.w, r4.w
  div r6.z, r1.w, r6.z  // r6.z <- <VisibilityhSchlickGGX_id159 return value>
  mad r4.w, r13.y, r5.w, r4.w
  div r4.w, r13.y, r4.w  // r4.w <- <VisibilityhSchlickGGX_id159 return value>

#line 440
  mul r4.w, r4.w, r6.z
  mul r1.w, r13.y, r1.w
  div r1.w, r4.w, r1.w  // r1.w <- <VisibilitySmithSchlickGGX_id161 return value>

#line 434
  mul r4.w, r13.x, r13.x  // r4.w <- alphaR2

#line 435
  mul r2.w, r2.w, r2.w
  mad r5.w, r13.x, r13.x, l(-1.000000)
  mad r2.w, r2.w, r5.w, l(1.000000)
  max r2.w, r2.w, l(0.000100)  // r2.w <- d

#line 436
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(3.141593)
  div r2.w, r4.w, r2.w  // r2.w <- <NormalDistributionGGX_id173 return value>

#line 716
  mul r15.xyz, r1.wwww, r15.xyzx
  mul r15.xyz, r2.wwww, r15.xyzx
  mul r15.xyz, r16.xyzx, r15.xyzx

#line 892
  mad r12.xyz, r15.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), r17.xyzx  // r12.x <- directLightingContribution.x; r12.y <- directLightingContribution.y; r12.z <- directLightingContribution.z

#line 878
  iadd r0.w, r0.w, l(1)

#line 894
endloop   // r9.z <- streams.lightIndex_id170

#line 654
mad r0.xyw, -r4.xyxz, cb0[2].zzzz, l(1.000000, 1.000000, 0.000000, 1.000000)
mul r0.xyw, r0.xyxw, r3.xyxz  // r0.x <- diffuseColor.x; r0.y <- diffuseColor.y; r0.w <- diffuseColor.z

#line 478
sqrt r0.z, r0.z
add r6.x, -r0.z, l(1.000000)  // r6.x <- glossiness

#line 479
sample_l r1.xyzw, r6.xyxx, t2.xyzw, s0, l(0.000000)  // r1.x <- environmentLightingDFG.x; r1.y <- environmentLightingDFG.y

#line 480
mad r1.xyz, r5.xyzx, r1.xxxx, r1.yyyy  // r1.x <- <Compute_id251 return value>.x; r1.y <- <Compute_id251 return value>.y; r1.z <- <Compute_id251 return value>.z

#line 647
mul r1.xyz, r1.xyzx, cb1[88].xyzx  // r1.x <- <ComputeEnvironmentLightContribution_id430 return value>.x; r1.y <- <ComputeEnvironmentLightContribution_id430 return value>.y; r1.z <- <ComputeEnvironmentLightContribution_id430 return value>.z

#line 906
mad r0.xyz, r0.xywx, cb1[88].xyzx, r1.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 933
mad o0.xyz, r12.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 1105
mov o0.w, r3.w
ret 
// Approximately 330 instruction slots used
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
const static bool TInvert_id190 = false;
const static bool TIsEnergyConservative_id204 = true;
static const float PI_id206 = 3.14159265358979323846;
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
    float constantFloat_id189;
    float2 scale_id197;
    float2 offset_id198;
    float constantFloat_id200;
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
Texture2D Texture_id195;
Texture2D EnvironmentLightingDFG_LUT_id207;
Texture2D ShadowMapTexture_id86;
Texture3D<uint2> LightClusters_id171;
Buffer<uint> LightIndices_id172;
Buffer<float4> PointLights_id176;
Buffer<float4> SpotLights_id177;
float SmoothDistanceAttenuation_id83(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id72(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float4 Project_id57(float4 vec, float4x4 mat)
{
    float4 vecProjected = mul(vec, mat);
    vecProjected.xyz /= vecProjected.w;
    return vecProjected;
}
float GetAngularAttenuation_id85(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id84(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id83(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id74(float lightVectorLength, float lightInvSquareRadius)
{
    float d2 = lightVectorLength * lightVectorLength;
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id72(d2, lightInvSquareRadius);
    return attenuation;
}
float SampleThickness_id65(float3 shadowSpaceCoordinate, float3 pixelPositionWS, float2 depthRanges, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float shadowMapDepth = ShadowMapTexture_id86.SampleLevel(LinearBorderSampler_id120, shadowSpaceCoordinate.xy, 0).r;
    float thickness;
    if (isOrthographic)
    {
        thickness = abs(shadowMapDepth - shadowSpaceCoordinate.z) * depthRanges.y;
    }
    else
    {
        float4 shadowmapPositionWorldSpace = Project_id57(float4(shadowSpaceCoordinate.xy, shadowMapDepth, 1.0), inverseWorldToShadowCascadeUV);
        thickness = distance(shadowmapPositionWorldSpace.xyz, pixelPositionWS.xyz);
    }
    return (thickness);
}
void CalculateAdjustedShadowSpacePixelPosition_id64(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    float4 bottomLeftTexelWS = Project_id57(float4(0.0, 0.0, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id57(float4(ShadowMapTextureTexelSize_id88.xy * filterRadiusInPixels, 0.0, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, bottomLeftTexelWS.xyz);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 shadowMapCoordinate = Project_id57(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = shadowMapCoordinate.xyz;
}
void CalculateAdjustedShadowSpacePixelPositionPerspective_id63(float filterRadiusInPixels, float3 pixelPositionWS, float3 meshNormalWS, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, out float3 adjustedPixelPositionWS, out float3 adjustedPixelPositionShadowSpace)
{
    const float4 shadowMapCoordinate = Project_id57(float4(pixelPositionWS, 1.0), worldToShadowCascadeUV);
    const float4 topRightTexelWS = Project_id57(float4(shadowMapCoordinate.xy + ShadowMapTextureTexelSize_id88.xy * filterRadiusInPixels, shadowMapCoordinate.z, 1.0), inverseWorldToShadowCascadeUV);
    const float texelDiagonalLength = distance(topRightTexelWS.xyz, pixelPositionWS);
    const float3 positionOffsetWS = meshNormalWS * texelDiagonalLength;
    adjustedPixelPositionWS = pixelPositionWS - positionOffsetWS;
    const float4 adjustedShadowMapCoordinate = Project_id57(float4(adjustedPixelPositionWS, 1.0), worldToShadowCascadeUV);
    adjustedPixelPositionShadowSpace = adjustedShadowMapCoordinate.xyz;
}
float ComputeAttenuation_id86(float3 PositionWS, float3 AngleOffsetAndInvSquareRadius, float3 DirectionWS, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -DirectionWS;
    float attenuation = GetDistanceAttenuation_id84(lightVectorLength, lightInvSquareRadius);
    attenuation *= GetAngularAttenuation_id85(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    return attenuation;
}
float ComputeAttenuation_id73(PointLightDataInternal light, float3 position, inout float3 lightVectorNorm)
{
    float3 lightVector = light.PositionWS - position;
    float lightVectorLength = length(lightVector);
    lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    return GetDistanceAttenuation_id74(lightVectorLength, lightInvSquareRadius);
}
float VisibilityhSchlickGGX_id159(float alphaR, float nDotX)
{
    float k = alphaR * 0.5f;
    return nDotX / (nDotX * (1.0f - k) + k);
}
float3 FresnelSchlick_id143(float3 f0, float3 f90, float lOrVDotH)
{
    return f0 + (f90 - f0) * pow((1 - lOrVDotH), 5);
}
float FilterThickness_id59(float3 pixelPositionWS, float3 meshNormalWS, float2 depthRanges, float4x4 worldToShadowCascadeUV, float4x4 inverseWorldToShadowCascadeUV, bool isOrthographic)
{
    const float filterRadiusInPixels = 1.5;
    float3 adjustedPixelPositionWS;
    float3 adjustedPixelPositionShadowSpace;
    if (isOrthographic)
    {
        CalculateAdjustedShadowSpacePixelPosition_id64(filterRadiusInPixels, pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    else
    {
        CalculateAdjustedShadowSpacePixelPositionPerspective_id63(filterRadiusInPixels, pixelPositionWS, meshNormalWS, worldToShadowCascadeUV, inverseWorldToShadowCascadeUV, adjustedPixelPositionWS, adjustedPixelPositionShadowSpace);
    }
    return SampleThickness_id65(adjustedPixelPositionShadowSpace, adjustedPixelPositionWS, depthRanges, inverseWorldToShadowCascadeUV, isOrthographic);
}
float FilterShadow_id58(float2 position, float positionDepth)
{
    return ShadowMapTexture_id86.SampleCmpLevelZero(LinearClampCompareLessEqualSampler_id121, position, positionDepth);
}
void ProcessLight_id87(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id86(light.PositionWS, light.AngleOffsetAndInvSquareRadius, light.DirectionWS, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightColor_id42 = light.Color * attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
void ProcessLight_id76(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVectorNorm;
    float attenuation = ComputeAttenuation_id73(light, streams.PositionWS_id21.xyz, lightVectorNorm);
    streams.lightPositionWS_id40 = light.PositionWS;
    streams.lightColor_id42 = light.Color * attenuation;
    streams.lightDirectionWS_id41 = lightVectorNorm;
}
float NormalDistributionGGX_id173(float alphaR, float nDotH)
{
    float alphaR2 = alphaR * alphaR;
    float d = max(nDotH * nDotH * (alphaR2 - 1) + 1, 0.0001);
    return alphaR2 / (PI_id206 * d * d);
}
float VisibilitySmithSchlickGGX_id161(float alphaR, float nDotL, float nDotV)
{
    return VisibilityhSchlickGGX_id159(alphaR, nDotL) * VisibilityhSchlickGGX_id159(alphaR, nDotV) / (nDotL * nDotV);
}
float3 FresnelSchlick_id149(float3 f0, float lOrVDotH)
{
    return FresnelSchlick_id143(f0, 1.0f, lOrVDotH);
}
float ComputeThicknessFromCascade_id62(float3 pixelPositionWS, float3 meshNormalWS, int cascadeIndex, int lightIndex, bool isOrthographic)
{
    const int arrayIndex = cascadeIndex + lightIndex * TCascadeCountBase_id148;
    return FilterThickness_id59(pixelPositionWS, meshNormalWS, DepthRanges_id153[arrayIndex], WorldToShadowCascadeUV_id150[arrayIndex], InverseWorldToShadowCascadeUV_id151[arrayIndex], isOrthographic);
}
float ComputeShadowFromCascade_id61(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1.0), WorldToShadowCascadeUV_id150[cascadeIndex + lightIndex * TCascadeCountBase_id148]);
    shadowPosition.z -= DepthBiases_id154[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id58(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id60(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id88.x * offsetScale * normalOffsetScale * normal;
}
float4 Compute_id229(float3 direction)
{
    return 0;
}
float4 Compute_id228(float3 direction)
{
    return 0;
}
void PrepareEnvironmentLight_id95(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
}
float3 Compute_id251(float3 specularColor, float alphaR, float nDotV)
{
    float glossiness = 1.0f - sqrt(alphaR);
    float4 environmentLightingDFG = EnvironmentLightingDFG_LUT_id207.SampleLevel(LinearSampler_id119, float2(glossiness, nDotV), 0);
    return specularColor * environmentLightingDFG.r + environmentLightingDFG.g;
}
void PrepareEnvironmentLight_id91(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
}
float3 ComputeSpecularTextureProjection_id82(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id81(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id80(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id82 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id79(inout PS_STREAMS streams, int lightIndexIgnored)
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
    ProcessLight_id87(streams, spotLight);
}
float3 ComputeSpecularTextureProjection_id71(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id70(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id69(inout PS_STREAMS streams, float3 position, int lightIndex)
{
    streams.thicknessWS_id82 = 0.0;
    return 1.0f;
}
void PrepareDirectLightCore_id68(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id172.Load(streams.lightIndex_id170);
    streams.lightIndex_id170++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id176.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id176.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id76(streams, pointLight);
}
void PrepareLightData_id75(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id166.y / (projectedDepth - ZProjection_id166.x);
    float2 texCoord = float2(streams.ScreenPosition_id163.x + 1, 1 - streams.ScreenPosition_id163.y) * 0.5;
    int slice = int(max(log2(depth * ClusterDepthScale_id173 + ClusterDepthBias_id174), 0));
    streams.lightData_id169 = LightClusters_id171.Load(int4(texCoord * ClusterStride_id175, slice, 0));
    streams.lightIndex_id170 = streams.lightData_id169.x;
}
float Compute_id343(inout PS_STREAMS streams)
{
    return NormalDistributionGGX_id173(streams.alphaRoughness_id68, streams.NdotH_id74);
}
float Compute_id313(inout PS_STREAMS streams)
{
    return VisibilitySmithSchlickGGX_id161(streams.alphaRoughness_id68, streams.NdotL_id47, streams.NdotV_id70);
}
float3 Compute_id283(inout PS_STREAMS streams, float3 f0)
{
    return FresnelSchlick_id149(f0, streams.LdotH_id75);
}
float3 ComputeSpecularTextureProjection_id54(float3 positionWS, float3 reflectionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeTextureProjection_id53(float3 positionWS, int lightIndex)
{
    return 1.0f;
}
float3 ComputeShadow_id52(inout PS_STREAMS streams, float3 position, int lightIndex)
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
    shadowPosition += GetShadowPositionOffset_id60(OffsetScales_id155[lightIndex], streams.NdotL_id47, streams.normalWS_id18);
    if (cascadeIndex < TCascadeCount_id156)
    {
        shadow = ComputeShadowFromCascade_id61(shadowPosition, cascadeIndex, lightIndex);
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
                float nextShadow = ComputeShadowFromCascade_id61(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }
    streams.thicknessWS_id82 = tempThickness;
    return shadow;
}
void PrepareDirectLightCore_id51(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id42 = Lights_id85[lightIndex].Color;
    streams.lightDirectionWS_id41 = -Lights_id85[lightIndex].DirectionWS;
}
void ResetStream_id176()
{
}
void AfterLightingAndShading_id400()
{
}
void AfterLightingAndShading_id381()
{
}
void PrepareEnvironmentLight_id242(inout PS_STREAMS streams)
{
    streams.envLightDiffuseColor_id45 = 0;
    streams.envLightSpecularColor_id46 = 0;
}
void PrepareEnvironmentLight_id239(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id95(streams);
    float ambientAccessibility = streams.matAmbientOcclusion_id55;
    float3 sampleDirection = mul(streams.normalWS_id18, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id45 = Compute_id228(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id63.x;
    sampleDirection = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id179);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id46 = Compute_id229(sampleDirection).rgb * Intensity_id180 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id63.y;
}
float3 ComputeEnvironmentLightContribution_id430(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id69;
    return Compute_id251(specularColor, streams.alphaRoughness_id68, streams.NdotV_id70) * streams.envLightSpecularColor_id46;
}
float3 ComputeEnvironmentLightContribution_id374(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id67;

    {
        diffuseColor *= (1 - streams.matSpecularVisible_id69);
    }
    return diffuseColor * streams.envLightDiffuseColor_id45;
}
void PrepareEnvironmentLight_id234(inout PS_STREAMS streams)
{
    PrepareEnvironmentLight_id91(streams);
    float3 lightColor = AmbientLight_id178 * streams.matAmbientOcclusion_id55;
    streams.envLightDiffuseColor_id45 = lightColor;
    streams.envLightSpecularColor_id46 = lightColor;
}
void PrepareDirectLight_id223(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id79(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id81 = ComputeShadow_id80(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.shadowColor_id81 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id81(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id82(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id227(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y >> 16;
}
int GetMaxLightCount_id226(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y >> 16;
}
void PrepareDirectLights_id221()
{
}
void PrepareDirectLight_id210(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id68(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id81 = ComputeShadow_id69(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.shadowColor_id81 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id70(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id71(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id215(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y & 0xFFFF;
}
int GetMaxLightCount_id214(inout PS_STREAMS streams)
{
    return streams.lightData_id169.y & 0xFFFF;
}
void PrepareDirectLights_id213(inout PS_STREAMS streams)
{
    PrepareLightData_id75(streams);
}
float3 ComputeDirectLightContribution_id429(inout PS_STREAMS streams)
{
    float3 specularColor = streams.matSpecularVisible_id69;
    float3 fresnel = Compute_id283(streams, specularColor);
    float geometricShadowing = Compute_id313(streams);
    float normalDistribution = Compute_id343(streams);
    float3 reflected = fresnel * geometricShadowing * normalDistribution / 4;
    return reflected * streams.lightSpecularColorNdotL_id44 * streams.matDiffuseSpecularAlphaBlend_id63.y;
}
float3 ComputeDirectLightContribution_id373(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id67;

    {
        diffuseColor *= (1 - streams.matSpecularVisible_id69);
    }
    return diffuseColor / PI_id206 * streams.lightColorNdotL_id43 * streams.matDiffuseSpecularAlphaBlend_id63.x;
}
void PrepareMaterialPerDirectLight_id30(inout PS_STREAMS streams)
{
    streams.H_id73 = normalize(streams.viewWS_id66 + streams.lightDirectionWS_id41);
    streams.NdotH_id74 = saturate(dot(streams.normalWS_id18, streams.H_id73));
    streams.LdotH_id75 = saturate(dot(streams.lightDirectionWS_id41, streams.H_id73));
    streams.VdotH_id76 = streams.LdotH_id75;
}
void PrepareDirectLight_id186(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id51(streams, lightIndex);
    streams.NdotL_id47 = max(dot(streams.normalWS_id18, streams.lightDirectionWS_id41), 0.0001f);
    streams.shadowColor_id81 = ComputeShadow_id52(streams, streams.PositionWS_id21.xyz, lightIndex);
    streams.lightColorNdotL_id43 = streams.lightColor_id42 * streams.shadowColor_id81 * streams.NdotL_id47 * streams.lightDirectAmbientOcclusion_id48;
    streams.lightSpecularColorNdotL_id44 = streams.lightColorNdotL_id43;
    streams.lightColorNdotL_id43 *= ComputeTextureProjection_id53(streams.PositionWS_id21.xyz, lightIndex);
    float3 reflectionVectorWS = reflect(-streams.viewWS_id66, streams.normalWS_id18);
    streams.lightSpecularColorNdotL_id44 *= ComputeSpecularTextureProjection_id54(streams.PositionWS_id21.xyz, reflectionVectorWS, lightIndex);
}
int GetLightCount_id188()
{
    return LightCount_id83;
}
int GetMaxLightCount_id189()
{
    return TMaxLightCount_id84;
}
void PrepareDirectLights_id184()
{
}
void PrepareForLightingAndShading_id397()
{
}
void PrepareForLightingAndShading_id378()
{
}
void PrepareMaterialForLightingAndShading_id175(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id48 = lerp(1.0, streams.matAmbientOcclusion_id55, streams.matAmbientOcclusionDirectLightingFactor_id56);
    streams.matDiffuseVisible_id67 = streams.matDiffuse_id51.rgb * lerp(1.0f, streams.matCavity_id57, streams.matCavityDiffuse_id58) * streams.matDiffuseSpecularAlphaBlend_id63.r * streams.matAlphaBlendColor_id64;
    streams.matSpecularVisible_id69 = streams.matSpecular_id53.rgb * streams.matSpecularIntensity_id54 * lerp(1.0f, streams.matCavity_id57, streams.matCavitySpecular_id59) * streams.matDiffuseSpecularAlphaBlend_id63.g * streams.matAlphaBlendColor_id64;
    streams.NdotV_id70 = max(dot(streams.normalWS_id18, streams.viewWS_id66), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id52;
    streams.alphaRoughness_id68 = max(roughness * roughness, 0.001);
}
void ResetLightStream_id174(inout PS_STREAMS streams)
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
float4 Compute_id249()
{
    return float4(constantFloat_id200, constantFloat_id200, constantFloat_id200, constantFloat_id200);
}
float4 Compute_id247(inout PS_STREAMS streams)
{
    return Texture_id195.Sample(Sampler_id184, streams.TexCoord_id137 * scale_id197 + offset_id198).rgba;
}
float4 Compute_id245()
{
    return float4(constantFloat_id189, constantFloat_id189, constantFloat_id189, constantFloat_id189);
}
float4 Compute_id243(inout PS_STREAMS streams)
{
    return Texture_id183.Sample(Sampler_id184, streams.TexCoord_id137 * scale_id186 + offset_id187).rgba;
}
void ResetStream_id177(inout PS_STREAMS streams)
{
    ResetStream_id176();
    streams.matBlend_id39 = 0.0f;
}
void Compute_id466(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id23(streams.matNormal_id49);
    if (!streams.IsFrontFace_id1)
        streams.normalWS_id18 = -streams.normalWS_id18;
    ResetLightStream_id174(streams);
    PrepareMaterialForLightingAndShading_id175(streams);

    {
        PrepareForLightingAndShading_id378();
    }

    {
        PrepareForLightingAndShading_id397();
    }
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id184();
        const int maxLightCount = GetMaxLightCount_id189();
        int count = GetLightCount_id188();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id186(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id373(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id429(streams);
            }
        }
    }

    {
        PrepareDirectLights_id213(streams);
        const int maxLightCount = GetMaxLightCount_id214(streams);
        int count = GetLightCount_id215(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id210(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id373(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id429(streams);
            }
        }
    }

    {
        PrepareDirectLights_id221();
        const int maxLightCount = GetMaxLightCount_id226(streams);
        int count = GetLightCount_id227(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id223(streams, i);
            PrepareMaterialPerDirectLight_id30(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id373(streams);
            }

            {
                directLightingContribution += ComputeDirectLightContribution_id429(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id234(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id374(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id430(streams);
        }
    }

    {
        PrepareEnvironmentLight_id239(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id374(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id430(streams);
        }
    }

    {
        PrepareEnvironmentLight_id242(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id374(streams);
        }

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id430(streams);
        }
    }
    streams.shadingColor_id71 += directLightingContribution * PI_id206 + environmentLightingContribution;
    streams.shadingColorAlpha_id72 = streams.matDiffuse_id51.a;

    {
        AfterLightingAndShading_id381();
    }

    {
        AfterLightingAndShading_id400();
    }
}
void Compute_id450(inout PS_STREAMS streams)
{
    streams.matSpecularIntensity_id54 = Compute_id249().r;
}
void Compute_id445(inout PS_STREAMS streams)
{
    streams.matSpecular_id53 = Compute_id247(streams).rgb;
}
void Compute_id440(inout PS_STREAMS streams)
{
    float glossiness = Compute_id245().r;
    streams.matGlossiness_id52 = glossiness;
}
void Compute_id435(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id243(streams);
    streams.matDiffuse_id51 = colorBase;
    streams.matColorBase_id50 = colorBase;
}
void ResetStream_id178(inout PS_STREAMS streams)
{
    ResetStream_id177(streams);
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
void Compute_id48(inout PS_STREAMS streams)
{

    {
        Compute_id435(streams);
    }

    {
        Compute_id440(streams);
    }

    {
        Compute_id445(streams);
    }

    {
        Compute_id450(streams);
    }

    {
        Compute_id466(streams);
    }
}
void ResetStream_id47(inout PS_STREAMS streams)
{
    ResetStream_id178(streams);
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
    ResetStream_id47(streams);
    Compute_id48(streams);
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
