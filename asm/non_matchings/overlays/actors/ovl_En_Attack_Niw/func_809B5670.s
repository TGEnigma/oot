glabel func_809B5670
/* 00570 809B5670 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00574 809B5674 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00578 809B5678 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0057C 809B567C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00580 809B5680 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00584 809B5684 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00588 809B5688 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 0058C 809B568C C4A000EC */  lwc1    $f0, 0x00EC($a1)           ## 000000EC
/* 00590 809B5690 C4860298 */  lwc1    $f6, 0x0298($a0)           ## 00000298
/* 00594 809B5694 C4B200F0 */  lwc1    $f18, 0x00F0($a1)          ## 000000F0
/* 00598 809B5698 C490029C */  lwc1    $f16, 0x029C($a0)          ## 0000029C
/* 0059C 809B569C 46003200 */  add.s   $f8, $f6, $f0              
/* 005A0 809B56A0 C4AA00E0 */  lwc1    $f10, 0x00E0($a1)          ## 000000E0
/* 005A4 809B56A4 C4A600E4 */  lwc1    $f6, 0x00E4($a1)           ## 000000E4
/* 005A8 809B56A8 46128100 */  add.s   $f4, $f16, $f18            
/* 005AC 809B56AC C4B200E8 */  lwc1    $f18, 0x00E8($a1)          ## 000000E8
/* 005B0 809B56B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005B4 809B56B4 460A4081 */  sub.s   $f2, $f8, $f10             
/* 005B8 809B56B8 C4AA00F4 */  lwc1    $f10, 0x00F4($a1)          ## 000000F4
/* 005BC 809B56BC C48802A0 */  lwc1    $f8, 0x02A0($a0)           ## 000002A0
/* 005C0 809B56C0 46062301 */  sub.s   $f12, $f4, $f6             
/* 005C4 809B56C4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 005C8 809B56C8 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 005CC 809B56CC 46020100 */  add.s   $f4, $f0, $f2              
/* 005D0 809B56D0 460A4400 */  add.s   $f16, $f8, $f10            
/* 005D4 809B56D4 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 005D8 809B56D8 C4A600F0 */  lwc1    $f6, 0x00F0($a1)           ## 000000F0
/* 005DC 809B56DC 46128381 */  sub.s   $f14, $f16, $f18           
/* 005E0 809B56E0 460C3200 */  add.s   $f8, $f6, $f12             
/* 005E4 809B56E4 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 005E8 809B56E8 C4AA00F4 */  lwc1    $f10, 0x00F4($a1)          ## 000000F4
/* 005EC 809B56EC AFA4002C */  sw      $a0, 0x002C($sp)           
/* 005F0 809B56F0 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFE4
/* 005F4 809B56F4 460E5400 */  add.s   $f16, $f10, $f14           
/* 005F8 809B56F8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 005FC 809B56FC E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 00600 809B5700 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00604 809B5704 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00608 809B5708 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFE4
/* 0060C 809B570C 46809120 */  cvt.s.w $f4, $f18                  
/* 00610 809B5710 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 00614 809B5714 E60402D4 */  swc1    $f4, 0x02D4($s0)           ## 000002D4
/* 00618 809B5718 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 0061C 809B571C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00620 809B5720 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00624 809B5724 46803220 */  cvt.s.w $f8, $f6                   
/* 00628 809B5728 C60602DC */  lwc1    $f6, 0x02DC($s0)           ## 000002DC
/* 0062C 809B572C C61202D4 */  lwc1    $f18, 0x02D4($s0)          ## 000002D4
/* 00630 809B5730 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00634 809B5734 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00638 809B5738 4600910D */  trunc.w.s $f4, $f18                  
/* 0063C 809B573C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00640 809B5740 44052000 */  mfc1    $a1, $f4                   
/* 00644 809B5744 4600320D */  trunc.w.s $f8, $f6                   
/* 00648 809B5748 E61002D0 */  swc1    $f16, 0x02D0($s0)          ## 000002D0
/* 0064C 809B574C 00052C00 */  sll     $a1, $a1, 16               
/* 00650 809B5750 00052C03 */  sra     $a1, $a1, 16               
/* 00654 809B5754 44074000 */  mfc1    $a3, $f8                   
/* 00658 809B5758 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0065C 809B575C 00073C00 */  sll     $a3, $a3, 16               
/* 00660 809B5760 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00664 809B5764 00073C03 */  sra     $a3, $a3, 16               
/* 00668 809B5768 C60A02D0 */  lwc1    $f10, 0x02D0($s0)          ## 000002D0
/* 0066C 809B576C C61202DC */  lwc1    $f18, 0x02DC($s0)          ## 000002DC
/* 00670 809B5770 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00674 809B5774 4600540D */  trunc.w.s $f16, $f10                 
/* 00678 809B5778 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 0067C 809B577C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00680 809B5780 4600910D */  trunc.w.s $f4, $f18                  
/* 00684 809B5784 44058000 */  mfc1    $a1, $f16                  
/* 00688 809B5788 44072000 */  mfc1    $a3, $f4                   
/* 0068C 809B578C 00052C00 */  sll     $a1, $a1, 16               
/* 00690 809B5790 00052C03 */  sra     $a1, $a1, 16               
/* 00694 809B5794 00073C00 */  sll     $a3, $a3, 16               
/* 00698 809B5798 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0069C 809B579C 00073C03 */  sra     $a3, $a3, 16               
/* 006A0 809B57A0 3C05459C */  lui     $a1, 0x459C                ## $a1 = 459C0000
/* 006A4 809B57A4 34A54000 */  ori     $a1, $a1, 0x4000           ## $a1 = 459C4000
/* 006A8 809B57A8 260402DC */  addiu   $a0, $s0, 0x02DC           ## $a0 = 000002DC
/* 006AC 809B57AC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 006B0 809B57B0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 006B4 809B57B4 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 006B8 809B57B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006BC 809B57BC 0C00B56E */  jal     Actor_SetHeight
              
