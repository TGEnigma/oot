.late_rodata
glabel D_80B37B74
    .float 0.2

.text
glabel func_80B34428
/* 00778 80B34428 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0077C 80B3442C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00780 80B34430 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00784 80B34434 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00788 80B34438 8C8202E8 */  lw      $v0, 0x02E8($a0)           ## 000002E8
/* 0078C 80B3443C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00790 80B34440 28410006 */  slti    $at, $v0, 0x0006           
/* 00794 80B34444 14200019 */  bne     $at, $zero, .L80B344AC     
/* 00798 80B34448 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0079C 80B3444C 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 007A0 80B34450 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 007A4 80B34454 44818000 */  mtc1    $at, $f16                  ## $f16 = 240.00
/* 007A8 80B34458 C48A0090 */  lwc1    $f10, 0x0090($a0)          ## 00000090
/* 007AC 80B3445C C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 007B0 80B34460 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 007B4 80B34464 4610503C */  c.lt.s  $f10, $f16                 
/* 007B8 80B34468 46062201 */  sub.s   $f8, $f4, $f6              
/* 007BC 80B3446C 45000036 */  bc1f    .L80B34548                 
/* 007C0 80B34470 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 007C4 80B34474 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 007C8 80B34478 8499001C */  lh      $t9, 0x001C($a0)           ## 0000001C
/* 007CC 80B3447C AC8E02E8 */  sw      $t6, 0x02E8($a0)           ## 000002E8
/* 007D0 80B34480 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 007D4 80B34484 13200030 */  beq     $t9, $zero, .L80B34548     
/* 007D8 80B34488 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 007DC 80B3448C 848802FC */  lh      $t0, 0x02FC($a0)           ## 000002FC
/* 007E0 80B34490 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 007E4 80B34494 5101002D */  beql    $t0, $at, .L80B3454C       
/* 007E8 80B34498 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007EC 80B3449C 0C03D6B3 */  jal     func_800F5ACC              
/* 007F0 80B344A0 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
/* 007F4 80B344A4 10000029 */  beq     $zero, $zero, .L80B3454C   
/* 007F8 80B344A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B344AC:
/* 007FC 80B344AC 1040001C */  beq     $v0, $zero, .L80B34520     
/* 00800 80B344B0 3C0180B3 */  lui     $at, %hi(D_80B37B74)       ## $at = 80B30000
/* 00804 80B344B4 C6120050 */  lwc1    $f18, 0x0050($s0)          ## 00000050
/* 00808 80B344B8 C4247B74 */  lwc1    $f4, %lo(D_80B37B74)($at)  
/* 0080C 80B344BC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00810 80B344C0 C6080054 */  lwc1    $f8, 0x0054($s0)           ## 00000054
/* 00814 80B344C4 46049182 */  mul.s   $f6, $f18, $f4             
/* 00818 80B344C8 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 0081C 80B344CC C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00820 80B344D0 260400C4 */  addiu   $a0, $s0, 0x00C4           ## $a0 = 000000C4
/* 00824 80B344D4 3C05428C */  lui     $a1, 0x428C                ## $a1 = 428C0000
/* 00828 80B344D8 46128100 */  add.s   $f4, $f16, $f18            
/* 0082C 80B344DC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00830 80B344E0 3C074160 */  lui     $a3, 0x4160                ## $a3 = 41600000
/* 00834 80B344E4 46064280 */  add.s   $f10, $f8, $f6             
/* 00838 80B344E8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0083C 80B344EC E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 00840 80B344F0 E60A0054 */  swc1    $f10, 0x0054($s0)          ## 00000054
/* 00844 80B344F4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00848 80B344F8 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 0084C 80B344FC 8E0902E8 */  lw      $t1, 0x02E8($s0)           ## 000002E8
/* 00850 80B34500 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00854 80B34504 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 00858 80B34508 1540000F */  bne     $t2, $zero, .L80B34548     
/* 0085C 80B3450C AE0A02E8 */  sw      $t2, 0x02E8($s0)           ## 000002E8
/* 00860 80B34510 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00864 80B34514 2405383C */  addiu   $a1, $zero, 0x383C         ## $a1 = 0000383C
/* 00868 80B34518 1000000C */  beq     $zero, $zero, .L80B3454C   
/* 0086C 80B3451C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B34520:
/* 00870 80B34520 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00874 80B34524 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 00878 80B34528 10400007 */  beq     $v0, $zero, .L80B34548     
/* 0087C 80B3452C 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00880 80B34530 C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 00884 80B34534 44815000 */  mtc1    $at, $f10                  ## $f10 = -2.00
/* 00888 80B34538 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0088C 80B3453C E6060054 */  swc1    $f6, 0x0054($s0)           ## 00000054
/* 00890 80B34540 0C2CD157 */  jal     func_80B3455C              
/* 00894 80B34544 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
.L80B34548:
/* 00898 80B34548 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B3454C:
/* 0089C 80B3454C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 008A0 80B34550 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 008A4 80B34554 03E00008 */  jr      $ra                        
/* 008A8 80B34558 00000000 */  nop
