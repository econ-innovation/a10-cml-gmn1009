#!/bin/bash

# 设置收件人邮箱地址
recipient="gmn1009@163.com"

# 设置发件人邮箱地址
sender="gmn1009@163.com"

# 设置发件人显示名称
sender_name="gmn1009"

# 设置邮件主题
subject="你好"

# 设置邮件内容
body="你好"

# 使用 echo 命令构建邮件内容，并通过管道传递给 sendmail 命令
echo -e "To: $recipient\nFrom: \"$sender_name\" <$sender>\nSubject: $subject\n\n$body" | sendmail -t
