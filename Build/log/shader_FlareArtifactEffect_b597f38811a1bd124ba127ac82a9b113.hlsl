/**************************
***** Compiler Parameters *****
***************************
@P EffectName: FlareArtifactEffect
@P   - FlareArtifact.Count: 8
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 352]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    Amount_id75 => FlareArtifactShader.Amount
@C    ZoomOffsetsDistortions_id76 => FlareArtifactShader.ZoomOffsetsDistortions
@C    ColorAberrations_id77 => FlareArtifactShader.ColorAberrations
@C    AberrationStrength_id78 => FlareArtifactShader.AberrationStrength
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id44 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    FlareArtifactShader => cacd02c74ea7c89cd9048be83de315c8
@S    ImageEffectShader => 26660dbf2eac041d293211cd6bbc17bb
@S    SpriteBase => e319c4777a964c3ebb8f82590e4e27f1
@S    ShaderBase => acbe3d4d44a046eede871176bee9c754
@S    ShaderBaseStream => a3a5bf8185f2a3d89972293f806430d3
@S    Texturing => e6daef0dd90a55f9549c6f5d291e61a5
***************************
*****     Stages      *****
***************************
@G    Vertex => 7b8af58dd24be2684728cc0b8599ce6f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 173 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_FlareArtifactEffect_b597f38811a1bd124ba127ac82a9b113.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 177
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => dc2dfe52b50d5d403a6d78d5d6af0e5b
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float Amount_id75;                 // Offset:   80 Size:     4
//   float2 ZoomOffsetsDistortions_id76[8];// Offset:   96 Size:   120
//   float3 ColorAberrations_id77[8];   // Offset:  224 Size:   124
//   float AberrationStrength_id78;     // Offset:  348 Size:     4
//      = 0x00000000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler_id44                sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer CB0[22], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 5
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 154 "C:\Users\brittenh\Downloads\WorldClock-master (1)\WorldClock-master\WorldClock\Bin\Windows\Debug\log\shader_FlareArtifactEffect_b597f38811a1bd124ba127ac82a9b113.hlsl"
add r0.xyz, cb0[14].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r0.xyz, cb0[21].wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r1.xyz, cb0[15].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 134
add r2.xy, v1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)  // r2.x <- fromCenterVector.x; r2.y <- fromCenterVector.y

#line 135
dp2 r0.w, r2.xyxx, r2.xyxx  // r0.w <- squareDistanceToCenter

#line 136
sqrt r0.w, r0.w  // r0.w <- distanceToCenter

#line 145
log r0.w, r0.w
mul r1.w, r0.w, cb0[7].y
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[7].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 154
mul r1.xyz, r1.xyzx, r3.xyzx  // r1.x <- tapColor.x; r1.y <- tapColor.y; r1.z <- tapColor.z

#line 145
mul r1.w, r0.w, cb0[6].y
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[6].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y; r3.z <- tapColor.z

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 155
mad r0.xyz, r3.xyzx, r0.xyzx, r1.xyzx  // r0.x <- result.x; r0.y <- result.y; r0.z <- result.z

#line 154
add r1.xyz, cb0[16].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 145
mul r1.w, r0.w, cb0[8].y
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[8].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 155
mad r0.xyz, r3.xyzx, r1.xyzx, r0.xyzx

#line 154
add r1.xyz, cb0[17].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 145
mul r1.w, r0.w, cb0[9].y
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[9].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 155
mad r0.xyz, r3.xyzx, r1.xyzx, r0.xyzx

#line 154
add r1.xyz, cb0[18].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 145
mul r1.w, r0.w, cb0[10].y
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[10].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 155
mad r0.xyz, r3.xyzx, r1.xyzx, r0.xyzx

#line 154
add r1.xyz, cb0[19].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 145
mul r1.w, r0.w, cb0[11].y
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[11].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 155
mad r0.xyz, r3.xyzx, r1.xyzx, r0.xyzx

#line 154
add r1.xyz, cb0[20].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 145
mul r1.w, r0.w, cb0[12].y
mul r0.w, r0.w, cb0[13].y
exp r0.w, r0.w
sincos r0.w, null, r0.w  // r0.w <- distortion
exp r1.w, r1.w
sincos r1.w, null, r1.w  // r1.w <- distortion

#line 144
mul r2.zw, r2.xxxy, cb0[12].xxxx
mul r2.xy, r2.xyxx, cb0[13].xxxx

#line 146
mul r3.xy, r1.wwww, r2.zwzz
mad r2.zw, r1.wwww, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)  // r2.z <- distortedUV.x; r2.w <- distortedUV.y

#line 149
add r3.xy, -|r3.xyxx|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)  // r3.x <- borderNear.x; r3.y <- borderNear.y

#line 150
mul_sat r1.w, r3.y, r3.x  // r1.w <- alpha

#line 151
mul r1.w, r1.w, r1.w

#line 147
sample r3.xyzw, r2.zwzz, t0.xyzw, s0  // r3.x <- tapColor.x; r3.y <- tapColor.y

#line 151
mul r3.xyz, r1.wwww, r3.xyzx

#line 152
lt r4.xy, r2.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.zw, l(0.000000, 0.000000, 1.000000, 1.000000), r2.zzzw
or r1.w, r2.z, r4.x
or r1.w, r4.y, r1.w
or r1.w, r2.w, r1.w

#line 153
movc r3.xyz, r1.wwww, l(0,0,0,0), r3.xyzx

#line 155
mad r0.xyz, r3.xyzx, r1.xyzx, r0.xyzx

#line 154
add r1.xyz, cb0[21].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, cb0[21].wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)

#line 146
mul r2.zw, r0.wwww, r2.xxxy
mad r2.xy, r0.wwww, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)  // r2.x <- distortedUV.x; r2.y <- distortedUV.y

#line 149
add r2.zw, -|r2.zzzw|, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r2.zw, r2.zzzw, l(0.000000, 0.000000, 10.000000, 10.000000)  // r2.z <- borderNear.x; r2.w <- borderNear.y

#line 150
mul_sat r0.w, r2.w, r2.z  // r0.w <- alpha

#line 151
mul r0.w, r0.w, r0.w

#line 147
sample r3.xyzw, r2.xyxx, t0.xyzw, s0

#line 151
mul r3.xyz, r0.wwww, r3.xyzx

#line 152
lt r2.zw, r2.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r2.xy, l(1.000000, 1.000000, 0.000000, 0.000000), r2.xyxx
or r0.w, r2.x, r2.z
or r0.w, r2.w, r0.w
or r0.w, r2.y, r0.w

#line 153
movc r2.xyz, r0.wwww, l(0,0,0,0), r3.xyzx  // r2.x <- tapColor.x; r2.y <- tapColor.y; r2.z <- tapColor.z

#line 155
mad r0.xyz, r2.xyzx, r1.xyzx, r0.xyzx

#line 157
mul o0.xyz, r0.xyzx, cb0[5].xxxx

#line 166
mov o0.w, l(1.000000)
ret 
// Approximately 175 instruction slots used
***************************
*************************/
const static int TapCount_id74 = 8;
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
    float Amount_id75;
    float2 ZoomOffsetsDistortions_id76[TapCount_id74];
    float3 ColorAberrations_id77[TapCount_id74];
    float AberrationStrength_id78 = 0;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
