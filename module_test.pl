#!/usr/bin/perl
#

require perl_tutorial_module;

perl_tutorial_module::hello("junkai");
perl_tutorial_module::bye("kaijun");

# 除此之外，也可以用use关键字，比如use perl_tutorial_module
# 然后就可以使用hello函数了
#
# 区别在于，require是在运行时引入
# 而use是在编译时引入
