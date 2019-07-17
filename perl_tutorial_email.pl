#!/usr/bin/perl

# Linux或者Mac系统可以使用sendmail
# Windows系统可以使用MIME::Lite模块

$to      = 'junkaizhan@163.com';
$from    = '597781685@qq.com';
$subject = 'Perl 发送测试邮件';
$message = '今天晚上吃烤鱼!哈哈哈!我是张小芳。';

open(MAIL, "|/usr/sbin/sendmail -t");

# 邮件头部
print MAIL "To: $to\n";
print MAIL "From: $from\n";
print MAIL "Subject: $subject\n";
# 邮件信息
print MAIL $message;

close(MAIL);
print "邮件发送成功\n";