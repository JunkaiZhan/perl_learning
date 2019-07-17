#!/usr/bin/perl
use POSIX qw(strftime);

$dateString = localtime(); # 子程序返回值会根据上下文来选择返回类型，这里返回字符串
print "当前时间日期为：$dateString\n";

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime(); # 这里返回列表
print "$sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst\n";
# mon从0开始，year从1900开始，wday的0表示周日，yday表示今天是一年中的第几天，从0开始

$gmt_dateString = gmtime();
print "GMT时间日期为：$gmt_dateString\n";

# 具体还有哪些格式化符号需要查找相关资料
$date = strftime "%Y-%m-%d %H:%M:%S", localtime;
print $date."\n";