#!/usr/bin/perl

# 错误处理 

# 以打开文件这一操作为例
$file = "./perl_tutorial.pl";

# 第一种,相当于if-else
open(DATA, $file) || die "第一种错误处理方式  Error: $!";
# 这里的$!返回了错误信息,die之后程序就立即退出

# 第二种，相当于unless
die "第二种错误处理方式  Error: $!" unless open(DATA, $file);

# 以哈希表中查找这一操作为例
%hash = ("junkai", "zhan", "xiaofang", "zhang");

# 第三种，使用三目运算符
print (exists($hash{"junkai"}) ? "junkai 存在\n" : "junkai 不存在\n");

# 第四种，使用warn函数
exists($hash{"jun"}) || warn("Where is JunkaiZhan?\n");
# warn跟die不一样，只会提出警告

# 第五种：使用carp模块
use Carp;
use Carp qw(cluck);

sub function_carp {
    carp "Error in carp function!";     # 相当于warn和跟踪信息
}

sub function_cluck {
    cluck "Error in cluck function!";   # 相当于warn+栈回溯追踪
}

sub function_croak {
    croak "Error in croak function!";   # 相当于die
}

sub function_confess {
    confess "Error in confess function!"; # 相当于die+栈回溯追踪
}

function_carp();
function_cluck();
function_croak();
function_confess();

