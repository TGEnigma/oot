.rdata
glabel D_8095C430
    .asciz "../z_boss_va.c"
    .balign 4

glabel D_8095C440
    .asciz "../z_boss_va.c"
    .balign 4

glabel D_8095C450
    .asciz "../z_boss_va.c"
    .balign 4

glabel D_8095C460
    .asciz "../z_boss_va.c"
    .balign 4

.text
glabel func_80958FFC
/* 09D3C 80958FFC 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 09D40 80959000 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 09D44 80959004 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 09D48 80959008 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 09D4C 8095900C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 09D50 80959010 AFA60078 */  sw      $a2, 0x0078($sp)           
/* 09D54 80959014 AFA7007C */  sw      $a3, 0x007C($sp)           
/* 09D58 80959018 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 09D5C 8095901C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 09D60 80959020 3C068096 */  lui     $a2, %hi(D_8095C430)       ## $a2 = 80960000
/* 09D64 80959024 24C6C430 */  addiu   $a2, $a2, %lo(D_8095C430)  ## $a2 = 8095C430
/* 09D68 80959028 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 09D6C 8095902C 2407118E */  addiu   $a3, $zero, 0x118E         ## $a3 = 0000118E
/* 09D70 80959030 0C031AB1 */  jal     Graph_OpenDisps              
/* 09D74 80959034 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 09D78 80959038 8FA20074 */  lw      $v0, 0x0074($sp)           
/* 09D7C 8095903C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 09D80 80959040 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 09D84 80959044 1441003A */  bne     $v0, $at, .L80959130       
/* 09D88 80959048 35EF0028 */  ori     $t7, $t7, 0x0028           ## $t7 = DB060028
/* 09D8C 8095904C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09D90 80959050 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 09D94 80959054 00711821 */  addu    $v1, $v1, $s1              
/* 09D98 80959058 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09D9C 8095905C AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 09DA0 80959060 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 09DA4 80959064 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 09DA8 80959068 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 09DAC 8095906C 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 09DB0 80959070 00030823 */  subu    $at, $zero, $v1            
/* 09DB4 80959074 00015080 */  sll     $t2, $at,  2               
/* 09DB8 80959078 00033880 */  sll     $a3, $v1,  2               
/* 09DBC 8095907C 01415021 */  addu    $t2, $t2, $at              
/* 09DC0 80959080 00E33821 */  addu    $a3, $a3, $v1              
/* 09DC4 80959084 00073840 */  sll     $a3, $a3,  1               
/* 09DC8 80959088 314B001F */  andi    $t3, $t2, 0x001F           ## $t3 = 00000000
/* 09DCC 8095908C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 09DD0 80959090 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 09DD4 80959094 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 09DD8 80959098 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 09DDC 8095909C AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 09DE0 809590A0 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 09DE4 809590A4 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 09DE8 809590A8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 09DEC 809590AC AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 09DF0 809590B0 30E7001F */  andi    $a3, $a3, 0x001F           ## $a3 = 00000000
/* 09DF4 809590B4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 09DF8 809590B8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 09DFC 809590BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09E00 809590C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 09E04 809590C4 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 09E08 809590C8 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 09E0C 809590CC 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 09E10 809590D0 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 09E14 809590D4 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 09E18 809590D8 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 09E1C 809590DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09E20 809590E0 3C058096 */  lui     $a1, %hi(D_8095C440)       ## $a1 = 80960000
/* 09E24 809590E4 24A5C440 */  addiu   $a1, $a1, %lo(D_8095C440)  ## $a1 = 8095C440
/* 09E28 809590E8 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09E2C 809590EC AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 09E30 809590F0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 09E34 809590F4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 09E38 809590F8 2406119C */  addiu   $a2, $zero, 0x119C         ## $a2 = 0000119C
/* 09E3C 809590FC 0C0346A2 */  jal     Matrix_NewMtx              
/* 09E40 80959100 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 09E44 80959104 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 09E48 80959108 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 09E4C 8095910C 25290FA0 */  addiu   $t1, $t1, 0x0FA0           ## $t1 = 06000FA0
/* 09E50 80959110 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09E54 80959114 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09E58 80959118 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 09E5C 8095911C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 09E60 80959120 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 09E64 80959124 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 09E68 80959128 1000001C */  beq     $zero, $zero, .L8095919C   
/* 09E6C 8095912C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
.L80959130:
/* 09E70 80959130 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 09E74 80959134 10410004 */  beq     $v0, $at, .L80959148       
/* 09E78 80959138 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 09E7C 8095913C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 09E80 80959140 14410016 */  bne     $v0, $at, .L8095919C       
/* 09E84 80959144 00000000 */  nop
.L80959148:
/* 09E88 80959148 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09E8C 8095914C 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 09E90 80959150 3C058096 */  lui     $a1, %hi(D_8095C450)       ## $a1 = 80960000
/* 09E94 80959154 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 09E98 80959158 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 09E9C 8095915C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 09EA0 80959160 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 09EA4 80959164 24A5C450 */  addiu   $a1, $a1, %lo(D_8095C450)  ## $a1 = 8095C450
/* 09EA8 80959168 240611A0 */  addiu   $a2, $zero, 0x11A0         ## $a2 = 000011A0
/* 09EAC 8095916C 0C0346A2 */  jal     Matrix_NewMtx              
/* 09EB0 80959170 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 09EB4 80959174 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 09EB8 80959178 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 09EBC 8095917C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09EC0 80959180 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09EC4 80959184 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 09EC8 80959188 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 09ECC 8095918C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 09ED0 80959190 8FAE0078 */  lw      $t6, 0x0078($sp)           
/* 09ED4 80959194 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 09ED8 80959198 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
.L8095919C:
/* 09EDC 8095919C 3C068096 */  lui     $a2, %hi(D_8095C460)       ## $a2 = 80960000
/* 09EE0 809591A0 24C6C460 */  addiu   $a2, $a2, %lo(D_8095C460)  ## $a2 = 8095C460
/* 09EE4 809591A4 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 09EE8 809591A8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 09EEC 809591AC 0C031AD5 */  jal     Graph_CloseDisps              
/* 09EF0 809591B0 240711A5 */  addiu   $a3, $zero, 0x11A5         ## $a3 = 000011A5
/* 09EF4 809591B4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 09EF8 809591B8 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 09EFC 809591BC 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 09F00 809591C0 03E00008 */  jr      $ra                        
/* 09F04 809591C4 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
