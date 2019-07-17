#!/usr/bin/perl

# 最简单的函数调用
sub Hello {
    print "Hello World\n";
}
# 函数调用
Hello();

# 参数为标量和数组的函数
sub Average {
    
    $n = @_;  # 获取参数个数
    $sum = 0; # 声明一个局部变量

    foreach $item (@_) {
        $sum += $item;
    }

    $average = $sum / $n;

    print "传入的参数有：@_\n";    # 打印整个参数列表
    print "第三个参数为：$_[2]\n"; # 打印第三个参数
    print "平均值为：$average\n"; # 打印平均值
}

Average(10, (20, 30, 40)); # 传入标量和数组，最终在函数里面也是被合并起来的

# 参数为哈希表的函数
sub PrintHash {
    # 默认情况下，Perl中的所有变量都是全局变量，使用my可以设置变量的作用域，直到闭合作用域的结尾。
    my %hash = @_; # 在传入参数的时候，哈希表会被展开成数组，所以这里我们需要重新转回来
    foreach my $key (keys %hash) {
        my $value = $hash{$key};
        print "$key: $value\n";
    }
    "Hello, $hash{'name'}"."\n";  # 函数中可以使用return来返回值，如果没有return语句则返回最后一个语句
}

%hash = ('name' => 'junkaizhan', 'age' => 25);
print(PrintHash(%hash));

=begin
相对于my，还有另外一种方式是local，用来为全局变量提供临时的值，在作用域结束的时候把原来的值还回去。
区别是，在作用域内调用子程序，该子程序内仍然有效，而如果使用my就无效了。
=cut

# 静态变量
use feature 'state';

sub PrintCount{
   state $count = 0; # 初始化变量
   print "counter 值为：$count\n";
   $count++;
}
 
for (1..5){
   PrintCount();
}