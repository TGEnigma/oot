glabel func_80A7CEC0
/* 010A0 80A7CEC0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 010A4 80A7CEC4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 010A8 80A7CEC8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 010AC 80A7CECC AFA5005C */  sw      $a1, 0x005C($sp)           
/* 010B0 80A7CED0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 010B4 80A7CED4 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
/* 010B8 80A7CED8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010BC 80A7CEDC 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 010C0 80A7CEE0 A7AF004E */  sh      $t7, 0x004E($sp)           
/* 010C4 80A7CEE4 8498031A */  lh      $t8, 0x031A($a0)           ## 0000031A
/* 010C8 80A7CEE8 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3CA3D70A
/* 010CC 80A7CEEC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 010D0 80A7CEF0 2B010051 */  slti    $at, $t8, 0x0051           
/* 010D4 80A7CEF4 14200009 */  bne     $at, $zero, .L80A7CF1C     
/* 010D8 80A7CEF8 00000000 */  nop
/* 010DC 80A7CEFC 3C053F19 */  lui     $a1, 0x3F19                ## $a1 = 3F190000
/* 010E0 80A7CF00 3C063DA3 */  lui     $a2, 0x3DA3                ## $a2 = 3DA30000
/* 010E4 80A7CF04 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3DA3D70A
/* 010E8 80A7CF08 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3F19999A
/* 010EC 80A7CF0C 0C01DE80 */  jal     Math_ApproxF
              
/* 010F0 80A7CF10 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 010F4 80A7CF14 10000004 */  beq     $zero, $zero, .L80A7CF28   
/* 010F8 80A7CF18 8619031A */  lh      $t9, 0x031A($s0)           ## 0000031A
.L80A7CF1C:
/* 010FC 80A7CF1C 0C01DE80 */  jal     Math_ApproxF
              
