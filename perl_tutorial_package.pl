#!/usr/bin/perl
#:
# main 包
$i = 123;
print "包名为：" , __PACKAGE__ , " \$i = $i\n";

# 创建新的包
package Test;
$i = 456;
print "包名为：" , __PACKAGE__ , " \$i = $i\n";

# 回到main包
package main;
$i = 789;
print "包名为：" , __PACKAGE__ , " \$i = $i\n";
print "包名为：" , __PACKAGE__ , " \$i = $Test::i\n";

BEGIN {
    print "This is the BEGIN block.\n";
}

END {
    print "This is the END block.\n";
}


