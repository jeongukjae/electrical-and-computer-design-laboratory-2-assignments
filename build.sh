#!/bin/bash

# a script to compile and execute the test bench written with verilog.
# Usage
#   # to clear temp
#   ./build.sh clear
#
#   # to build (example: week3/pre/and_gate)
#   ./build.sh build week3/pre/and_gate
#
#   # to build and open gtkwave (example: week3/pre/and_gate)
#   ./build.sh build week3/pre/and_gate -wave

TEMP_DIR=tmp

# main function
function main() {
  if [[ $# = 0 ]]; then
    # no command
    echo "no command."
    echo "Available commands: \`build\`, \`clear\`"
    echo
    exit
  fi

  if [[ $1 = 'clear' ]]; then
    # clear command
    echo "Clear temp dir"
    clear_temp
  elif [[ $1 = 'build' ]]; then
    # build command
    if [[ $# = 1 ]]; then
      # error!
      echo "input path is not specified."
      echo "Usage: ./build.sh build project_path [-wave]"
      echo
      exit
    fi

    echo "Build project $2"
    clear_temp
    compile_and_execute $2
    if [[ $3 = '-wave' ]]; then
      # when the wave option is set
      open_gtkwave
    fi 
  else
    # wrong command
    echo "A command \`$1\` is not supported."
    echo "Available commands: \`build\`, \`clear\`"
    echo
    exit
  fi
}

# print the command and execute it
function log() {
  echo "[exec] $@"
  $@
}

# remove temp directory and recreate it
function clear_temp() {
  log rm -rf $TEMP_DIR
  log mkdir $TEMP_DIR
}

# compile project and execute it to create vcd file
function compile_and_execute() {
  OUTPUT_BASE_NAME=`echo $1 | sed -e 's/.*\///g'`
  INPUT_FILES=`ls -d -- $1/*.v | tr '\n' ' '`

  # compile with iverilog
  log iverilog -o $TEMP_DIR/$OUTPUT_BASE_NAME.out $INPUT_FILES

  # execute out file to create vcd file
  log cd $TEMP_DIR
  log vvp $OUTPUT_BASE_NAME.out
}

# open gtkwave
function open_gtkwave() {
  log open -a gtkwave *.vcd
}

main $@
