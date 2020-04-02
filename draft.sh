#!/bin/sh

###
# 特点：
# 传入数组
# 过滤数组
# 返回数组
###
function arr_filter00() {
  local arr
  local val
  local reg
  local res
  local len
  local index
  local fun
  res=()
  arr=$1
  reg=$2
  len=0
  index=0
  for val in ${arr[*]}; do
    index=$(($index + 1))
    echo "$val" | grep -E "$reg" 1>/dev/null 2>&1
    if [ $? -eq 0 ]; then
      #echo ${!arr[@]} ?=0
      len=$(($len + 1))
      res[$len]=$val
    fi
  done
  echo "${res[*]}"
}
## function usage
# arr_filter00 "${regions[*]}"

function arr_filter_fn() {
  local arr
  local val
  local reg
  local res
  local len
  local index
  local fun
  local out
  res=()
  arr=$1
  reg=$2
  len=0
  index=0
  for val in ${arr[*]}; do
    index=$(($index + 1))
    #fun="$reg \"$val\" \"$index\" \"${arr[*]}\""
    fun="$reg $val $index ${arr[*]}"
    #echo "$fun"
    out=$($fun)
    #echo $out
    if [ "$out" = "true" ]; then
      len=$(($len + 1))
      res[$len]=$val
    fi
  done
  echo "${res[*]}"
}
## function usage
# arr_filter_fn "${regions[*]}"  "fn"

function arr_filter_fun() {
  local arr
  local val
  local reg
  local res
  local len
  local index
  local fun
  local out
  res=()
  arr=$1
  reg=$2
  len=0
  index=0

  for val in ${arr[*]}; do
    index=$(($index + 1))
    #fun="$reg \"$val\" \"$index\" \"${arr[*]}\""
    fun=$(
      cat <<EOF
function _filter_fn() {
  local out
  #out="true"
  #out=\$(str_start "vm.app.xx" "^vm")
  out=\$($reg "$val" "$index" "${arr[*]}")
  if [ "\$out" = "true" ]; then
    echo "true"
  else
    echo "false"
  fi
}
EOF
    )
    eval "$fun"
    _filter_fn
    #echo "$fun"
    out=$(_filter_fn)
    #echo $out
    if [ "$out" = "true" ]; then
      len=$(($len + 1))
      res[$len]=$val
    fi
  done
  echo "${res[*]}"
}
## function usage
# arr_filter_fun "${regions[*]}"  "fn"

function str_start() {
  local res=
  local val=
  echo "$1" | grep -E "$2" 1>/dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "true"

  else
    echo "false"
  fi
  #[ $? -eq 0 ] && echo "true"
}
## function usage
# str_start "vm.app.xx" "^vm"
