#!/bin/bash

TEMP_DIR=tmp

# 임시 폴더 비우기
echo "[exec] rm -rf $TEMP_DIR"
rm -rf $TEMP_DIR
echo "[exec] mkdir $TEMP_DIR"
mkdir $TEMP_DIR

# 컴파일
echo "[exec] iverilog -o $TEMP_DIR/`echo $1 | sed -e 's/.*\///g'`.out `ls -d -- $1/*.v | tr '\n' ' '`"
iverilog -o $TEMP_DIR/`echo $1 | sed -e 's/.*\///g'`.out `ls -d -- $1/*.v | tr '\n' ' '`

# 결과물 실행
echo "[exec] cd $TEMP_DIR"
cd $TEMP_DIR
echo "[exec] vvp $1.out"
vvp `echo $1 | sed -e 's/.*\///g'`.out

if [[ $2 = '-wave' ]]; then
  # open gtkwave
  open -a gtkwave *.vcd
fi
