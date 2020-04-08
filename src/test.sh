#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/index.sh"

function eq() {
  if [ "$1" = "a" ]; then
    echo "true"
  else
    echo "false"
  fi
}
function test() {
  local fn=
  local expectValue=
  local ouput=
  fn=${1}
  ouput=$(eval "$fn")
  expectValue=${2}
  echo "test:$fn"
  if [ "$ouput" = "$expectValue" ]; then
    echo "it is ok"
  else
    echo "it is false.expect $ouput = $expectValue"
  fi
}

# arr_fill
# arr_splice
# arr_concat
# arr_includes
# arr_indexOf
# arr_lastIndexOf
# arr_join
# arr_slice
# arr_toString
# arr_forEach
# arr_map
# arr_keys
# arr_values
# arr_entries
# arr_every
# arr_some
# arr_filter
# arr_find
# arr_findIndex
# arr_reduce
# arr_reduceRight

#: <<simpe-usage
echo "test-创建数组："
# arr
arr_set "a85da6"
arr_set "a85da6" "a b n d ef g h i" " "
echo "test-读取数组："
echo "test-读取数组-获取键名："
# key
arr_keys "a85da6"
echo "test-读取数组-获取取值："
# val
echo "test-读取数组-获取取值-所有："
arr_values "a85da6"
echo "test-读取数组-获取取值-某一索引-1："
arr_get "a85da6" "1"
echo "test-读取数组-获取取值-最后索引："
arr_get "a85da6"
echo "test-读取数组-获取取值-最后索引-last："
arr_get_last "a85da6"
echo "test-读取数组-数组长度："
# len
arr_size "a85da6"
echo "test-修改数组："
echo "test-修改数组-添加元素："
echo "test-修改数组-添加元素-尾部："
arr_push "acd" "a85da6"
arr_size "a85da6"
echo "test-修改数组-删除元素-尾部："
arr_pop "a85da6"
arr_values "a85da6"
arr_size "a85da6"
echo "test-修改数组-添加元素-首部："
arr_unshfit "hello" "a85da6"
arr_values "a85da6"
arr_size "a85da6"
echo "test-修改数组-删除元素-首部："
arr_shfit "a85da6"
arr_values "a85da6"
arr_size "a85da6"
echo "test-修改数组-反转元素："
arr_reverse "a85da6"
arr_values "a85da6"
#arr_sort "a85da6"
#echo "${a85da6[*]}"
echo "test-修改数组-排序元素："
arr_sort "a85da6" "-r"
arr_values "a85da6"
echo "test-修改数组-填充元素："
arr_fill "a85da6" "1" "0" "5"
echo "test-修改数组-筛选元素："
echo "test-修改数组-筛选元素-某一："
arr_some "a85da6" "eq"
echo "test-修改数组-筛选元素-每一："
arr_every "a85da6" "eq"
echo "test-修改数组-筛选元素-过滤："
arr_filter "a85da6" "eq" ""
#echo "${a85da6_filter[*]}"

echo "test-读取数组-查找元素："
arr_find "a85da6" "eq"
arr_find_index "a85da6" "eq"
echo "test-读取数组-遍历元素-each："
arr_for_each "a85da6" "eq"
echo "test-读取数组-遍历元素-map："
arr_map "a85da6" "eq" ""
echo "test-读取数组-包含元素："
arr_includes "a85da6" "a" "0"
echo "test-读取数组-元素索引："
arr_index_of "a85da6" "a" "0"
arr_last_index_of "a85da6" "a" "0"
echo "test-修改数组-截取元素："
arr_slice "a85da6" "1" "5" "a"
#arr_values "a"
arr_values "a85da6"

: <<test-with-fun
test 'arr_set "a85da6"' "1 2 3 4 5 6"
test 'arr_set "a85da6" "a b n d ef g h i" " "' "a b n d ef g h i"
test 'arr_values "a85da6"' "a b n d ef g h i"
test 'some "a b c" "eq"' "true"
test-with-fun
## file-usage
# ./test.sh
