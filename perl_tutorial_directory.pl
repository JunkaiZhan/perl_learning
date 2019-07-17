#!/usr/bin/perl

# 打开当前目录
opendir(DIR, '.') || die $!;

# 关闭当前目录句柄
closedir DIR;

# 读取该目录下的所有文件
opendir(DIR, '.') || die $!;
while($file = readdir(DIR)) {
    print $file, "\n";
}
closedir DIR;

# 使用正则表达式筛选并排序
opendir(DIR, '.') || die $!;
foreach (sort grep(/^.*\.pl/, readdir(DIR))) {
    print $_, "\n";
}
closedir DIR;

# 创建目录
$new_dir = "./new_dir";
mkdir($new_dir);
print "目录创建成功\n";

# 删除目录
rmdir($new_dir) || die $!;
print "目录删除成功\n";

# 切换目录
$new_dir = '..'; 
chdir($new_dir) || die $!; # 将当前目录.切换到$new_dir
print "执行到了切换目录这里\n";
opendir(DIR, '.') || die $!;
while($file = readdir(DIR)) {
    print $file, "\n";
}
closedir DIR;