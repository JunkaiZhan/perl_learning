#!/usr/bin/perl

# 打开文件
open(PERL, "<perl_tutorial_basic.pl") or die "文件不存在, $!";

# 从打开的文件句柄读取行信息使用<文件句柄名>

# 返回单一字符
$char = getc PERL;
print "返回一个字符：", $char, "\n"; 

# 返回指定内容
read PERL, $read, 10, 0; # 10为字符数，第二个数字为相对于文件头的偏移量
print "返回指定内容：", $read, "\n";

# 将文件的所有行放到数组当中
@lines = <PERL>;
print "########################################################################\n";
print @lines;
print "########################################################################\n";

# 返回当前文件指针位置
$position = tell PERL;
print "当前文件指针位置：", $position, "\n";

# 修改文件指针的位置，第一个数字为偏移量，第二个数字为起始位置（开头0，当前1，末尾2）
seek PERL, 0, 0; 

# 返回单行
$line = <PERL>;
print "第一行是：", $line;

# 循环一行一行读（在上一次的文件指针之后继续往后读）
while (<PERL>) {
    print "$_";
}

# 复制到另外一个文件
open(NEW_PERL, ">file_temp.pl");
seek PERL, 0, 0; 
while (<PERL>) {
    print NEW_PERL $_;  # 写入文件就用“print 文件句柄 列表”即可
}
close(NEW_PERL) or die "$!";

# 文件重命名
rename("file_temp.pl", "file_temp_rename.pl");

# 删除文件
unlink("file_temp_rename.pl");

=begin
<       只读
>       只写
>>      追加（文件指针在文件末尾）
+<或+>  读写（文件指针在文件头）
+>>     读写和追加（文件指针在文件末尾）
=cut

# 关闭文件
close(PERL) or die $!;

# 判断文件信息
my $file = "perl_tutorial_basic.pl";
my (@description, $size);
if (-e $file)
{
    # 除了下面这些，还有其他的操作符
    push @description, '是一个二进制文件' if (-B _);
    push @description, '是一个socket(套接字)' if (-S _);
    push @description, '是一个文本文件' if (-T _);
    push @description, '是一个特殊块文件' if (-b _);
    push @description, '是一个特殊字符文件' if (-c _);
    push @description, '是一个目录' if (-d _);
    push @description, '文件可执行' if (-x _);
    push @description, ($size = -s _) ? "$size 字节" : '空'; # -s会返回字节数
    print "$file 信息：", join(', ',@description),"\n";
}
