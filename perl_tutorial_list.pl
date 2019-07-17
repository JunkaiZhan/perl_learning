#!/usr/bin/perl

@vars8 = ("zhan", "jun", "kai");   # 常规的数组声明方式
print "\$vars8[0] = $vars8[0]\n";
print "\$vars8[1] = $vars8[1]\n";
print "\$vars8[2] = $vars8[2]\n";

@vars9 = qw/zhan jun kai ni hao/;  # 使用qw//创建数组
print "\$vars9[0] = $vars9[0]\n";
print "\$vars9[1] = $vars9[1]\n";
print "\$vars9[2] = $vars9[2]\n";
print "\$vars9[3] = $vars9[3]\n";
print "\$vars9[-1] = $vars9[-1]\n"; # 使用负数进行索引倒着数

@vars_abc = (a..z);   # 使用起始值+..+终止值，可以创建序列数组
print "@vars_abc\n";

$abc_size = @vars_abc;       # 返回数组的大小，数组的大小是根据开辟的空间大小有关，而与实际包含多少元素没有关系
$abc_max_index = $#vars_abc; # 加个井号可以返回数组的最大索引
print "\$abc_size = $abc_size\n"; 
print "\$abc_max_index = $abc_max_index\n";

# 数组操作  ------------------------------------------------------------
print "数组操作 ------------------------------------------------------------\n";

# 添加或者删除元素
@websites = ("google", "facebook", "apple");
print "1. \@websites = @websites\n";
push(@websites, "huawei");             # 在数组尾部添加元素，该元素可以是标量或者数组
print "2. \@websites = @websites\n";
unshift(@websites, "xiaomi");          # 在数组的头部添加元素
print "3. \@websites = @websites\n";
pop(@websites);                        # 删除数组尾部的元素
print "4. \@websites = @websites\n";
shift(@websites);                      # 删除数组头部的元素
print "5. \@websites = @websites\n";

# 数组与字符串之间的相互转换
$website_name = "www.huawei.com";
@website_name = ("www", "apple", "com");
print("转换前：\n");
print("\$website_name = $website_name\n");
print("\@website_name = @website_name\n");

@website_name_new = split('\.', $website_name); # 注意，split的分割样式是使用的正则表达式，所以用点必须增加反斜杠
$website_name_new = join(".", @website_name);
print("转换后：\n");
print("\@website_name_new = @website_name_new\n");
print("\$website_name_new = $website_name_new\n");

# 数组的切割
@website_cut = @website_name_new[0, 2];
print "\@website_cut = @website_cut\n";

# 数组的替换
@website_temp = ("banana", "cn");
# splice函数格式：splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
splice(@website_name_new, 1, 2, @website_temp); # 其返回值是被替换的那些元素
print "After replacement: \@website_name_new = @website_name_new\n";

# 数组的排序
@website_name_new = sort(@website_name_new);
print "After sort: \@website_name_new = @website_name_new\n";

# 数组起始索引改变
# $[ = 1;
# print "After change the first index of list, \@website_name_new[1] = @website_name_new[1]\n";

# 数组的合并就是把两个数组放在一个小括号里面就好了
@odd = (1, 3, 5);
@even = (2, 4, 6);
@numbers = (@odd, @even);
print "numbers = @numbers\n";