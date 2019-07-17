#!/usr/bin/perl

# 该脚本使用部分比较常用的特殊变量

print $$, "\n";     # 当前进程号
print $0, "\n";     # 文件名
print $], "\n";     # Perl版本号
print $^O, "\n";    # 操作系统
print @ARGV, "\n";  # 命令行参数
print @INC, "\n";   # Include列表
print @F, "\n";     # 命令行数组输入
# print %ENV, "\n";