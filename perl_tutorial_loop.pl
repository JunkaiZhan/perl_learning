#!/usr/bin/perl

# perl语言跟其他很多语言一样，循环类型有for、while、foreach、do...while
# 基本用法也大同小异，这里主要介绍foreach以及循环控制相关的语法

@list = (1, 2, 3, 4);

foreach $a (@list) {
    print "the value of a is $a\n";
}

# next语句：跳出当前循环，会跳去执行continue语句块
# 然后在回来继续执行循环

$a = 15;
while($a < 20) {
    if( $a == 17) {
        $a = $a + 1;
        next;
    }
    print "the value of a in loop next is : $a\n";
    $a = $a + 1;
} continue {
    print "the loop next enter continue\n";
}

# redo语句：其实就是next语句的不执行continue版本
$a = 15;
while($a < 20) {
    if( $a == 17) {
        $a = $a + 1;
        redo;
    }
    print "the value of a in loop next is : $a\n";
} continue {
    $a = $a + 1;
}

# last语句：结束整个循环，就算有continue语句块也不执行了
# 就是这么吊

$a = 15;
while($a < 20) {
    if( $a == 17) {
        $a = $a + 1;
        last;
    }
    print "the value of a in loop last is : $a\n";
    $a = $a + 1;
}

# continue语句：跟其他语言不太一样，其他语言中都是用来跳出循环的
# 在perl里面，是执行在每一轮循环判断前

foreach $a (@list) {
    print "the value of a in loop continue is : $a\n";
} continue {
    last if $a == 3; # statement
}

# goto语句：可以直接跳到指定的label处

$a = 15;
LOOP: do {
    if( $a == 17) {
        $a = $a + 1;
        goto LOOP; # goto "LO"."OP";
    }
    print "the value of a in loop goto is : $a\n";
    $a = $a + 1;
} while($a < 20);