float4 Shading_id3(inout PS_STREAMS streams)
{
    float2 uv = streams.TexCoord_id62;
    float2 fromCenterVector = uv - float2(0.5, 0.5);
    float squareDistanceToCenter = dot(fromCenterVector, fromCenterVector);
    float distanceToCenter = sqrt(squareDistanceToCenter);
    float2 originalUV = uv;
    float3 result = float3(0.0, 0.0, 0.0);

    [unroll]
    for (int i = 0; i < TapCount_id74; i++)
    {
        float2 zoomOffsetsDistortions = ZoomOffsetsDistortions_id76[i];
        uv = (originalUV - 0.5) * zoomOffsetsDistortions.x + 0.5;
        float distortion = sin(pow(distanceToCenter, zoomOffsetsDistortions.y));
        float2 distortedUV = distortion * (uv - 0.5) + 0.5;
        float3 tapColor = Texture0_id14.Sample(LinearSampler_id44, distortedUV).rgb;
        float border = 0.1;
        float2 borderNear = lerp(float2(0.0, 0.0), float2(1.0, 1.0), (0.5 - abs(distortedUV - 0.5)) / border);
        float alpha = saturate(borderNear.x * borderNear.y);
        tapColor *= alpha * alpha;
        if (distortedUV.x < 0 || distortedUV.x > 1 || distortedUV.y < 0 || distortedUV.y > 1)
            tapColor = float3(0.0, 0.0, 0.0);
        tapColor *= lerp(float3(1, 1, 1), ColorAberrations_id77[i], AberrationStrength_id78);
        result += tapColor;
    }
    return float4(result * Amount_id75, 1.0);
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}
