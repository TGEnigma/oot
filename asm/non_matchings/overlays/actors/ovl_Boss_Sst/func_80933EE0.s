glabel func_80933EE0
/* 07910 80933EE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07914 80933EE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07918 80933EE8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0791C 80933EEC 908206C5 */  lbu     $v0, 0x06C5($a0)           ## 000006C5
/* 07920 80933EF0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 07924 80933EF4 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 07928 80933EF8 51C00049 */  beql    $t6, $zero, .L80934020     
/* 0792C 80933EFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07930 80933F00 909800B1 */  lbu     $t8, 0x00B1($a0)           ## 000000B1
/* 07934 80933F04 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 07938 80933F08 A08F06C5 */  sb      $t7, 0x06C5($a0)           ## 000006C5
/* 0793C 80933F0C 57000005 */  bnel    $t8, $zero, .L80933F24     
/* 07940 80933F10 8CC90190 */  lw      $t1, 0x0190($a2)           ## 00000190
/* 07944 80933F14 909900B0 */  lbu     $t9, 0x00B0($a0)           ## 000000B0
/* 07948 80933F18 53200041 */  beql    $t9, $zero, .L80934020     
/* 0794C 80933F1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 07950 80933F20 8CC90190 */  lw      $t1, 0x0190($a2)           ## 00000190
.L80933F24:
/* 07954 80933F24 3C088093 */  lui     $t0, %hi(func_8092E830)    ## $t0 = 80930000
/* 07958 80933F28 2508E830 */  addiu   $t0, $t0, %lo(func_8092E830) ## $t0 = 8092E830
/* 0795C 80933F2C 15090018 */  bne     $t0, $t1, .L80933F90       
/* 07960 80933F30 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 07964 80933F34 0C00D58A */  jal     Actor_ApplyDamage
              
/* 07968 80933F38 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0796C 80933F3C 1440000A */  bne     $v0, $zero, .L80933F68     
/* 07970 80933F40 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 07974 80933F44 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 07978 80933F48 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0797C 80933F4C 0C00CB1F */  jal     func_80032C7C              
/* 07980 80933F50 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 07984 80933F54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07988 80933F58 0C24BBCA */  jal     func_8092EF28              
/* 0798C 80933F5C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 07990 80933F60 10000003 */  beq     $zero, $zero, .L80933F70   
/* 07994 80933F64 00000000 */  nop
.L80933F68:
/* 07998 80933F68 0C24BA4C */  jal     func_8092E930              
/* 0799C 80933F6C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80933F70:
/* 079A0 80933F70 3C048094 */  lui     $a0, %hi(D_80938C98)       ## $a0 = 80940000
/* 079A4 80933F74 0C24CAF7 */  jal     func_80932BDC              
/* 079A8 80933F78 8C848C98 */  lw      $a0, %lo(D_80938C98)($a0)  
/* 079AC 80933F7C 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 079B0 80933F80 0C24CAF7 */  jal     func_80932BDC              
/* 079B4 80933F84 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)  
/* 079B8 80933F88 10000025 */  beq     $zero, $zero, .L80934020   
/* 079BC 80933F8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80933F90:
/* 079C0 80933F90 0C24B91C */  jal     func_8092E470              
/* 079C4 80933F94 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 079C8 80933F98 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 079CC 80933F9C 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)  
/* 079D0 80933FA0 3C038093 */  lui     $v1, %hi(D_8093746C)       ## $v1 = 80930000
/* 079D4 80933FA4 2463746C */  addiu   $v1, $v1, %lo(D_8093746C)  ## $v1 = 8093746C
/* 079D8 80933FA8 848A001C */  lh      $t2, 0x001C($a0)           ## 8094001C
/* 079DC 80933FAC 24020009 */  addiu   $v0, $zero, 0x0009         ## $v0 = 00000009
/* 079E0 80933FB0 3C058094 */  lui     $a1, %hi(D_80938C98)       ## $a1 = 80940000
/* 079E4 80933FB4 000A5880 */  sll     $t3, $t2,  2               
/* 079E8 80933FB8 006B6021 */  addu    $t4, $v1, $t3              
/* 079EC 80933FBC 8D8D0000 */  lw      $t5, 0x0000($t4)           ## 00000000
/* 079F0 80933FC0 144D0006 */  bne     $v0, $t5, .L80933FDC       
/* 079F4 80933FC4 00000000 */  nop
/* 079F8 80933FC8 0C24D7CC */  jal     func_80935F30              
/* 079FC 80933FCC 00000000 */  nop
/* 07A00 80933FD0 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 07A04 80933FD4 1000000C */  beq     $zero, $zero, .L80934008   
/* 07A08 80933FD8 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)  
.L80933FDC:
/* 07A0C 80933FDC 8CA58C98 */  lw      $a1, %lo(D_80938C98)($a1)  
/* 07A10 80933FE0 84AE001C */  lh      $t6, 0x001C($a1)           ## 0000001C
/* 07A14 80933FE4 000E7880 */  sll     $t7, $t6,  2               
/* 07A18 80933FE8 006FC021 */  addu    $t8, $v1, $t7              
/* 07A1C 80933FEC 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 07A20 80933FF0 14590005 */  bne     $v0, $t9, .L80934008       
/* 07A24 80933FF4 00000000 */  nop
/* 07A28 80933FF8 0C24D7CC */  jal     func_80935F30              
/* 07A2C 80933FFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 07A30 80934000 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 07A34 80934004 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)  
.L80934008:
/* 07A38 80934008 0C24CA75 */  jal     func_809329D4              
/* 07A3C 8093400C 00000000 */  nop
/* 07A40 80934010 3C048094 */  lui     $a0, %hi(D_80938C98)       ## $a0 = 80940000
/* 07A44 80934014 0C24CA75 */  jal     func_809329D4              
/* 07A48 80934018 8C848C98 */  lw      $a0, %lo(D_80938C98)($a0)  
/* 07A4C 8093401C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80934020:
/* 07A50 80934020 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07A54 80934024 03E00008 */  jr      $ra                        
/* 07A58 80934028 00000000 */  nop

