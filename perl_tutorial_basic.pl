#!/usr/bin/perl

# This is a single line comment
 
=begin
These are multiple lines comment
Start with =something and end with =cut
=cut

print "Hello, World!\n";

# Here文档  ----------------------------------------------------------------
print "Here文档 ------------------------------------------------------------\n";

$vars = <<"EOF";
从这里开始
直到双引号当中字符的出现之前的每一句话
都会被放到vars这个变量当中
EOF

print $vars;

# 基本数据类型初步认识: 标量、数组、哈希 -----------------------------------------------
print "基本数据类型初步认识 ------------------------------------------------------------\n";

# 标量
$vars1 = 12;       # 整型标量
$vars2 = 12.345;   # 浮点标量
$vars3 = "字符串";  # 字符串标量

print "\$vars1 = $vars1\n";
print "\$vars2 = $vars2\n";
print "\$vars3 = $vars3\n";

# 数组
@vars4 = (1, 2, 3, 4);           # 整型数组
@vars3 = ("jun", "kai", "zhan"); # 字符串数组

print "\$vars5[0] = @vars3[0]\n";  # 调用字符串的时候可以用$或者@
print "\$vars5[1] = @vars3[1]\n";  # 标量、数组和哈希有独立的命名空间，可以重名
print "\$vars5[2] = $vars3[2]\n";  # 用@调用的时候会自动根据上下文来判断

# 哈希
%hashVars = ('junkai'=>"zhan", 'xiaofang'=>"zhang"); # 中间的=>可以用逗号代替

print "\%hashVars{\'junkai\'} = $hashVars{'junkai'}\n";
print "\%hashVars{\'xiaofang\'} = $hashVars{'xiaofang'}\n";

# 标量进一步  ------------------------------------------------------------
print "标量进一步 ------------------------------------------------------------\n";

$vars5 = 13;
$vars6 = "hello";
$vars7 = $vars5.$vars6."\n";  # 不管什么类型的标量，都可以使用.运算连接起来
print $vars7;

# 下面这些是特殊字符，注意不能放到引号当中去，引号内部可以简单的理解为只能用@来调用变量
print "file name is ".__FILE__."\n";
print "line number is ".__LINE__."\n";
print "package name is ".__PACKAGE__."\n";
