.rdata
glabel D_80139690
    .asciz "\x1B[43;30mcamera: warning: attention: target is not valid, stop!\n\x1B[m"
    .balign 4

glabel D_801396D4
    .asciz "\x1B[43;30mcamera: attention demo: this door is dummy door!\n\x1B[m"
    .balign 4

.late_rodata
glabel D_8013A358
    .float 0.6

glabel D_8013A35C
    .float 0.005

glabel D_8013A360
    .float -0.2

glabel D_8013A364
    .float 0.004

glabel D_8013A368
    .float 0.005

.text
glabel Camera_Demo5
/* ACC43C 8005529C 27BDFF68 */  addiu $sp, $sp, -0x98
/* ACC440 800552A0 AFB00018 */  sw    $s0, 0x18($sp)
/* ACC444 800552A4 00808025 */  move  $s0, $a0
/* ACC448 800552A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* ACC44C 800552AC 8E050090 */  lw    $a1, 0x90($s0)
/* ACC450 800552B0 0C00BBB9 */  jal   func_8002EEE4
/* ACC454 800552B4 27A40064 */   addiu $a0, $sp, 0x64
/* ACC458 800552B8 8E0E0090 */  lw    $t6, 0x90($s0)
/* ACC45C 800552BC 240F3200 */  li    $t7, 12800
/* ACC460 800552C0 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACC464 800552C4 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* ACC468 800552C8 AFAE004C */  sw    $t6, 0x4c($sp)
/* ACC46C 800552CC 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACC470 800552D0 10A00005 */  beqz  $a1, .L800552E8
/* ACC474 800552D4 00000000 */   nop
/* ACC478 800552D8 8CB80130 */  lw    $t8, 0x130($a1)
/* ACC47C 800552DC 260400AC */  addiu $a0, $s0, 0xac
/* ACC480 800552E0 17000008 */  bnez  $t8, .L80055304
/* ACC484 800552E4 00000000 */   nop
.L800552E8:
/* ACC488 800552E8 14A00003 */  bnez  $a1, .L800552F8
/* ACC48C 800552EC 3C048014 */   lui   $a0, %hi(D_80139690) # $a0, 0x8014
/* ACC490 800552F0 0C00084C */  jal   osSyncPrintf
/* ACC494 800552F4 24849690 */   addiu $a0, %lo(D_80139690) # addiu $a0, $a0, -0x6970
.L800552F8:
/* ACC498 800552F8 AE0000A8 */  sw    $zero, 0xa8($s0)
/* ACC49C 800552FC 10000259 */  b     .L80055C64
/* ACC4A0 80055300 24020001 */   li    $v0, 1
.L80055304:
/* ACC4A4 80055304 0C00BBB9 */  jal   func_8002EEE4
/* ACC4A8 80055308 AFA40020 */   sw    $a0, 0x20($sp)
/* ACC4AC 8005530C 27A40088 */  addiu $a0, $sp, 0x88
/* ACC4B0 80055310 8FA50020 */  lw    $a1, 0x20($sp)
/* ACC4B4 80055314 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ACC4B8 80055318 26060094 */   addiu $a2, $s0, 0x94
/* ACC4BC 8005531C 8E1900A8 */  lw    $t9, 0xa8($s0)
/* ACC4C0 80055320 3C018012 */  lui   $at, %hi(D_8011D3AC) # $at, 0x8012
/* ACC4C4 80055324 27A6007E */  addiu $a2, $sp, 0x7e
/* ACC4C8 80055328 93280002 */  lbu   $t0, 2($t9)
/* ACC4CC 8005532C 27A7007C */  addiu $a3, $sp, 0x7c
/* ACC4D0 80055330 AC28D3AC */  sw    $t0, %lo(D_8011D3AC)($at)
/* ACC4D4 80055334 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACC4D8 80055338 0C00BCDD */  jal   func_8002F374
/* ACC4DC 8005533C 8E04008C */   lw    $a0, 0x8c($s0)
/* ACC4E0 80055340 8FA40020 */  lw    $a0, 0x20($sp)
/* ACC4E4 80055344 0C01EFE4 */  jal   OLib_Vec3fDist
/* ACC4E8 80055348 2605005C */   addiu $a1, $s0, 0x5c
/* ACC4EC 8005534C E7A00094 */  swc1  $f0, 0x94($sp)
/* ACC4F0 80055350 27A40080 */  addiu $a0, $sp, 0x80
/* ACC4F4 80055354 27A50064 */  addiu $a1, $sp, 0x64
/* ACC4F8 80055358 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ACC4FC 8005535C 26060074 */   addiu $a2, $s0, 0x74
/* ACC500 80055360 87A90086 */  lh    $t1, 0x86($sp)
/* ACC504 80055364 87AA008E */  lh    $t2, 0x8e($sp)
/* ACC508 80055368 24010002 */  li    $at, 2
/* ACC50C 8005536C C7A40080 */  lwc1  $f4, 0x80($sp)
/* ACC510 80055370 012A5823 */  subu  $t3, $t1, $t2
/* ACC514 80055374 A7AB004A */  sh    $t3, 0x4a($sp)
/* ACC518 80055378 8E0C00A8 */  lw    $t4, 0xa8($s0)
/* ACC51C 8005537C C7A00088 */  lwc1  $f0, 0x88($sp)
/* ACC520 80055380 91830002 */  lbu   $v1, 2($t4)
/* ACC524 80055384 14610040 */  bne   $v1, $at, .L80055488
/* ACC528 80055388 3C0141F0 */   li    $at, 0x41F00000 # 0.000000
/* ACC52C 8005538C 44811000 */  mtc1  $at, $f2
/* ACC530 80055390 00000000 */  nop
/* ACC534 80055394 4604103C */  c.lt.s $f2, $f4
/* ACC538 80055398 00000000 */  nop
/* ACC53C 8005539C 45000021 */  bc1f  .L80055424
/* ACC540 800553A0 00000000 */   nop
/* ACC544 800553A4 860D0160 */  lh    $t5, 0x160($s0)
/* ACC548 800553A8 3C018012 */  lui   $at, %hi(D_8011D6D8) # $at, 0x8012
/* ACC54C 800553AC 25AEFFFF */  addiu $t6, $t5, -1
/* ACC550 800553B0 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC554 800553B4 A42ED6D8 */   sh    $t6, %lo(D_8011D6D8)($at)
/* ACC558 800553B8 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC55C 800553BC 44813000 */  mtc1  $at, $f6
/* ACC560 800553C0 3C028012 */  lui   $v0, %hi(D_8011D6AC) # $v0, 0x8012
/* ACC564 800553C4 2442D6AC */  addiu $v0, %lo(D_8011D6AC) # addiu $v0, $v0, -0x2954
/* ACC568 800553C8 46060202 */  mul.s $f8, $f0, $f6
/* ACC56C 800553CC 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC570 800553D0 E4480040 */   swc1  $f8, 0x40($v0)
/* ACC574 800553D4 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC578 800553D8 44815000 */  mtc1  $at, $f10
/* ACC57C 800553DC 3C028012 */  lui   $v0, %hi(D_8011D6AC)
/* ACC580 800553E0 2442D6AC */  addiu $v0, %lo(D_8011D6AC) # addiu $v0, $v0, -0x2954
/* ACC584 800553E4 460A0402 */  mul.s $f16, $f0, $f10
/* ACC588 800553E8 240F0003 */  li    $t7, 3
/* ACC58C 800553EC 25E8FFFF */  addiu $t0, $t7, -1
/* ACC590 800553F0 E4500044 */  swc1  $f16, 0x44($v0)
/* ACC594 800553F4 86180162 */  lh    $t8, 0x162($s0)
/* ACC598 800553F8 AE020004 */  sw    $v0, 4($s0)
/* ACC59C 800553FC AE0F0000 */  sw    $t7, ($s0)
/* ACC5A0 80055400 53000004 */  beql  $t8, $zero, .L80055414
/* ACC5A4 80055404 86090160 */   lh    $t1, 0x160($s0)
/* ACC5A8 80055408 100001C2 */  b     .L80055B14
/* ACC5AC 8005540C AE080000 */   sw    $t0, ($s0)
/* ACC5B0 80055410 86090160 */  lh    $t1, 0x160($s0)
.L80055414:
/* ACC5B4 80055414 844A0054 */  lh    $t2, 0x54($v0)
/* ACC5B8 80055418 012A5821 */  addu  $t3, $t1, $t2
/* ACC5BC 8005541C 100001BD */  b     .L80055B14
/* ACC5C0 80055420 A60B0160 */   sh    $t3, 0x160($s0)
.L80055424:
/* ACC5C4 80055424 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC5C8 80055428 00000000 */   nop
/* ACC5CC 8005542C 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC5D0 80055430 44819000 */  mtc1  $at, $f18
/* ACC5D4 80055434 3C028012 */  lui   $v0, %hi(D_8011D724)
/* ACC5D8 80055438 2442D724 */  addiu $v0, %lo(D_8011D724) # addiu $v0, $v0, -0x28dc
/* ACC5DC 8005543C 46120102 */  mul.s $f4, $f0, $f18
/* ACC5E0 80055440 240E0003 */  li    $t6, 3
/* ACC5E4 80055444 25D9FFFF */  addiu $t9, $t6, -1
/* ACC5E8 80055448 E4440044 */  swc1  $f4, 0x44($v0)
/* ACC5EC 8005544C 860C0160 */  lh    $t4, 0x160($s0)
/* ACC5F0 80055450 258DFFFF */  addiu $t5, $t4, -1
/* ACC5F4 80055454 A44D002C */  sh    $t5, 0x2c($v0)
/* ACC5F8 80055458 860F0162 */  lh    $t7, 0x162($s0)
/* ACC5FC 8005545C AE020004 */  sw    $v0, 4($s0)
/* ACC600 80055460 AE0E0000 */  sw    $t6, ($s0)
/* ACC604 80055464 51E00004 */  beql  $t7, $zero, .L80055478
/* ACC608 80055468 86080160 */   lh    $t0, 0x160($s0)
/* ACC60C 8005546C 100001A9 */  b     .L80055B14
/* ACC610 80055470 AE190000 */   sw    $t9, ($s0)
/* ACC614 80055474 86080160 */  lh    $t0, 0x160($s0)
.L80055478:
/* ACC618 80055478 84490054 */  lh    $t1, 0x54($v0)
/* ACC61C 8005547C 01095021 */  addu  $t2, $t0, $t1
/* ACC620 80055480 100001A4 */  b     .L80055B14
/* ACC624 80055484 A60A0160 */   sh    $t2, 0x160($s0)
.L80055488:
/* ACC628 80055488 3C0141F0 */  li    $at, 0x41F00000 # 0.000000
/* ACC62C 8005548C 44811000 */  mtc1  $at, $f2
/* ACC630 80055490 3C028012 */  lui   $v0, %hi(D_8011D79C)
/* ACC634 80055494 2442D79C */  addiu $v0, %lo(D_8011D79C) # addiu $v0, $v0, -0x2864
/* ACC638 80055498 4602003C */  c.lt.s $f0, $f2
/* ACC63C 8005549C 240B0004 */  li    $t3, 4
/* ACC640 800554A0 C7AC0094 */  lwc1  $f12, 0x94($sp)
/* ACC644 800554A4 3C014396 */  li    $at, 0x43960000 # 0.000000
/* ACC648 800554A8 4502002E */  bc1fl .L80055564
/* ACC64C 800554AC 44818000 */   mtc1  $at, $f16
/* ACC650 800554B0 AE020004 */  sw    $v0, 4($s0)
/* ACC654 800554B4 AE0B0000 */  sw    $t3, ($s0)
/* ACC658 800554B8 87AC007E */  lh    $t4, 0x7e($sp)
/* ACC65C 800554BC 240D0041 */  li    $t5, 65
/* ACC660 800554C0 29810015 */  slti  $at, $t4, 0x15
/* ACC664 800554C4 14200007 */  bnez  $at, .L800554E4
/* ACC668 800554C8 2981012C */   slti  $at, $t4, 0x12c
/* ACC66C 800554CC 10200005 */  beqz  $at, .L800554E4
/* ACC670 800554D0 87A3007C */   lh    $v1, 0x7c($sp)
/* ACC674 800554D4 28610029 */  slti  $at, $v1, 0x29
/* ACC678 800554D8 14200002 */  bnez  $at, .L800554E4
/* ACC67C 800554DC 286100C8 */   slti  $at, $v1, 0xc8
/* ACC680 800554E0 1420000E */  bnez  $at, .L8005551C
.L800554E4:
/* ACC684 800554E4 3C01C1F0 */   li    $at, 0xC1F00000 # 0.000000
/* ACC688 800554E8 44813000 */  mtc1  $at, $f6
/* ACC68C 800554EC 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC690 800554F0 44801000 */  mtc1  $zero, $f2
/* ACC694 800554F4 44814000 */  mtc1  $at, $f8
/* ACC698 800554F8 3C01C248 */  li    $at, 0xC2480000 # 0.000000
/* ACC69C 800554FC 44815000 */  mtc1  $at, $f10
/* ACC6A0 80055500 A04D0000 */  sb    $t5, ($v0)
/* ACC6A4 80055504 E4460014 */  swc1  $f6, 0x14($v0)
/* ACC6A8 80055508 E4420010 */  swc1  $f2, 0x10($v0)
/* ACC6AC 8005550C E4420018 */  swc1  $f2, 0x18($v0)
/* ACC6B0 80055510 E4420020 */  swc1  $f2, 0x20($v0)
/* ACC6B4 80055514 E448001C */  swc1  $f8, 0x1c($v0)
/* ACC6B8 80055518 E44A0024 */  swc1  $f10, 0x24($v0)
.L8005551C:
/* ACC6BC 8005551C 860E0160 */  lh    $t6, 0x160($s0)
/* ACC6C0 80055520 25CFFFFF */  addiu $t7, $t6, -1
/* ACC6C4 80055524 A44F002C */  sh    $t7, 0x2c($v0)
/* ACC6C8 80055528 86180162 */  lh    $t8, 0x162($s0)
/* ACC6CC 8005552C 53000006 */  beql  $t8, $zero, .L80055548
/* ACC6D0 80055530 86090160 */   lh    $t1, 0x160($s0)
/* ACC6D4 80055534 8E190000 */  lw    $t9, ($s0)
/* ACC6D8 80055538 2728FFFE */  addiu $t0, $t9, -2
/* ACC6DC 8005553C 10000175 */  b     .L80055B14
/* ACC6E0 80055540 AE080000 */   sw    $t0, ($s0)
/* ACC6E4 80055544 86090160 */  lh    $t1, 0x160($s0)
.L80055548:
/* ACC6E8 80055548 844A0054 */  lh    $t2, 0x54($v0)
/* ACC6EC 8005554C 844C007C */  lh    $t4, 0x7c($v0)
/* ACC6F0 80055550 012A5821 */  addu  $t3, $t1, $t2
/* ACC6F4 80055554 016C6821 */  addu  $t5, $t3, $t4
/* ACC6F8 80055558 1000016E */  b     .L80055B14
/* ACC6FC 8005555C A60D0160 */   sh    $t5, 0x160($s0)
/* ACC700 80055560 44818000 */  mtc1  $at, $f16
.L80055564:
/* ACC704 80055564 C7B20080 */  lwc1  $f18, 0x80($sp)
/* ACC708 80055568 3C01442F */  li    $at, 0x442F0000 # 0.000000
/* ACC70C 8005556C 4610603C */  c.lt.s $f12, $f16
/* ACC710 80055570 00000000 */  nop
/* ACC714 80055574 45020017 */  bc1fl .L800555D4
/* ACC718 80055578 44812000 */   mtc1  $at, $f4
/* ACC71C 8005557C 4602903C */  c.lt.s $f18, $f2
/* ACC720 80055580 00000000 */  nop
/* ACC724 80055584 45020013 */  bc1fl .L800555D4
/* ACC728 80055588 44812000 */   mtc1  $at, $f4
/* ACC72C 8005558C 860E0160 */  lh    $t6, 0x160($s0)
/* ACC730 80055590 3C028012 */  lui   $v0, %hi(D_8011D83C)
/* ACC734 80055594 2442D83C */  addiu $v0, %lo(D_8011D83C) # addiu $v0, $v0, -0x27c4
/* ACC738 80055598 A44E0004 */  sh    $t6, 4($v0)
/* ACC73C 8005559C 86180162 */  lh    $t8, 0x162($s0)
/* ACC740 800555A0 240F0002 */  li    $t7, 2
/* ACC744 800555A4 AE020004 */  sw    $v0, 4($s0)
/* ACC748 800555A8 13000004 */  beqz  $t8, .L800555BC
/* ACC74C 800555AC AE0F0000 */   sw    $t7, ($s0)
/* ACC750 800555B0 25E8FFFF */  addiu $t0, $t7, -1
/* ACC754 800555B4 10000157 */  b     .L80055B14
/* ACC758 800555B8 AE080000 */   sw    $t0, ($s0)
.L800555BC:
/* ACC75C 800555BC 86090160 */  lh    $t1, 0x160($s0)
/* ACC760 800555C0 844A002C */  lh    $t2, 0x2c($v0)
/* ACC764 800555C4 012A5821 */  addu  $t3, $t1, $t2
/* ACC768 800555C8 10000152 */  b     .L80055B14
/* ACC76C 800555CC A60B0160 */   sh    $t3, 0x160($s0)
/* ACC770 800555D0 44812000 */  mtc1  $at, $f4
.L800555D4:
/* ACC774 800555D4 87A5004A */  lh    $a1, 0x4a($sp)
/* ACC778 800555D8 4604603C */  c.lt.s $f12, $f4
/* ACC77C 800555DC 00000000 */  nop
/* ACC780 800555E0 45020064 */  bc1fl .L80055774
/* ACC784 800555E4 2401000A */   li    $at, 10
/* ACC788 800555E8 04A00003 */  bltz  $a1, .L800555F8
/* ACC78C 800555EC 00051023 */   negu  $v0, $a1
/* ACC790 800555F0 10000001 */  b     .L800555F8
/* ACC794 800555F4 00A01025 */   move  $v0, $a1
.L800555F8:
/* ACC798 800555F8 284136B0 */  slti  $at, $v0, 0x36b0
/* ACC79C 800555FC 5020005D */  beql  $at, $zero, .L80055774
/* ACC7A0 80055600 2401000A */   li    $at, 10
/* ACC7A4 80055604 87A3007E */  lh    $v1, 0x7e($sp)
/* ACC7A8 80055608 28610015 */  slti  $at, $v1, 0x15
/* ACC7AC 8005560C 1420001D */  bnez  $at, .L80055684
/* ACC7B0 80055610 2861012C */   slti  $at, $v1, 0x12c
/* ACC7B4 80055614 1020001B */  beqz  $at, .L80055684
/* ACC7B8 80055618 87A3007C */   lh    $v1, 0x7c($sp)
/* ACC7BC 8005561C 28610029 */  slti  $at, $v1, 0x29
/* ACC7C0 80055620 14200018 */  bnez  $at, .L80055684
/* ACC7C4 80055624 286100C8 */   slti  $at, $v1, 0xc8
/* ACC7C8 80055628 10200016 */  beqz  $at, .L80055684
/* ACC7CC 8005562C C7A60080 */   lwc1  $f6, 0x80($sp)
/* ACC7D0 80055630 4606103C */  c.lt.s $f2, $f6
/* ACC7D4 80055634 00000000 */  nop
/* ACC7D8 80055638 45000012 */  bc1f  .L80055684
/* ACC7DC 8005563C 00000000 */   nop
/* ACC7E0 80055640 860C0160 */  lh    $t4, 0x160($s0)
/* ACC7E4 80055644 3C028012 */  lui   $v0, %hi(D_8011D88C) # $v0, 0x8012
/* ACC7E8 80055648 2442D88C */  addiu $v0, %lo(D_8011D88C) # addiu $v0, $v0, -0x2774
/* ACC7EC 8005564C A44C0004 */  sh    $t4, 4($v0)
/* ACC7F0 80055650 860E0162 */  lh    $t6, 0x162($s0)
/* ACC7F4 80055654 240D0002 */  li    $t5, 2
/* ACC7F8 80055658 AE020004 */  sw    $v0, 4($s0)
/* ACC7FC 8005565C 11C00004 */  beqz  $t6, .L80055670
/* ACC800 80055660 AE0D0000 */   sw    $t5, ($s0)
/* ACC804 80055664 25B8FFFF */  addiu $t8, $t5, -1
/* ACC808 80055668 1000012A */  b     .L80055B14
/* ACC80C 8005566C AE180000 */   sw    $t8, ($s0)
.L80055670:
/* ACC810 80055670 86190160 */  lh    $t9, 0x160($s0)
/* ACC814 80055674 8448002C */  lh    $t0, 0x2c($v0)
/* ACC818 80055678 03284821 */  addu  $t1, $t9, $t0
/* ACC81C 8005567C 10000125 */  b     .L80055B14
/* ACC820 80055680 A6090160 */   sh    $t1, 0x160($s0)
.L80055684:
/* ACC824 80055684 3C018014 */  lui   $at, %hi(D_8013A358)
/* ACC828 80055688 C428A358 */  lwc1  $f8, %lo(D_8013A358)($at)
/* ACC82C 8005568C 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACC830 80055690 44818000 */  mtc1  $at, $f16
/* ACC834 80055694 46086282 */  mul.s $f10, $f12, $f8
/* ACC838 80055698 3C028012 */  lui   $v0, %hi(D_8011D8DC) # $v0, 0x8012
/* ACC83C 8005569C 46106480 */  add.s $f18, $f12, $f16
/* ACC840 800556A0 2442D8DC */  addiu $v0, %lo(D_8011D8DC) # addiu $v0, $v0, -0x2724
/* ACC844 800556A4 E4520024 */  swc1  $f18, 0x24($v0)
/* ACC848 800556A8 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACC84C 800556AC E44A0018 */   swc1  $f10, 0x18($v0)
/* ACC850 800556B0 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACC854 800556B4 44812000 */  mtc1  $at, $f4
/* ACC858 800556B8 87AA0086 */  lh    $t2, 0x86($sp)
/* ACC85C 800556BC 87AB008E */  lh    $t3, 0x8e($sp)
/* ACC860 800556C0 46040182 */  mul.s $f6, $f0, $f4
/* ACC864 800556C4 3C028012 */  lui   $v0, %hi(D_8011D8DC) # $v0, 0x8012
/* ACC868 800556C8 014B6023 */  subu  $t4, $t2, $t3
/* ACC86C 800556CC 000C6C00 */  sll   $t5, $t4, 0x10
/* ACC870 800556D0 2442D8DC */  addiu $v0, %lo(D_8011D8DC) # addiu $v0, $v0, -0x2724
/* ACC874 800556D4 000D7403 */  sra   $t6, $t5, 0x10
/* ACC878 800556D8 19C0000A */  blez  $t6, .L80055704
/* ACC87C 800556DC E446001C */   swc1  $f6, 0x1c($v0)
/* ACC880 800556E0 C4480010 */  lwc1  $f8, 0x10($v0)
/* ACC884 800556E4 C450001C */  lwc1  $f16, 0x1c($v0)
/* ACC888 800556E8 844F0006 */  lh    $t7, 6($v0)
/* ACC88C 800556EC 46004287 */  neg.s $f10, $f8
/* ACC890 800556F0 46008487 */  neg.s $f18, $f16
/* ACC894 800556F4 000FC023 */  negu  $t8, $t7
/* ACC898 800556F8 E44A0010 */  swc1  $f10, 0x10($v0)
/* ACC89C 800556FC E452001C */  swc1  $f18, 0x1c($v0)
/* ACC8A0 80055700 A4580006 */  sh    $t8, 6($v0)
.L80055704:
/* ACC8A4 80055704 86190160 */  lh    $t9, 0x160($s0)
/* ACC8A8 80055708 3C018014 */  lui   $at, %hi(D_8013A35C)
/* ACC8AC 8005570C C7A40094 */  lwc1  $f4, 0x94($sp)
/* ACC8B0 80055710 A4590004 */  sh    $t9, 4($v0)
/* ACC8B4 80055714 C426A35C */  lwc1  $f6, %lo(D_8013A35C)($at)
/* ACC8B8 80055718 240D0003 */  li    $t5, 3
/* ACC8BC 8005571C 25B8FFFE */  addiu $t8, $t5, -2
/* ACC8C0 80055720 46062202 */  mul.s $f8, $f4, $f6
/* ACC8C4 80055724 4600428D */  trunc.w.s $f10, $f8
/* ACC8C8 80055728 440B5000 */  mfc1  $t3, $f10
/* ACC8CC 8005572C 00000000 */  nop
/* ACC8D0 80055730 256C0008 */  addiu $t4, $t3, 8
/* ACC8D4 80055734 A44C002C */  sh    $t4, 0x2c($v0)
/* ACC8D8 80055738 860E0162 */  lh    $t6, 0x162($s0)
/* ACC8DC 8005573C AE020004 */  sw    $v0, 4($s0)
/* ACC8E0 80055740 AE0D0000 */  sw    $t5, ($s0)
/* ACC8E4 80055744 51C00004 */  beql  $t6, $zero, .L80055758
/* ACC8E8 80055748 86190160 */   lh    $t9, 0x160($s0)
/* ACC8EC 8005574C 100000F1 */  b     .L80055B14
/* ACC8F0 80055750 AE180000 */   sw    $t8, ($s0)
/* ACC8F4 80055754 86190160 */  lh    $t9, 0x160($s0)
.L80055758:
/* ACC8F8 80055758 8448002C */  lh    $t0, 0x2c($v0)
/* ACC8FC 8005575C 844A0054 */  lh    $t2, 0x54($v0)
/* ACC900 80055760 03284821 */  addu  $t1, $t9, $t0
/* ACC904 80055764 012A5821 */  addu  $t3, $t1, $t2
/* ACC908 80055768 100000EA */  b     .L80055B14
/* ACC90C 8005576C A60B0160 */   sh    $t3, 0x160($s0)
/* ACC910 80055770 2401000A */  li    $at, 10
.L80055774:
/* ACC914 80055774 14610090 */  bne   $v1, $at, .L800559B8
/* ACC918 80055778 C7A00088 */   lwc1  $f0, 0x88($sp)
/* ACC91C 8005577C 860C0160 */  lh    $t4, 0x160($s0)
/* ACC920 80055780 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACC924 80055784 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACC928 80055788 258DFFFB */  addiu $t5, $t4, -5
/* ACC92C 8005578C A4ED0004 */  sh    $t5, 4($a3)
/* ACC930 80055790 A7A0004A */  sh    $zero, 0x4a($sp)
/* ACC934 80055794 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACC938 80055798 8E04008C */  lw    $a0, 0x8c($s0)
/* ACC93C 8005579C 0C03034D */  jal   func_800C0D34
/* ACC940 800557A0 27A6004A */   addiu $a2, $sp, 0x4a
/* ACC944 800557A4 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACC948 800557A8 14400014 */  bnez  $v0, .L800557FC
/* ACC94C 800557AC 24E7D954 */   addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACC950 800557B0 3C048014 */  lui   $a0, %hi(D_801396D4)
/* ACC954 800557B4 0C00084C */  jal   osSyncPrintf
/* ACC958 800557B8 248496D4 */   addiu $a0, %lo(D_801396D4) # addiu $a0, $a0, -0x692c
/* ACC95C 800557BC 8E0E00A8 */  lw    $t6, 0xa8($s0)
/* ACC960 800557C0 87AF008E */  lh    $t7, 0x8e($sp)
/* ACC964 800557C4 3C078012 */  lui   $a3, %hi(D_8011D954)
/* ACC968 800557C8 85C400B6 */  lh    $a0, 0xb6($t6)
/* ACC96C 800557CC 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACC970 800557D0 01E41823 */  subu  $v1, $t7, $a0
/* ACC974 800557D4 04600003 */  bltz  $v1, .L800557E4
/* ACC978 800557D8 00031023 */   negu  $v0, $v1
/* ACC97C 800557DC 10000001 */  b     .L800557E4
/* ACC980 800557E0 00601025 */   move  $v0, $v1
.L800557E4:
/* ACC984 800557E4 28414000 */  slti  $at, $v0, 0x4000
/* ACC988 800557E8 14200003 */  bnez  $at, .L800557F8
/* ACC98C 800557EC 24988001 */   addiu $t8, $a0, -0x7fff
/* ACC990 800557F0 10000002 */  b     .L800557FC
/* ACC994 800557F4 A7A4004A */   sh    $a0, 0x4a($sp)
.L800557F8:
/* ACC998 800557F8 A7B8004A */  sh    $t8, 0x4a($sp)
.L800557FC:
/* ACC99C 800557FC 8E0800A8 */  lw    $t0, 0xa8($s0)
/* ACC9A0 80055800 87B9004A */  lh    $t9, 0x4a($sp)
/* ACC9A4 80055804 87A5004A */  lh    $a1, 0x4a($sp)
/* ACC9A8 80055808 850900B6 */  lh    $t1, 0xb6($t0)
/* ACC9AC 8005580C 3C014334 */  li    $at, 0x43340000 # 0.000000
/* ACC9B0 80055810 57290005 */  bnel  $t9, $t1, .L80055828
/* ACC9B4 80055814 44800000 */   mtc1  $zero, $f0
/* ACC9B8 80055818 44810000 */  mtc1  $at, $f0
/* ACC9BC 8005581C 10000004 */  b     .L80055830
/* ACC9C0 80055820 87AA008E */   lh    $t2, 0x8e($sp)
/* ACC9C4 80055824 44800000 */  mtc1  $zero, $f0
.L80055828:
/* ACC9C8 80055828 00000000 */  nop
/* ACC9CC 8005582C 87AA008E */  lh    $t2, 0x8e($sp)
.L80055830:
/* ACC9D0 80055830 E4E0003C */  swc1  $f0, 0x3c($a3)
/* ACC9D4 80055834 E4E00020 */  swc1  $f0, 0x20($a3)
/* ACC9D8 80055838 01455823 */  subu  $t3, $t2, $a1
/* ACC9DC 8005583C 000B6400 */  sll   $t4, $t3, 0x10
/* ACC9E0 80055840 000C6C03 */  sra   $t5, $t4, 0x10
/* ACC9E4 80055844 05A10005 */  bgez  $t5, .L8005585C
/* ACC9E8 80055848 E4E00014 */   swc1  $f0, 0x14($a3)
/* ACC9EC 8005584C 3C0141A0 */  li    $at, 0x41A00000 # 0.000000
/* ACC9F0 80055850 44816000 */  mtc1  $at, $f12
/* ACC9F4 80055854 10000004 */  b     .L80055868
/* ACC9F8 80055858 00000000 */   nop
.L8005585C:
/* ACC9FC 8005585C 3C01C1A0 */  li    $at, 0xC1A00000 # 0.000000
/* ACCA00 80055860 44816000 */  mtc1  $at, $f12
/* ACCA04 80055864 00000000 */  nop
.L80055868:
/* ACCA08 80055868 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACCA0C 8005586C E7AC0030 */   swc1  $f12, 0x30($sp)
/* ACCA10 80055870 C7AC0030 */  lwc1  $f12, 0x30($sp)
/* ACCA14 80055874 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACCA18 80055878 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACCA1C 8005587C 460C0082 */  mul.s $f2, $f0, $f12
/* ACCA20 80055880 C4F00020 */  lwc1  $f16, 0x20($a3)
/* ACCA24 80055884 46028480 */  add.s $f18, $f16, $f2
/* ACCA28 80055888 E7A20090 */  swc1  $f2, 0x90($sp)
/* ACCA2C 8005588C 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACCA30 80055890 E4F20020 */   swc1  $f18, 0x20($a3)
/* ACCA34 80055894 3C018014 */  lui   $at, %hi(D_8013A360)
/* ACCA38 80055898 C426A360 */  lwc1  $f6, %lo(D_8013A360)($at)
/* ACCA3C 8005589C C7A40090 */  lwc1  $f4, 0x90($sp)
/* ACCA40 800558A0 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACCA44 800558A4 24E7D954 */  addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACCA48 800558A8 46062202 */  mul.s $f8, $f4, $f6
/* ACCA4C 800558AC 27A40050 */  addiu $a0, $sp, 0x50
/* ACCA50 800558B0 46080282 */  mul.s $f10, $f0, $f8
/* ACCA54 800558B4 4600540D */  trunc.w.s $f16, $f10
/* ACCA58 800558B8 44028000 */  mfc1  $v0, $f16
/* ACCA5C 800558BC 00000000 */  nop
/* ACCA60 800558C0 A4E2002E */  sh    $v0, 0x2e($a3)
/* ACCA64 800558C4 A4E20006 */  sh    $v0, 6($a3)
/* ACCA68 800558C8 0C00BBB9 */  jal   func_8002EEE4
/* ACCA6C 800558CC 8E0500A8 */   lw    $a1, 0xa8($s0)
/* ACCA70 800558D0 87A5004A */  lh    $a1, 0x4a($sp)
/* ACCA74 800558D4 24A48001 */  addiu $a0, $a1, -0x7fff
/* ACCA78 800558D8 00042400 */  sll   $a0, $a0, 0x10
/* ACCA7C 800558DC 0C01DE1C */  jal   Math_Sins
/* ACCA80 800558E0 00042403 */   sra   $a0, $a0, 0x10
/* ACCA84 800558E4 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACCA88 800558E8 44812000 */  mtc1  $at, $f4
/* ACCA8C 800558EC C7B20050 */  lwc1  $f18, 0x50($sp)
/* ACCA90 800558F0 87A5004A */  lh    $a1, 0x4a($sp)
/* ACCA94 800558F4 46002182 */  mul.s $f6, $f4, $f0
/* ACCA98 800558F8 24A48001 */  addiu $a0, $a1, -0x7fff
/* ACCA9C 800558FC 00042400 */  sll   $a0, $a0, 0x10
/* ACCAA0 80055900 00042403 */  sra   $a0, $a0, 0x10
/* ACCAA4 80055904 46069200 */  add.s $f8, $f18, $f6
/* ACCAA8 80055908 0C01DE0D */  jal   Math_Coss
/* ACCAAC 8005590C E7A80050 */   swc1  $f8, 0x50($sp)
/* ACCAB0 80055910 3C014248 */  li    $at, 0x42480000 # 0.000000
/* ACCAB4 80055914 44818000 */  mtc1  $at, $f16
/* ACCAB8 80055918 C7AA0058 */  lwc1  $f10, 0x58($sp)
/* ACCABC 8005591C 02002025 */  move  $a0, $s0
/* ACCAC0 80055920 46008102 */  mul.s $f4, $f16, $f0
/* ACCAC4 80055924 27A50064 */  addiu $a1, $sp, 0x64
/* ACCAC8 80055928 27A60050 */  addiu $a2, $sp, 0x50
/* ACCACC 8005592C 46045480 */  add.s $f18, $f10, $f4
/* ACCAD0 80055930 0C010FCD */  jal   func_80043F34
/* ACCAD4 80055934 E7B20058 */   swc1  $f18, 0x58($sp)
/* ACCAD8 80055938 3C078012 */  lui   $a3, %hi(D_8011D954) # $a3, 0x8012
/* ACCADC 8005593C 10400006 */  beqz  $v0, .L80055958
/* ACCAE0 80055940 24E7D954 */   addiu $a3, %lo(D_8011D954) # addiu $a3, $a3, -0x26ac
/* ACCAE4 80055944 240F00C1 */  li    $t7, 193
/* ACCAE8 80055948 2418008F */  li    $t8, 143
/* ACCAEC 8005594C A0EF0028 */  sb    $t7, 0x28($a3)
/* ACCAF0 80055950 1000000A */  b     .L8005597C
/* ACCAF4 80055954 A0F80050 */   sb    $t8, 0x50($a3)
.L80055958:
/* ACCAF8 80055958 3C018014 */  lui   $at, %hi(D_8013A364)
/* ACCAFC 8005595C C428A364 */  lwc1  $f8, %lo(D_8013A364)($at)
/* ACCB00 80055960 C7A60094 */  lwc1  $f6, 0x94($sp)
/* ACCB04 80055964 46083402 */  mul.s $f16, $f6, $f8
/* ACCB08 80055968 4600828D */  trunc.w.s $f10, $f16
/* ACCB0C 8005596C 440A5000 */  mfc1  $t2, $f10
/* ACCB10 80055970 00000000 */  nop
/* ACCB14 80055974 254B0006 */  addiu $t3, $t2, 6
/* ACCB18 80055978 A4EB0054 */  sh    $t3, 0x54($a3)
.L8005597C:
/* ACCB1C 8005597C 860D0162 */  lh    $t5, 0x162($s0)
/* ACCB20 80055980 240C0004 */  li    $t4, 4
/* ACCB24 80055984 AE070004 */  sw    $a3, 4($s0)
/* ACCB28 80055988 11A00004 */  beqz  $t5, .L8005599C
/* ACCB2C 8005598C AE0C0000 */   sw    $t4, ($s0)
/* ACCB30 80055990 258FFFFE */  addiu $t7, $t4, -2
/* ACCB34 80055994 1000005F */  b     .L80055B14
/* ACCB38 80055998 AE0F0000 */   sw    $t7, ($s0)
.L8005599C:
/* ACCB3C 8005599C 86180160 */  lh    $t8, 0x160($s0)
/* ACCB40 800559A0 84E80054 */  lh    $t0, 0x54($a3)
/* ACCB44 800559A4 84E9007C */  lh    $t1, 0x7c($a3)
/* ACCB48 800559A8 0308C821 */  addu  $t9, $t8, $t0
/* ACCB4C 800559AC 03295021 */  addu  $t2, $t9, $t1
/* ACCB50 800559B0 10000058 */  b     .L80055B14
/* ACCB54 800559B4 A60A0160 */   sh    $t2, 0x160($s0)
.L800559B8:
/* ACCB58 800559B8 3C014348 */  li    $at, 0x43480000 # 0.000000
/* ACCB5C 800559BC 44812000 */  mtc1  $at, $f4
/* ACCB60 800559C0 3C013E80 */  lui   $at, 0x3e80
/* ACCB64 800559C4 4604003C */  c.lt.s $f0, $f4
/* ACCB68 800559C8 00000000 */  nop
/* ACCB6C 800559CC 45020008 */  bc1fl .L800559F0
/* ACCB70 800559D0 3C0143C8 */   li    $at, 0x43C80000 # 0.000000
/* ACCB74 800559D4 44819000 */  mtc1  $at, $f18
/* ACCB78 800559D8 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCB7C 800559DC 2463D9F4 */  addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCB80 800559E0 46120182 */  mul.s $f6, $f0, $f18
/* ACCB84 800559E4 E4600024 */  swc1  $f0, 0x24($v1)
/* ACCB88 800559E8 E4660018 */  swc1  $f6, 0x18($v1)
/* ACCB8C 800559EC 3C0143C8 */  li    $at, 0x43C80000 # 0.000000
.L800559F0:
/* ACCB90 800559F0 44814000 */  mtc1  $at, $f8
/* ACCB94 800559F4 00000000 */  nop
/* ACCB98 800559F8 4608003C */  c.lt.s $f0, $f8
/* ACCB9C 800559FC 00000000 */  nop
/* ACCBA0 80055A00 45000009 */  bc1f  .L80055A28
/* ACCBA4 80055A04 00000000 */   nop
/* ACCBA8 80055A08 0C03F66B */  jal   Math_Rand_ZeroOne
/* ACCBAC 80055A0C 00000000 */   nop
/* ACCBB0 80055A10 3C0141C8 */  li    $at, 0x41C80000 # 0.000000
/* ACCBB4 80055A14 44818000 */  mtc1  $at, $f16
/* ACCBB8 80055A18 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCBBC 80055A1C 2463D9F4 */  addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCBC0 80055A20 46100282 */  mul.s $f10, $f0, $f16
/* ACCBC4 80055A24 E46A001C */  swc1  $f10, 0x1c($v1)
.L80055A28:
/* ACCBC8 80055A28 0C00B721 */  jal   Player_GetCameraYOffset
/* ACCBCC 80055A2C 8E040090 */   lw    $a0, 0x90($s0)
/* ACCBD0 80055A30 860B0160 */  lh    $t3, 0x160($s0)
/* ACCBD4 80055A34 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCBD8 80055A38 2463D9F4 */  addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCBDC 80055A3C A46B0004 */  sh    $t3, 4($v1)
/* ACCBE0 80055A40 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACCBE4 80055A44 0C00BBB9 */  jal   func_8002EEE4
/* ACCBE8 80055A48 27A40050 */   addiu $a0, $sp, 0x50
/* ACCBEC 80055A4C 02002025 */  move  $a0, $s0
/* ACCBF0 80055A50 27A50064 */  addiu $a1, $sp, 0x64
/* ACCBF4 80055A54 0C010FCD */  jal   func_80043F34
/* ACCBF8 80055A58 27A60050 */   addiu $a2, $sp, 0x50
/* ACCBFC 80055A5C 3C038012 */  lui   $v1, %hi(D_8011D9F4) # $v1, 0x8012
/* ACCC00 80055A60 10400006 */  beqz  $v0, .L80055A7C
/* ACCC04 80055A64 2463D9F4 */   addiu $v1, %lo(D_8011D9F4) # addiu $v1, $v1, -0x260c
/* ACCC08 80055A68 240C0004 */  li    $t4, 4
/* ACCC0C 80055A6C 240D008F */  li    $t5, 143
/* ACCC10 80055A70 A46C002C */  sh    $t4, 0x2c($v1)
/* ACCC14 80055A74 1000000A */  b     .L80055AA0
/* ACCC18 80055A78 A06D0028 */   sb    $t5, 0x28($v1)
.L80055A7C:
/* ACCC1C 80055A7C 3C018014 */  lui   $at, %hi(D_8013A368)
/* ACCC20 80055A80 C432A368 */  lwc1  $f18, %lo(D_8013A368)($at)
/* ACCC24 80055A84 C7A40094 */  lwc1  $f4, 0x94($sp)
/* ACCC28 80055A88 46122182 */  mul.s $f6, $f4, $f18
/* ACCC2C 80055A8C 4600320D */  trunc.w.s $f8, $f6
/* ACCC30 80055A90 44084000 */  mfc1  $t0, $f8
/* ACCC34 80055A94 00000000 */  nop
/* ACCC38 80055A98 25190008 */  addiu $t9, $t0, 8
/* ACCC3C 80055A9C A479002C */  sh    $t9, 0x2c($v1)
.L80055AA0:
/* ACCC40 80055AA0 860A0162 */  lh    $t2, 0x162($s0)
/* ACCC44 80055AA4 24090003 */  li    $t1, 3
/* ACCC48 80055AA8 AE030004 */  sw    $v1, 4($s0)
/* ACCC4C 80055AAC 11400010 */  beqz  $t2, .L80055AF0
/* ACCC50 80055AB0 AE090000 */   sw    $t1, ($s0)
/* ACCC54 80055AB4 8E0B008C */  lw    $t3, 0x8c($s0)
/* ACCC58 80055AB8 8D6C009C */  lw    $t4, 0x9c($t3)
/* ACCC5C 80055ABC 318D0001 */  andi  $t5, $t4, 1
/* ACCC60 80055AC0 51A00008 */  beql  $t5, $zero, .L80055AE4
/* ACCC64 80055AC4 8E190000 */   lw    $t9, ($s0)
/* ACCC68 80055AC8 846E0006 */  lh    $t6, 6($v1)
/* ACCC6C 80055ACC 8478002E */  lh    $t8, 0x2e($v1)
/* ACCC70 80055AD0 000E7823 */  negu  $t7, $t6
/* ACCC74 80055AD4 00184023 */  negu  $t0, $t8
/* ACCC78 80055AD8 A46F0006 */  sh    $t7, 6($v1)
/* ACCC7C 80055ADC A468002E */  sh    $t0, 0x2e($v1)
/* ACCC80 80055AE0 8E190000 */  lw    $t9, ($s0)
.L80055AE4:
/* ACCC84 80055AE4 2729FFFE */  addiu $t1, $t9, -2
/* ACCC88 80055AE8 1000000A */  b     .L80055B14
/* ACCC8C 80055AEC AE090000 */   sw    $t1, ($s0)
.L80055AF0:
/* ACCC90 80055AF0 860A0160 */  lh    $t2, 0x160($s0)
/* ACCC94 80055AF4 846B002C */  lh    $t3, 0x2c($v1)
/* ACCC98 80055AF8 846D0054 */  lh    $t5, 0x54($v1)
/* ACCC9C 80055AFC 014B6021 */  addu  $t4, $t2, $t3
/* ACCCA0 80055B00 018D7021 */  addu  $t6, $t4, $t5
/* ACCCA4 80055B04 A60E0160 */  sh    $t6, 0x160($s0)
/* ACCCA8 80055B08 A460002E */  sh    $zero, 0x2e($v1)
/* ACCCAC 80055B0C 846F002E */  lh    $t7, 0x2e($v1)
/* ACCCB0 80055B10 A46F0006 */  sh    $t7, 6($v1)
.L80055B14:
/* ACCCB4 80055B14 8E18008C */  lw    $t8, 0x8c($s0)
/* ACCCB8 80055B18 3C088012 */  lui   $t0, %hi(D_8011D6A8) # $t0, 0x8012
/* ACCCBC 80055B1C 8D08D6A8 */  lw    $t0, %lo(D_8011D6A8)($t0)
/* ACCCC0 80055B20 8F02009C */  lw    $v0, 0x9c($t8)
/* ACCCC4 80055B24 01021823 */  subu  $v1, $t0, $v0
/* ACCCC8 80055B28 28610033 */  slti  $at, $v1, 0x33
/* ACCCCC 80055B2C 10200003 */  beqz  $at, .L80055B3C
/* ACCCD0 80055B30 2861FFCE */   slti  $at, $v1, -0x32
/* ACCCD4 80055B34 10200005 */  beqz  $at, .L80055B4C
/* ACCCD8 80055B38 00000000 */   nop
.L80055B3C:
/* ACCCDC 80055B3C 0C01E221 */  jal   func_80078884
/* ACCCE0 80055B40 9604012A */   lhu   $a0, 0x12a($s0)
/* ACCCE4 80055B44 8E19008C */  lw    $t9, 0x8c($s0)
/* ACCCE8 80055B48 8F22009C */  lw    $v0, 0x9c($t9)
.L80055B4C:
/* ACCCEC 80055B4C 3C018012 */  lui   $at, %hi(D_8011D6A8) # $at, 0x8012
/* ACCCF0 80055B50 AC22D6A8 */  sw    $v0, %lo(D_8011D6A8)($at)
/* ACCCF4 80055B54 8E090090 */  lw    $t1, 0x90($s0)
/* ACCCF8 80055B58 87B80072 */  lh    $t8, 0x72($sp)
/* ACCCFC 80055B5C 87A8008E */  lh    $t0, 0x8e($sp)
/* ACCD00 80055B60 8D2A067C */  lw    $t2, 0x67c($t1)
/* ACCD04 80055B64 8FA2004C */  lw    $v0, 0x4c($sp)
/* ACCD08 80055B68 0308C823 */  subu  $t9, $t8, $t0
/* ACCD0C 80055B6C 000A5900 */  sll   $t3, $t2, 4
/* ACCD10 80055B70 0563000D */  bgezl $t3, .L80055BA8
/* ACCD14 80055B74 A7B9004A */   sh    $t9, 0x4a($sp)
/* ACCD18 80055B78 804C014F */  lb    $t4, 0x14f($v0)
/* ACCD1C 80055B7C 24010001 */  li    $at, 1
/* ACCD20 80055B80 51810009 */  beql  $t4, $at, .L80055BA8
/* ACCD24 80055B84 A7B9004A */   sh    $t9, 0x4a($sp)
/* ACCD28 80055B88 8C4D067C */  lw    $t5, 0x67c($v0)
/* ACCD2C 80055B8C 3C012000 */  lui   $at, 0x2000
/* ACCD30 80055B90 01A17025 */  or    $t6, $t5, $at
/* ACCD34 80055B94 AC4E067C */  sw    $t6, 0x67c($v0)
/* ACCD38 80055B98 860F0160 */  lh    $t7, 0x160($s0)
/* ACCD3C 80055B9C 10000026 */  b     .L80055C38
/* ACCD40 80055BA0 A44F0110 */   sh    $t7, 0x110($v0)
/* ACCD44 80055BA4 A7B9004A */  sh    $t9, 0x4a($sp)
.L80055BA8:
/* ACCD48 80055BA8 8E0500A8 */  lw    $a1, 0xa8($s0)
/* ACCD4C 80055BAC 24010002 */  li    $at, 2
/* ACCD50 80055BB0 8FA2004C */  lw    $v0, 0x4c($sp)
/* ACCD54 80055BB4 90A90002 */  lbu   $t1, 2($a1)
/* ACCD58 80055BB8 3C0B8012 */  lui   $t3, %hi(D_8011D3F4) # $t3, 0x8012
/* ACCD5C 80055BBC 24060001 */  li    $a2, 1
/* ACCD60 80055BC0 1521001B */  bne   $t1, $at, .L80055C30
/* ACCD64 80055BC4 00000000 */   nop
/* ACCD68 80055BC8 8E04008C */  lw    $a0, 0x8c($s0)
/* ACCD6C 80055BCC 8C4C067C */  lw    $t4, 0x67c($v0)
/* ACCD70 80055BD0 8D6BD3F4 */  lw    $t3, %lo(D_8011D3F4)($t3)
/* ACCD74 80055BD4 8C8A009C */  lw    $t2, 0x9c($a0)
/* ACCD78 80055BD8 318D0800 */  andi  $t5, $t4, 0x800
/* ACCD7C 80055BDC 11A00005 */  beqz  $t5, .L80055BF4
/* ACCD80 80055BE0 014B1823 */   subu  $v1, $t2, $t3
/* ACCD84 80055BE4 0C00B7D5 */  jal   func_8002DF54
/* ACCD88 80055BE8 24060008 */   li    $a2, 8
/* ACCD8C 80055BEC 10000013 */  b     .L80055C3C
/* ACCD90 80055BF0 8E0E008C */   lw    $t6, 0x8c($s0)
.L80055BF4:
/* ACCD94 80055BF4 04600003 */  bltz  $v1, .L80055C04
/* ACCD98 80055BF8 00031023 */   negu  $v0, $v1
/* ACCD9C 80055BFC 10000001 */  b     .L80055C04
/* ACCDA0 80055C00 00601025 */   move  $v0, $v1
.L80055C04:
/* ACCDA4 80055C04 28410BB9 */  slti  $at, $v0, 0xbb9
/* ACCDA8 80055C08 14200005 */  bnez  $at, .L80055C20
/* ACCDAC 80055C0C 00000000 */   nop
/* ACCDB0 80055C10 0C00B7D5 */  jal   func_8002DF54
/* ACCDB4 80055C14 2406000C */   li    $a2, 12
/* ACCDB8 80055C18 10000008 */  b     .L80055C3C
/* ACCDBC 80055C1C 8E0E008C */   lw    $t6, 0x8c($s0)
.L80055C20:
/* ACCDC0 80055C20 0C00B7D5 */  jal   func_8002DF54
/* ACCDC4 80055C24 24060045 */   li    $a2, 69
/* ACCDC8 80055C28 10000004 */  b     .L80055C3C
/* ACCDCC 80055C2C 8E0E008C */   lw    $t6, 0x8c($s0)
.L80055C30:
/* ACCDD0 80055C30 0C00B7D5 */  jal   func_8002DF54
/* ACCDD4 80055C34 8E04008C */   lw    $a0, 0x8c($s0)
.L80055C38:
/* ACCDD8 80055C38 8E0E008C */  lw    $t6, 0x8c($s0)
.L80055C3C:
/* ACCDDC 80055C3C 3C018012 */  lui   $at, %hi(D_8011D3F4) # $at, 0x8012
/* ACCDE0 80055C40 02002025 */  move  $a0, $s0
/* ACCDE4 80055C44 8DCF009C */  lw    $t7, 0x9c($t6)
/* ACCDE8 80055C48 2405003C */  li    $a1, 60
/* ACCDEC 80055C4C 24060005 */  li    $a2, 5
/* ACCDF0 80055C50 0C016952 */  jal   Camera_ChangeSetting
/* ACCDF4 80055C54 AC2FD3F4 */   sw    $t7, %lo(D_8011D3F4)($at)
/* ACCDF8 80055C58 0C014B83 */  jal   Camera_Unique9
/* ACCDFC 80055C5C 02002025 */   move  $a0, $s0
/* ACCE00 80055C60 24020001 */  li    $v0, 1
.L80055C64:
/* ACCE04 80055C64 8FBF001C */  lw    $ra, 0x1c($sp)
/* ACCE08 80055C68 8FB00018 */  lw    $s0, 0x18($sp)
/* ACCE0C 80055C6C 27BD0098 */  addiu $sp, $sp, 0x98
/* ACCE10 80055C70 03E00008 */  jr    $ra
/* ACCE14 80055C74 00000000 */   nop