/* 01100 80A7CF20 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01104 80A7CF24 8619031A */  lh      $t9, 0x031A($s0)           ## 0000031A
.L80A7CF28:
/* 01108 80A7CF28 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0110C 80A7CF2C C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 01110 80A7CF30 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 01114 80A7CF34 3C0180A8 */  lui     $at, %hi(D_80A7E030)       ## $at = 80A80000
/* 01118 80A7CF38 46083280 */  add.s   $f10, $f6, $f8             
/* 0111C 80A7CF3C C422E030 */  lwc1    $f2, %lo(D_80A7E030)($at)  
/* 01120 80A7CF40 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01124 80A7CF44 468084A0 */  cvt.s.w $f18, $f16                 
/* 01128 80A7CF48 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 0112C 80A7CF4C 3C0180A8 */  lui     $at, %hi(D_80A7E034)       ## $at = 80A80000
/* 01130 80A7CF50 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01134 80A7CF54 C424E034 */  lwc1    $f4, %lo(D_80A7E034)($at)  
/* 01138 80A7CF58 3C0180A8 */  lui     $at, %hi(D_80A7E038)       ## $at = 80A80000
/* 0113C 80A7CF5C 46049002 */  mul.s   $f0, $f18, $f4             
/* 01140 80A7CF60 4602003C */  c.lt.s  $f0, $f2                   
/* 01144 80A7CF64 00000000 */  nop
/* 01148 80A7CF68 45000003 */  bc1f    .L80A7CF78                 
/* 0114C 80A7CF6C 00000000 */  nop
/* 01150 80A7CF70 1000000A */  beq     $zero, $zero, .L80A7CF9C   
/* 01154 80A7CF74 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
.L80A7CF78:
/* 01158 80A7CF78 C42CE038 */  lwc1    $f12, %lo(D_80A7E038)($at) 
/* 0115C 80A7CF7C 4600603C */  c.lt.s  $f12, $f0                  
/* 01160 80A7CF80 00000000 */  nop
/* 01164 80A7CF84 45020004 */  bc1fl   .L80A7CF98                 
/* 01168 80A7CF88 46000086 */  mov.s   $f2, $f0                   
/* 0116C 80A7CF8C 10000002 */  beq     $zero, $zero, .L80A7CF98   
/* 01170 80A7CF90 46006086 */  mov.s   $f2, $f12                  
/* 01174 80A7CF94 46000086 */  mov.s   $f2, $f0                   
.L80A7CF98:
/* 01178 80A7CF98 E60201C8 */  swc1    $f2, 0x01C8($s0)           ## 000001C8
.L80A7CF9C:
/* 0117C 80A7CF9C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01180 80A7CFA0 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 01184 80A7CFA4 8608031A */  lh      $t0, 0x031A($s0)           ## 0000031A
/* 01188 80A7CFA8 2404FFCE */  addiu   $a0, $zero, 0xFFCE         ## $a0 = FFFFFFCE
/* 0118C 80A7CFAC 29010051 */  slti    $at, $t0, 0x0051           
/* 01190 80A7CFB0 5420000D */  bnel    $at, $zero, .L80A7CFE8     
/* 01194 80A7CFB4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01198 80A7CFB8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 0119C 80A7CFBC 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 011A0 80A7CFC0 86090316 */  lh      $t1, 0x0316($s0)           ## 00000316
/* 011A4 80A7CFC4 2404FED4 */  addiu   $a0, $zero, 0xFED4         ## $a0 = FFFFFED4
/* 011A8 80A7CFC8 24050258 */  addiu   $a1, $zero, 0x0258         ## $a1 = 00000258
/* 011AC 80A7CFCC 01225021 */  addu    $t2, $t1, $v0              
/* 011B0 80A7CFD0 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 011B4 80A7CFD4 A60A0316 */  sh      $t2, 0x0316($s0)           ## 00000316
/* 011B8 80A7CFD8 860B0318 */  lh      $t3, 0x0318($s0)           ## 00000318
/* 011BC 80A7CFDC 01626021 */  addu    $t4, $t3, $v0              
/* 011C0 80A7CFE0 A60C0318 */  sh      $t4, 0x0318($s0)           ## 00000318
/* 011C4 80A7CFE4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L80A7CFE8:
/* 011C8 80A7CFE8 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 011CC 80A7CFEC C60601C8 */  lwc1    $f6, 0x01C8($s0)           ## 000001C8
/* 011D0 80A7CFF0 86040316 */  lh      $a0, 0x0316($s0)           ## 00000316
/* 011D4 80A7CFF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 011D8 80A7CFF8 46083282 */  mul.s   $f10, $f6, $f8             
/* 011DC 80A7CFFC 4600540D */  trunc.w.s $f16, $f10                 
/* 011E0 80A7D000 44038000 */  mfc1    $v1, $f16                  
/* 011E4 80A7D004 00000000 */  nop
/* 011E8 80A7D008 00031C00 */  sll     $v1, $v1, 16               
/* 011EC 80A7D00C 00031C03 */  sra     $v1, $v1, 16               
/* 011F0 80A7D010 00031023 */  subu    $v0, $zero, $v1            
/* 011F4 80A7D014 0082082A */  slt     $at, $a0, $v0              
/* 011F8 80A7D018 50200004 */  beql    $at, $zero, .L80A7D02C     
/* 011FC 80A7D01C 0064082A */  slt     $at, $v1, $a0              
/* 01200 80A7D020 10000007 */  beq     $zero, $zero, .L80A7D040   
/* 01204 80A7D024 A6020316 */  sh      $v0, 0x0316($s0)           ## 00000316
/* 01208 80A7D028 0064082A */  slt     $at, $v1, $a0              
.L80A7D02C:
/* 0120C 80A7D02C 10200003 */  beq     $at, $zero, .L80A7D03C     
/* 01210 80A7D030 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 01214 80A7D034 10000001 */  beq     $zero, $zero, .L80A7D03C   
/* 01218 80A7D038 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A7D03C:
/* 0121C 80A7D03C A6020316 */  sh      $v0, 0x0316($s0)           ## 00000316
.L80A7D040:
/* 01220 80A7D040 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01224 80A7D044 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 01228 80A7D048 C61201C8 */  lwc1    $f18, 0x01C8($s0)          ## 000001C8
/* 0122C 80A7D04C 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 01230 80A7D050 860F0316 */  lh      $t7, 0x0316($s0)           ## 00000316
/* 01234 80A7D054 46049182 */  mul.s   $f6, $f18, $f4             
/* 01238 80A7D058 86040318 */  lh      $a0, 0x0318($s0)           ## 00000318
/* 0123C 80A7D05C 01CFC021 */  addu    $t8, $t6, $t7              
/* 01240 80A7D060 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
/* 01244 80A7D064 4600320D */  trunc.w.s $f8, $f6                   
/* 01248 80A7D068 44034000 */  mfc1    $v1, $f8                   
/* 0124C 80A7D06C 00000000 */  nop
/* 01250 80A7D070 00031C00 */  sll     $v1, $v1, 16               
/* 01254 80A7D074 00031C03 */  sra     $v1, $v1, 16               
/* 01258 80A7D078 00031023 */  subu    $v0, $zero, $v1            
/* 0125C 80A7D07C 0082082A */  slt     $at, $a0, $v0              
/* 01260 80A7D080 50200004 */  beql    $at, $zero, .L80A7D094     
/* 01264 80A7D084 0064082A */  slt     $at, $v1, $a0              
/* 01268 80A7D088 10000007 */  beq     $zero, $zero, .L80A7D0A8   
/* 0126C 80A7D08C A6020318 */  sh      $v0, 0x0318($s0)           ## 00000318
/* 01270 80A7D090 0064082A */  slt     $at, $v1, $a0              
.L80A7D094:
/* 01274 80A7D094 10200003 */  beq     $at, $zero, .L80A7D0A4     
/* 01278 80A7D098 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 0127C 80A7D09C 10000001 */  beq     $zero, $zero, .L80A7D0A4   
/* 01280 80A7D0A0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A7D0A4:
/* 01284 80A7D0A4 A6020318 */  sh      $v0, 0x0318($s0)           ## 00000318
.L80A7D0A8:
/* 01288 80A7D0A8 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 0128C 80A7D0AC 86090318 */  lh      $t1, 0x0318($s0)           ## 00000318
/* 01290 80A7D0B0 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 01294 80A7D0B4 24060BB8 */  addiu   $a2, $zero, 0x0BB8         ## $a2 = 00000BB8
/* 01298 80A7D0B8 01095021 */  addu    $t2, $t0, $t1              
/* 0129C 80A7D0BC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 012A0 80A7D0C0 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 012A4 80A7D0C4 860B0030 */  lh      $t3, 0x0030($s0)           ## 00000030
/* 012A8 80A7D0C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 012AC 80A7D0CC A60B00B4 */  sh      $t3, 0x00B4($s0)           ## 000000B4
/* 012B0 80A7D0D0 3C0180A8 */  lui     $at, %hi(D_80A7E03C)       ## $at = 80A80000
/* 012B4 80A7D0D4 C42AE03C */  lwc1    $f10, %lo(D_80A7E03C)($at) 
/* 012B8 80A7D0D8 460A003C */  c.lt.s  $f0, $f10                  
/* 012BC 80A7D0DC 00000000 */  nop
/* 012C0 80A7D0E0 45020018 */  bc1fl   .L80A7D144                 
/* 012C4 80A7D0E4 860E031A */  lh      $t6, 0x031A($s0)           ## 0000031A
/* 012C8 80A7D0E8 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 012CC 80A7D0EC 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 012D0 80A7D0F0 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 012D4 80A7D0F4 E7B00040 */  swc1    $f16, 0x0040($sp)          
/* 012D8 80A7D0F8 C6040084 */  lwc1    $f4, 0x0084($s0)           ## 00000084
/* 012DC 80A7D0FC C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 012E0 80A7D100 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE8
/* 012E4 80A7D104 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 012E8 80A7D108 46049180 */  add.s   $f6, $f18, $f4             
/* 012EC 80A7D10C 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 012F0 80A7D110 E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 012F4 80A7D114 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 012F8 80A7D118 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 012FC 80A7D11C 0C00A511 */  jal     func_80029444              
/* 01300 80A7D120 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 01304 80A7D124 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 01308 80A7D128 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0130C 80A7D12C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01310 80A7D130 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE8
/* 01314 80A7D134 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 01318 80A7D138 0C00A511 */  jal     func_80029444              
/* 0131C 80A7D13C 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 01320 80A7D140 860E031A */  lh      $t6, 0x031A($s0)           ## 0000031A
.L80A7D144:
/* 01324 80A7D144 19C00015 */  blez    $t6, .L80A7D19C            
/* 01328 80A7D148 00000000 */  nop
/* 0132C 80A7D14C 96020314 */  lhu     $v0, 0x0314($s0)           ## 00000314
/* 01330 80A7D150 87B9004E */  lh      $t9, 0x004E($sp)           
/* 01334 80A7D154 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01338 80A7D158 304F0004 */  andi    $t7, $v0, 0x0004           ## $t7 = 00000000
/* 0133C 80A7D15C 11E00004 */  beq     $t7, $zero, .L80A7D170     
/* 01340 80A7D160 00000000 */  nop
/* 01344 80A7D164 8618031C */  lh      $t8, 0x031C($s0)           ## 0000031C
/* 01348 80A7D168 1B00000C */  blez    $t8, .L80A7D19C            
/* 0134C 80A7D16C 00000000 */  nop
.L80A7D170:
/* 01350 80A7D170 13210004 */  beq     $t9, $at, .L80A7D184       
/* 01354 80A7D174 30480001 */  andi    $t0, $v0, 0x0001           ## $t0 = 00000000
/* 01358 80A7D178 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0135C 80A7D17C 5721000C */  bnel    $t9, $at, .L80A7D1B0       
/* 01360 80A7D180 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
.L80A7D184:
/* 01364 80A7D184 11000009 */  beq     $t0, $zero, .L80A7D1AC     
/* 01368 80A7D188 3C0980A8 */  lui     $t1, %hi(D_80A7DEB8)       ## $t1 = 80A80000
/* 0136C 80A7D18C 8529DEB8 */  lh      $t1, %lo(D_80A7DEB8)($t1)  
/* 01370 80A7D190 29210004 */  slti    $at, $t1, 0x0004           
/* 01374 80A7D194 54200006 */  bnel    $at, $zero, .L80A7D1B0     
/* 01378 80A7D198 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
.L80A7D19C:
/* 0137C 80A7D19C 0C29F47D */  jal     func_80A7D1F4              
/* 01380 80A7D1A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01384 80A7D1A4 1000000F */  beq     $zero, $zero, .L80A7D1E4   
/* 01388 80A7D1A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7D1AC:
/* 0138C 80A7D1AC 960A0088 */  lhu     $t2, 0x0088($s0)           ## 00000088
.L80A7D1B0:
/* 01390 80A7D1B0 304C0010 */  andi    $t4, $v0, 0x0010           ## $t4 = 00000000
/* 01394 80A7D1B4 314B0040 */  andi    $t3, $t2, 0x0040           ## $t3 = 00000000
/* 01398 80A7D1B8 5560000A */  bnel    $t3, $zero, .L80A7D1E4     
/* 0139C 80A7D1BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 013A0 80A7D1C0 11800005 */  beq     $t4, $zero, .L80A7D1D8     
/* 013A4 80A7D1C4 00000000 */  nop
/* 013A8 80A7D1C8 0C29F4E7 */  jal     func_80A7D39C              
/* 013AC 80A7D1CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013B0 80A7D1D0 10000004 */  beq     $zero, $zero, .L80A7D1E4   
/* 013B4 80A7D1D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7D1D8:
/* 013B8 80A7D1D8 0C29F0E8 */  jal     func_80A7C3A0              
/* 013BC 80A7D1DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C0 80A7D1E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7D1E4:
/* 013C4 80A7D1E4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 013C8 80A7D1E8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 013CC 80A7D1EC 03E00008 */  jr      $ra                        
/* 013D0 80A7D1F0 00000000 */  nop

