li   $t1, 0x12345678
sll  $t2, $t1, 24
srl  $t3, $t1, 24
or   $t2, $t2, $t3
sll  $t3, $t1, 8
srl  $t3, $t3, 24
sll  $t4, $t1, 24
srl  $t4, $t4, 8
or   $t2, $t2, $t3
or   $t2, $t2, $t4
