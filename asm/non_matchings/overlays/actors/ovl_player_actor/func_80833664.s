glabel func_80833664
/* 01454 80833664 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01458 80833668 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0145C 8083366C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01460 80833670 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01464 80833674 90AE015B */  lbu     $t6, 0x015B($a1)           ## 0000015B
/* 01468 80833678 8CB9067C */  lw      $t9, 0x067C($a1)           ## 0000067C
/* 0146C 8083367C 3C01FEFF */  lui     $at, 0xFEFF                ## $at = FEFF0000
/* 01470 80833680 3C188085 */  lui     $t8, %hi(D_80853914)       ## $t8 = 80850000
/* 01474 80833684 3421FFF7 */  ori     $at, $at, 0xFFF7           ## $at = FEFFFFF7
/* 01478 80833688 00063600 */  sll     $a2, $a2, 24               
/* 0147C 8083368C 27183914 */  addiu   $t8, $t8, %lo(D_80853914)  ## $t8 = 80853914
/* 01480 80833690 000E7880 */  sll     $t7, $t6,  2               
/* 01484 80833694 03214024 */  and     $t0, $t9, $at              
/* 01488 80833698 00063603 */  sra     $a2, $a2, 24               
/* 0148C 8083369C 8CA701BC */  lw      $a3, 0x01BC($a1)           ## 000001BC
/* 01490 808336A0 01F81021 */  addu    $v0, $t7, $t8              
/* 01494 808336A4 ACA8067C */  sw      $t0, 0x067C($a1)           ## 0000067C
/* 01498 808336A8 2404002D */  addiu   $a0, $zero, 0x002D         ## $a0 = 0000002D
/* 0149C 808336AC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L808336B0:
/* 014A0 808336B0 8C490000 */  lw      $t1, 0x0000($v0)           ## 00000000
/* 014A4 808336B4 50E90005 */  beql    $a3, $t1, .L808336CC       
/* 014A8 808336B8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 014AC 808336BC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 014B0 808336C0 1464FFFB */  bne     $v1, $a0, .L808336B0       
/* 014B4 808336C4 24420018 */  addiu   $v0, $v0, 0x0018           ## $v0 = 00000018
/* 014B8 808336C8 8FA40028 */  lw      $a0, 0x0028($sp)           
.L808336CC:
/* 014BC 808336CC AFA3001C */  sw      $v1, 0x001C($sp)           
/* 014C0 808336D0 0C20CE67 */  jal     func_8083399C              
/* 014C4 808336D4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 014C8 808336D8 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 014CC 808336DC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 014D0 808336E0 3C0F8085 */  lui     $t7, %hi(D_80853914)       ## $t7 = 80850000
/* 014D4 808336E4 2C61002D */  sltiu   $at, $v1, 0x002D           
/* 014D8 808336E8 1020000A */  beq     $at, $zero, .L80833714     
/* 014DC 808336EC 00035080 */  sll     $t2, $v1,  2               
/* 014E0 808336F0 90AC015B */  lbu     $t4, 0x015B($a1)           ## 0000015B
/* 014E4 808336F4 01435023 */  subu    $t2, $t2, $v1              
/* 014E8 808336F8 000A5040 */  sll     $t2, $t2,  1               
/* 014EC 808336FC 000A5880 */  sll     $t3, $t2,  2               
/* 014F0 80833700 000C6880 */  sll     $t5, $t4,  2               
/* 014F4 80833704 016D7021 */  addu    $t6, $t3, $t5              
/* 014F8 80833708 01EE7821 */  addu    $t7, $t7, $t6              
/* 014FC 8083370C 8DEF3914 */  lw      $t7, %lo(D_80853914)($t7)  
/* 01500 80833710 ACAF01BC */  sw      $t7, 0x01BC($a1)           ## 000001BC
.L80833714:
/* 01504 80833714 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01508 80833718 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0150C 8083371C 03E00008 */  jr      $ra                        
/* 01510 80833720 00000000 */  nop
