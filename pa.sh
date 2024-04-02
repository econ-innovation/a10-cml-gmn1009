#!/bin/bash

# 存储文件的根目录
root_dir="assignment_cml"

# 要处理的文件列表
files=(pubnr_cn.txt)

# 初始化计数器
file_count=0
dir_count=0

# 遍历文件列表
for file in "${files[@]}"; do
    # 检查文件是否存在
    if [ ! -f "$file" ]; then
        echo "File $file does not exist. Skipping..."
        continue
    fi
    
    # 如果文件数量达到100，则创建新的文件夹
    if [ $((file_count % 100)) -eq 0 ]; then
        ((dir_count++))
        mkdir -p "$root_dir/$dir_count" || { echo "Failed to create directory $root_dir/$dir_count"; exit 1; }
    fi
    
    # 移动文件到对应的文件夹中
    mv "$file" "$root_dir/$dir_count/" || { echo "Failed to move file $file to $root_dir/$dir_count/"; exit 1; }
    
    # 增加文件计数器
    ((file_count++))
done
