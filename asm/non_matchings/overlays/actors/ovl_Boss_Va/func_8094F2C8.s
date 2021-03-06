.late_rodata
glabel jtbl_8095C560
.word L8094F350
.word L8094F350
.word L8094F350
.word L8094F39C
.word L8094F39C
.word L8094F39C

.text
glabel func_8094F2C8
/* 00008 8094F2C8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0000C 8094F2CC AFBF001C */  sw      $ra, 0x001C($sp)
/* 00010 8094F2D0 AFB10018 */  sw      $s1, 0x0018($sp)
/* 00014 8094F2D4 AFB00014 */  sw      $s0, 0x0014($sp)
/* 00018 8094F2D8 8C910118 */  lw      $s1, 0x0118($a0)           ## 00000118
/* 0001C 8094F2DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 8094F2E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00024 8094F2E4 C62C0024 */  lwc1    $f12, 0x0024($s1)          ## 00000024
/* 00028 8094F2E8 C62E0028 */  lwc1    $f14, 0x0028($s1)          ## 00000028
/* 0002C 8094F2EC 0C034261 */  jal     Matrix_Translate
/* 00030 8094F2F0 8E26002C */  lw      $a2, 0x002C($s1)           ## 0000002C
/* 00034 8094F2F4 862400B4 */  lh      $a0, 0x00B4($s1)           ## 000000B4
/* 00038 8094F2F8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0003C 8094F2FC 862600B8 */  lh      $a2, 0x00B8($s1)           ## 000000B8
/* 00040 8094F300 0C034421 */  jal     Matrix_RotateRPY
/* 00044 8094F304 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00048 8094F308 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 0004C 8094F30C 3C188096 */  lui     $t8, %hi(D_8095C044)       ## $t8 = 80960000
/* 00050 8094F310 2718C044 */  addiu   $t8, $t8, %lo(D_8095C044)  ## $t8 = 8095C044
/* 00054 8094F314 000E7880 */  sll     $t7, $t6,  2
/* 00058 8094F318 01EE7823 */  subu    $t7, $t7, $t6
/* 0005C 8094F31C 000F7880 */  sll     $t7, $t7,  2
/* 00060 8094F320 01F82021 */  addu    $a0, $t7, $t8
/* 00064 8094F324 0C0346BD */  jal     Matrix_MultVec3f
/* 00068 8094F328 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0006C 8094F32C 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00070 8094F330 2C610006 */  sltiu   $at, $v1, 0x0006
/* 00074 8094F334 10200067 */  beq     $at, $zero, .L8094F4D4
/* 00078 8094F338 0003C880 */  sll     $t9, $v1,  2
/* 0007C 8094F33C 3C018096 */  lui     $at, %hi(jtbl_8095C560)       ## $at = 80960000
/* 00080 8094F340 00390821 */  addu    $at, $at, $t9
/* 00084 8094F344 8C39C560 */  lw      $t9, %lo(jtbl_8095C560)($at)
/* 00088 8094F348 03200008 */  jr      $t9
/* 0008C 8094F34C 00000000 */  nop
glabel L8094F350
/* 00090 8094F350 92080194 */  lbu     $t0, 0x0194($s0)           ## 00000194
/* 00094 8094F354 00034880 */  sll     $t1, $v1,  2
/* 00098 8094F358 01234823 */  subu    $t1, $t1, $v1
/* 0009C 8094F35C 1500005D */  bne     $t0, $zero, .L8094F4D4
/* 000A0 8094F360 00094840 */  sll     $t1, $t1,  1
/* 000A4 8094F364 3C0A8096 */  lui     $t2, %hi(D_8095C17C)       ## $t2 = 80960000
/* 000A8 8094F368 254AC17C */  addiu   $t2, $t2, %lo(D_8095C17C)  ## $t2 = 8095C17C
/* 000AC 8094F36C 012A1021 */  addu    $v0, $t1, $t2
/* 000B0 8094F370 844B0000 */  lh      $t3, 0x0000($v0)           ## 00000000
/* 000B4 8094F374 862C00B4 */  lh      $t4, 0x00B4($s1)           ## 000000B4
/* 000B8 8094F378 016C6821 */  addu    $t5, $t3, $t4
/* 000BC 8094F37C A60D00B4 */  sh      $t5, 0x00B4($s0)           ## 000000B4
/* 000C0 8094F380 844E0002 */  lh      $t6, 0x0002($v0)           ## 00000002
/* 000C4 8094F384 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 000C8 8094F388 863800B8 */  lh      $t8, 0x00B8($s1)           ## 000000B8
/* 000CC 8094F38C 844F0004 */  lh      $t7, 0x0004($v0)           ## 00000004
/* 000D0 8094F390 01F8C821 */  addu    $t9, $t7, $t8
/* 000D4 8094F394 1000004F */  beq     $zero, $zero, .L8094F4D4
/* 000D8 8094F398 A61900B8 */  sh      $t9, 0x00B8($s0)           ## 000000B8
glabel L8094F39C
/* 000DC 8094F39C 00034080 */  sll     $t0, $v1,  2
/* 000E0 8094F3A0 01034023 */  subu    $t0, $t0, $v1
/* 000E4 8094F3A4 3C098096 */  lui     $t1, %hi(D_8095C17C)       ## $t1 = 80960000
/* 000E8 8094F3A8 2529C17C */  addiu   $t1, $t1, %lo(D_8095C17C)  ## $t1 = 8095C17C
/* 000EC 8094F3AC 00084040 */  sll     $t0, $t0,  1
/* 000F0 8094F3B0 01091021 */  addu    $v0, $t0, $t1
/* 000F4 8094F3B4 844A0002 */  lh      $t2, 0x0002($v0)           ## 00000002
/* 000F8 8094F3B8 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 000FC 8094F3BC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00100 8094F3C0 84440002 */  lh      $a0, 0x0002($v0)           ## 00000002
/* 00104 8094F3C4 E7A00020 */  swc1    $f0, 0x0020($sp)
/* 00108 8094F3C8 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 0010C 8094F3CC 3C048096 */  lui     $a0, %hi(D_8095C17E)       ## $a0 = 80960000
/* 00110 8094F3D0 000B6080 */  sll     $t4, $t3,  2
/* 00114 8094F3D4 018B6023 */  subu    $t4, $t4, $t3
/* 00118 8094F3D8 000C6040 */  sll     $t4, $t4,  1
/* 0011C 8094F3DC 008C2021 */  addu    $a0, $a0, $t4
/* 00120 8094F3E0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00124 8094F3E4 8484C17E */  lh      $a0, %lo(D_8095C17E)($a0)
/* 00128 8094F3E8 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 0012C 8094F3EC 863800B4 */  lh      $t8, 0x00B4($s1)           ## 000000B4
/* 00130 8094F3F0 C7A40020 */  lwc1    $f4, 0x0020($sp)
/* 00134 8094F3F4 000D7080 */  sll     $t6, $t5,  2
/* 00138 8094F3F8 01CD7023 */  subu    $t6, $t6, $t5
/* 0013C 8094F3FC 862D00B8 */  lh      $t5, 0x00B8($s1)           ## 000000B8
/* 00140 8094F400 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 00144 8094F404 3C0F8096 */  lui     $t7, %hi(D_8095C17C)       ## $t7 = 80960000
/* 00148 8094F408 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 0014C 8094F40C 46803220 */  cvt.s.w $f8, $f6
/* 00150 8094F410 25EFC17C */  addiu   $t7, $t7, %lo(D_8095C17C)  ## $t7 = 8095C17C
/* 00154 8094F414 000E7040 */  sll     $t6, $t6,  1
/* 00158 8094F418 01CF1021 */  addu    $v0, $t6, $t7
/* 0015C 8094F41C 844B0000 */  lh      $t3, 0x0000($v0)           ## 00000000
/* 00160 8094F420 468091A0 */  cvt.s.w $f6, $f18
/* 00164 8094F424 46082282 */  mul.s   $f10, $f4, $f8
/* 00168 8094F428 00000000 */  nop
/* 0016C 8094F42C 46060102 */  mul.s   $f4, $f0, $f6
/* 00170 8094F430 4600540D */  trunc.w.s $f16, $f10
/* 00174 8094F434 4600220D */  trunc.w.s $f8, $f4
/* 00178 8094F438 440A8000 */  mfc1    $t2, $f16
/* 0017C 8094F43C 44194000 */  mfc1    $t9, $f8
/* 00180 8094F440 016A6021 */  addu    $t4, $t3, $t2
/* 00184 8094F444 01994023 */  subu    $t0, $t4, $t9
/* 00188 8094F448 A60800B4 */  sh      $t0, 0x00B4($s0)           ## 000000B4
/* 0018C 8094F44C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00190 8094F450 84440002 */  lh      $a0, 0x0002($v0)           ## 00000002
/* 00194 8094F454 E7A00020 */  swc1    $f0, 0x0020($sp)
/* 00198 8094F458 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 0019C 8094F45C 3C048096 */  lui     $a0, %hi(D_8095C17E)       ## $a0 = 80960000
/* 001A0 8094F460 00095880 */  sll     $t3, $t1,  2
/* 001A4 8094F464 01695823 */  subu    $t3, $t3, $t1
/* 001A8 8094F468 000B5840 */  sll     $t3, $t3,  1
/* 001AC 8094F46C 008B2021 */  addu    $a0, $a0, $t3
/* 001B0 8094F470 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001B4 8094F474 8484C17E */  lh      $a0, %lo(D_8095C17E)($a0)
/* 001B8 8094F478 862A00B4 */  lh      $t2, 0x00B4($s1)           ## 000000B4
/* 001BC 8094F47C 862B00B8 */  lh      $t3, 0x00B8($s1)           ## 000000B8
/* 001C0 8094F480 C7A40020 */  lwc1    $f4, 0x0020($sp)
/* 001C4 8094F484 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 001C8 8094F488 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 001CC 8094F48C 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 001D0 8094F490 46805420 */  cvt.s.w $f16, $f10
/* 001D4 8094F494 3C088096 */  lui     $t0, %hi(D_8095C180)       ## $t0 = 80960000
/* 001D8 8094F498 000CC880 */  sll     $t9, $t4,  2
/* 001DC 8094F49C 032CC823 */  subu    $t9, $t9, $t4
/* 001E0 8094F4A0 0019C840 */  sll     $t9, $t9,  1
/* 001E4 8094F4A4 468042A0 */  cvt.s.w $f10, $f8
/* 001E8 8094F4A8 46100482 */  mul.s   $f18, $f0, $f16
/* 001EC 8094F4AC 01194021 */  addu    $t0, $t0, $t9
/* 001F0 8094F4B0 8508C180 */  lh      $t0, %lo(D_8095C180)($t0)
/* 001F4 8094F4B4 460A2402 */  mul.s   $f16, $f4, $f10
/* 001F8 8094F4B8 4600918D */  trunc.w.s $f6, $f18
/* 001FC 8094F4BC 4600848D */  trunc.w.s $f18, $f16
/* 00200 8094F4C0 44183000 */  mfc1    $t8, $f6
/* 00204 8094F4C4 440F9000 */  mfc1    $t7, $f18
/* 00208 8094F4C8 03084821 */  addu    $t1, $t8, $t0
/* 0020C 8094F4CC 012F6021 */  addu    $t4, $t1, $t7
/* 00210 8094F4D0 A60C00B8 */  sh      $t4, 0x00B8($s0)           ## 000000B8
.L8094F4D4:
/* 00214 8094F4D4 8A1800B4 */  lwl     $t8, 0x00B4($s0)           ## 000000B4
/* 00218 8094F4D8 9A1800B7 */  lwr     $t8, 0x00B7($s0)           ## 000000B7
/* 0021C 8094F4DC 8E080118 */  lw      $t0, 0x0118($s0)           ## 00000118
/* 00220 8094F4E0 AA180030 */  swl     $t8, 0x0030($s0)           ## 00000030
/* 00224 8094F4E4 BA180033 */  swr     $t8, 0x0033($s0)           ## 00000033
/* 00228 8094F4E8 961800B8 */  lhu     $t8, 0x00B8($s0)           ## 000000B8
/* 0022C 8094F4EC A6180034 */  sh      $t8, 0x0034($s0)           ## 00000034
/* 00230 8094F4F0 C50600BC */  lwc1    $f6, 0x00BC($t0)           ## 809600BC
/* 00234 8094F4F4 E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
/* 00238 8094F4F8 8FBF001C */  lw      $ra, 0x001C($sp)
/* 0023C 8094F4FC 8FB10018 */  lw      $s1, 0x0018($sp)
/* 00240 8094F500 8FB00014 */  lw      $s0, 0x0014($sp)
/* 00244 8094F504 03E00008 */  jr      $ra
/* 00248 8094F508 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
