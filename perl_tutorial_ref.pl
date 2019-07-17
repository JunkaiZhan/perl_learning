#!/usr/bin/perl

# 引用可以理解为指针，就是使用一个标量来存储指向内存的某个地址
# 被引用的可以是标量、数组、哈希表或者子程序

# 引用标量
$var = 10;
$r1 = \$var;
print "$var 为 : ", $$r1, "\n";
 
# 引用数组
@var = (1, 2, 3);
$r2 = \@var;
print "@var 为: ",  @$r2, "\n";
 
# 引用数组
%var = ('key1' => 10, 'key2' => 20);
$r3 = \%var;
print "%var 为 : ", %$r3, "\n";

# 引用函数
sub PrintHash {
    print "Hello World\n";
}
$r4 = \&PrintHash;
&$r4;

# 判断引用的类型
print "\$r1的引用类型是：", ref($r1), "\n";
print "\$r2的引用类型是：", ref($r2), "\n";
print "\$r3的引用类型是：", ref($r3), "\n";
print "\$r4的引用类型是：", ref($r4), "\n";
