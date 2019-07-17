#!/usr/bin/perl

# perl语言的运算符基本与其他语言类似
# 该文件只展示一些比较特殊的

$a = 10;
$b = 20;

$c = $a <=> $b; # 检查两个操作数是不是相等，小于返回-1, 等于返回0，大于返回1
print "\$c = $c\n";

# 在perl里面没有！只有not, 跟python一样
if (not ($a > $b)) {
    print "a larger than b\n";
}

unless ($a > $b) {
    print "Hello World\n";
}

# 引号运算
$a = 10;
$b = q{a = $a}; # 单引号
print "q{a = \$a} = $b\n";
 
$b = qq{a = $a}; # 双引号
print "qq{a = \$a} = $b\n";
 
# 使用 unix 的 date 命令执行
$t = qx{date}; # 反斜杠
print "qx{date} = $t";

# x重复运算符
print(('-'x50)."\n");