glabel func_808949B8
/* 00518 808949B8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0051C 808949BC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00520 808949C0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00524 808949C4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00528 808949C8 848E01B4 */  lh      $t6, 0x01B4($a0)           ## 000001B4
/* 0052C 808949CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00530 808949D0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00534 808949D4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00538 808949D8 A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 0053C 808949DC 849801B4 */  lh      $t8, 0x01B4($a0)           ## 000001B4
/* 00540 808949E0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00544 808949E4 3C064270 */  lui     $a2, 0x4270                ## $a2 = 42700000
/* 00548 808949E8 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 0054C 808949EC 13200007 */  beq     $t9, $zero, .L80894A0C     
/* 00550 808949F0 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 00554 808949F4 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 00558 808949F8 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 0055C 808949FC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00560 80894A00 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00564 80894A04 0C00CD20 */  jal     func_80033480              
/* 00568 80894A08 AFA00018 */  sw      $zero, 0x0018($sp)         
.L80894A0C:
/* 0056C 80894A0C 3C063CE5 */  lui     $a2, 0x3CE5                ## $a2 = 3CE50000
/* 00570 80894A10 34C66042 */  ori     $a2, $a2, 0x6042           ## $a2 = 3CE56042
/* 00574 80894A14 260401B0 */  addiu   $a0, $s0, 0x01B0           ## $a0 = 000001B0
/* 00578 80894A18 0C01DE80 */  jal     Math_ApproxF
              
/* 0057C 80894A1C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00580 80894A20 10400003 */  beq     $v0, $zero, .L80894A30     
/* 00584 80894A24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00588 80894A28 0C225291 */  jal     func_80894A44              
/* 0058C 80894A2C 8FA50034 */  lw      $a1, 0x0034($sp)           
.L80894A30:
/* 00590 80894A30 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00594 80894A34 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00598 80894A38 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0059C 80894A3C 03E00008 */  jr      $ra                        
/* 005A0 80894A40 00000000 */  nop