/* 006C0 809B57C0 8E0502E4 */  lw      $a1, 0x02E4($s0)           ## 000002E4
/* 006C4 809B57C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006C8 809B57C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006CC 809B57CC 27A6004E */  addiu   $a2, $sp, 0x004E           ## $a2 = FFFFFFFE
/* 006D0 809B57D0 0C00BCDD */  jal     func_8002F374              
/* 006D4 809B57D4 27A7004C */  addiu   $a3, $sp, 0x004C           ## $a3 = FFFFFFFC
/* 006D8 809B57D8 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 006DC 809B57DC 30480008 */  andi    $t0, $v0, 0x0008           ## $t0 = 00000000
/* 006E0 809B57E0 51000023 */  beql    $t0, $zero, .L809B5870     
/* 006E4 809B57E4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 006E8 809B57E8 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
/* 006EC 809B57EC 860A0030 */  lh      $t2, 0x0030($s0)           ## 00000030
/* 006F0 809B57F0 3C01809B */  lui     $at, %hi(D_809B61D8)       ## $at = 809B0000
/* 006F4 809B57F4 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 006F8 809B57F8 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 006FC 809B57FC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00700 809B5800 46803220 */  cvt.s.w $f8, $f6                   
/* 00704 809B5804 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 00708 809B5808 3C0C809B */  lui     $t4, %hi(func_809B59B0)    ## $t4 = 809B0000
/* 0070C 809B580C 258C59B0 */  addiu   $t4, $t4, %lo(func_809B59B0) ## $t4 = 809B59B0
/* 00710 809B5810 46805420 */  cvt.s.w $f16, $f10                 
/* 00714 809B5814 E60802D4 */  swc1    $f8, 0x02D4($s0)           ## 000002D4
/* 00718 809B5818 C43261D8 */  lwc1    $f18, %lo(D_809B61D8)($at) 
/* 0071C 809B581C A600025A */  sh      $zero, 0x025A($s0)         ## 0000025A
/* 00720 809B5820 8602025A */  lh      $v0, 0x025A($s0)           ## 0000025A
/* 00724 809B5824 A60B025C */  sh      $t3, 0x025C($s0)           ## 0000025C
/* 00728 809B5828 46128101 */  sub.s   $f4, $f16, $f18            
/* 0072C 809B582C 3C01809B */  lui     $at, %hi(D_809B61DC)       ## $at = 809B0000
/* 00730 809B5830 E60202DC */  swc1    $f2, 0x02DC($s0)           ## 000002DC
/* 00734 809B5834 E6020284 */  swc1    $f2, 0x0284($s0)           ## 00000284
/* 00738 809B5838 E60402D0 */  swc1    $f4, 0x02D0($s0)           ## 000002D0
/* 0073C 809B583C E602027C */  swc1    $f2, 0x027C($s0)           ## 0000027C
/* 00740 809B5840 A6020258 */  sh      $v0, 0x0258($s0)           ## 00000258
/* 00744 809B5844 A6020256 */  sh      $v0, 0x0256($s0)           ## 00000256
/* 00748 809B5848 A6020254 */  sh      $v0, 0x0254($s0)           ## 00000254
/* 0074C 809B584C C42661DC */  lwc1    $f6, %lo(D_809B61DC)($at)  
/* 00750 809B5850 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00754 809B5854 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00758 809B5858 AE0C0250 */  sw      $t4, 0x0250($s0)           ## 00000250
/* 0075C 809B585C E6020288 */  swc1    $f2, 0x0288($s0)           ## 00000288
/* 00760 809B5860 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 00764 809B5864 1000004D */  beq     $zero, $zero, .L809B599C   
/* 00768 809B5868 E60802E0 */  swc1    $f8, 0x02E0($s0)           ## 000002E0
/* 0076C 809B586C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
.L809B5870:
/* 00770 809B5870 C60A00EC */  lwc1    $f10, 0x00EC($s0)          ## 000000EC
/* 00774 809B5874 C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 00778 809B5878 304D0001 */  andi    $t5, $v0, 0x0001           ## $t5 = 00000000
/* 0077C 809B587C 460A103C */  c.lt.s  $f2, $f10                  
/* 00780 809B5880 00000000 */  nop
/* 00784 809B5884 4500001A */  bc1f    .L809B58F0                 
/* 00788 809B5888 00000000 */  nop
/* 0078C 809B588C C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 00790 809B5890 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00794 809B5894 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00798 809B5898 46128001 */  sub.s   $f0, $f16, $f18            
/* 0079C 809B589C C7A40038 */  lwc1    $f4, 0x0038($sp)           
/* 007A0 809B58A0 46000005 */  abs.s   $f0, $f0                   
/* 007A4 809B58A4 460C003C */  c.lt.s  $f0, $f12                  
/* 007A8 809B58A8 00000000 */  nop
/* 007AC 809B58AC 45000010 */  bc1f    .L809B58F0                 
/* 007B0 809B58B0 00000000 */  nop
/* 007B4 809B58B4 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 007B8 809B58B8 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 007BC 809B58BC 46062001 */  sub.s   $f0, $f4, $f6              
/* 007C0 809B58C0 46000005 */  abs.s   $f0, $f0                   
/* 007C4 809B58C4 460C003C */  c.lt.s  $f0, $f12                  
/* 007C8 809B58C8 00000000 */  nop
/* 007CC 809B58CC 45000008 */  bc1f    .L809B58F0                 
/* 007D0 809B58D0 00000000 */  nop
/* 007D4 809B58D4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 007D8 809B58D8 460A4001 */  sub.s   $f0, $f8, $f10             
/* 007DC 809B58DC 46000005 */  abs.s   $f0, $f0                   
/* 007E0 809B58E0 460C003C */  c.lt.s  $f0, $f12                  
/* 007E4 809B58E4 00000000 */  nop
/* 007E8 809B58E8 45030004 */  bc1tl   .L809B58FC                 
/* 007EC 809B58EC 860F0030 */  lh      $t7, 0x0030($s0)           ## 00000030
.L809B58F0:
/* 007F0 809B58F0 11A0001F */  beq     $t5, $zero, .L809B5970     
/* 007F4 809B58F4 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 007F8 809B58F8 860F0030 */  lh      $t7, 0x0030($s0)           ## 00000030
.L809B58FC:
/* 007FC 809B58FC 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00800 809B5900 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 00804 809B5904 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00808 809B5908 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 0080C 809B590C 44814000 */  mtc1    $at, $f8                   ## $f8 = 2000.00
/* 00810 809B5910 468021A0 */  cvt.s.w $f6, $f4                   
/* 00814 809B5914 A600025A */  sh      $zero, 0x025A($s0)         ## 0000025A
/* 00818 809B5918 8602025A */  lh      $v0, 0x025A($s0)           ## 0000025A
/* 0081C 809B591C E60202DC */  swc1    $f2, 0x02DC($s0)           ## 000002DC
/* 00820 809B5920 E602027C */  swc1    $f2, 0x027C($s0)           ## 0000027C
/* 00824 809B5924 468084A0 */  cvt.s.w $f18, $f16                 
/* 00828 809B5928 E6020284 */  swc1    $f2, 0x0284($s0)           ## 00000284
/* 0082C 809B592C 3C01809B */  lui     $at, %hi(D_809B61E0)       ## $at = 809B0000
/* 00830 809B5930 A6020258 */  sh      $v0, 0x0258($s0)           ## 00000258
/* 00834 809B5934 A6020256 */  sh      $v0, 0x0256($s0)           ## 00000256
/* 00838 809B5938 46083281 */  sub.s   $f10, $f6, $f8             
/* 0083C 809B593C E61202D4 */  swc1    $f18, 0x02D4($s0)          ## 000002D4
/* 00840 809B5940 A6020254 */  sh      $v0, 0x0254($s0)           ## 00000254
/* 00844 809B5944 3C18809B */  lui     $t8, %hi(func_809B59B0)    ## $t8 = 809B0000
/* 00848 809B5948 E60A02D0 */  swc1    $f10, 0x02D0($s0)          ## 000002D0
/* 0084C 809B594C C43061E0 */  lwc1    $f16, %lo(D_809B61E0)($at) 
/* 00850 809B5950 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00854 809B5954 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 00858 809B5958 271859B0 */  addiu   $t8, $t8, %lo(func_809B59B0) ## $t8 = 809B59B0
/* 0085C 809B595C E6020288 */  swc1    $f2, 0x0288($s0)           ## 00000288
/* 00860 809B5960 AE180250 */  sw      $t8, 0x0250($s0)           ## 00000250
/* 00864 809B5964 E610006C */  swc1    $f16, 0x006C($s0)          ## 0000006C
/* 00868 809B5968 1000000C */  beq     $zero, $zero, .L809B599C   
/* 0086C 809B596C E61202E0 */  swc1    $f18, 0x02E0($s0)          ## 000002E0
.L809B5970:
/* 00870 809B5970 A6190254 */  sh      $t9, 0x0254($s0)           ## 00000254
/* 00874 809B5974 3C01809B */  lui     $at, %hi(D_809B61E4)       ## $at = 809B0000
/* 00878 809B5978 C42461E4 */  lwc1    $f4, %lo(D_809B61E4)($at)  
/* 0087C 809B597C 3C01809B */  lui     $at, %hi(D_809B61E8)       ## $at = 809B0000
/* 00880 809B5980 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00884 809B5984 E6040264 */  swc1    $f4, 0x0264($s0)           ## 00000264
/* 00888 809B5988 C42661E8 */  lwc1    $f6, %lo(D_809B61E8)($at)  
/* 0088C 809B598C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00890 809B5990 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00894 809B5994 0C26D49A */  jal     func_809B5268              
/* 00898 809B5998 E6060288 */  swc1    $f6, 0x0288($s0)           ## 00000288
.L809B599C:
/* 0089C 809B599C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008A0 809B59A0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 008A4 809B59A4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 008A8 809B59A8 03E00008 */  jr      $ra                        
/* 008AC 809B59AC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000

