#!/usr/bin/env bash

SOURCE_DIR=~/doctfiles
TARGET_DIR=~

for file in $SOURCE_DIR/.*;do
    if [ -f $file ] ;   
    then 
        name=$(basename $file)
        if [ -e $TARGET_DIR/$name ] ;
        then
            rm $TARGET_DIR/$name
            echo "$TARGET_DIR/$name已经存在, 正在删除..."
        fi
        ln -s $file $TARGET_DIR/$name 
        echo "已建立$file->$TARGET_DIR/$name的软链接"
    fi

done

