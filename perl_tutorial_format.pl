#!/usr/bin/perl

=begin
PERL的格式化输出很有用
可以先定义一个格式模板
然后使用write按照指定模板输出数据
=cut

# 先举一个简单的例子
$websites = "huawei google";
format STDOUT = 
first website: ^<<<<<
$websites
second website: ^<<<<<<
$websites
.
write