glabel func_80A87EF0
/* 006F0 80A87EF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006F4 80A87EF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006F8 80A87EF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006FC 80A87EFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00700 80A87F00 9482030A */  lhu     $v0, 0x030A($a0)           ## 0000030A
/* 00704 80A87F04 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00708 80A87F08 304E0004 */  andi    $t6, $v0, 0x0004           ## $t6 = 00000000
/* 0070C 80A87F0C 15C00009 */  bne     $t6, $zero, .L80A87F34     
/* 00710 80A87F10 344F0004 */  ori     $t7, $v0, 0x0004           ## $t7 = 00000004
/* 00714 80A87F14 A48F030A */  sh      $t7, 0x030A($a0)           ## 0000030A
/* 00718 80A87F18 8C840304 */  lw      $a0, 0x0304($a0)           ## 00000304
/* 0071C 80A87F1C 50800006 */  beql    $a0, $zero, .L80A87F38     
/* 00720 80A87F20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00724 80A87F24 0C00B55C */  jal     Actor_Kill
              
/* 00728 80A87F28 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0072C 80A87F2C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00730 80A87F30 ACA0011C */  sw      $zero, 0x011C($a1)         ## 0000011C
.L80A87F34:
/* 00734 80A87F34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A87F38:
/* 00738 80A87F38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0073C 80A87F3C 03E00008 */  jr      $ra                        
/* 00740 80A87F40 00000000 */  nop

