#!/usr/bin/perl

# 创建方式1：为每个键值设置value来创建哈希
$data1{"google"} = "google.com";
$data1{"baidu"} = "baidu.com";
$data1{"huawei"} = "huawei.com";
$data1{"xiaomi"} = "mi.com";

delete $data1{'baidu'}; # 直接使用delete就可以删除哈希中的键值对

print "\$data1{'huawei'} = $data1{'huawei'}\n";

# 创建方式2：通过列表的方式来创建哈希
%data2 = ("google" => "google.com", "baidu" => "baidu.com", "huawei" => "huawei.com");
print "\$data2{'huawei'} = $data2{'huawei'}\n";

%data3 = ("google", "google.com", "baidu", "baidu.com", "huawei", "huawei.com");
print "\$data3{'huawei'} = $data3{'huawei'}\n";

%data4 = (-google, "google.com", -baidu, "baidu.com", -huawei, "huawei.com");
print "\$data4{'huawei'} = $data4{-huawei}\n";

# 从哈希表中取出键值来组成数组
@data_get = @data1{"google", "huawei"};
print "\@data_get = @data_get\n";

=begin
这里可以总结一下
对于标量的引用，可以直接使用$即可
对于数组整体的引用，使用@即可；而对于数组元素的引用，使用@name[n1, n2]或者$name[n]索引
对于哈希表整体的引用，使用%即可；而对于哈希元素的引用，使用@name{n1, n2}或者$name{n1}索引
=cut

# 获取哈希表的keys和values数组
@keys = keys %data1;
@values = values %data1;
print "the keys of \%data1 are @keys \n";
print "the values of \%data1 are @values \n";

# 检测元素是否存在
if( exists($data1{'xiaomi'}) ) {
    print "the website of xiaomi is $data1{'xiaomi'} \n";
} else {
    print "the xiaomi key is not exist in \%data1\n";
}
