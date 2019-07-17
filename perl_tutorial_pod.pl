#!/usr/bin/perl

=pod
用作多行注释就可以了
POD本身可以理解为markdown类似的语言
可以生成网页或者文档
比如 在使用命令 pod2html pod.pod > pod.html
=cut

print "Hello, World!\n";

while(<DATA>) {
    print $_;
}

__END__

在END之后的内容都是POD文档注释
并且可以使用DATA给打印出来
POD文档可以被转化为text, html, man等格式


