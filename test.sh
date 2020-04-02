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
# arr
arr_set "a85da6"
arr_set "a85da6" "a b n d ef g h i" " "
# key
arr_keys "a85da6"
# val
arr_values "a85da6"
# len
arr_size "a85da6"
arr_push "acd" "a85da6"
arr_size "a85da6"
arr_pop "a85da6"
arr_values "a85da6"
arr_unshfit "hello" "a85da6"
arr_shfit "a85da6"
arr_values "a85da6"
arr_reverse "a85da6"
arr_values "a85da6"
#arr_sort "a85da6"
#echo "${a85da6[*]}"
arr_sort "a85da6" "-r"
arr_values "a85da6"
arr_some "a85da6" "eq"
arr_every "a85da6" "eq"
arr_fill "a85da6" "1" "0" "5"
arr_filter "a85da6" "eq" ""
#echo "${a85da6_filter[*]}"
arr_find "a85da6" "eq"
arr_find_index "a85da6" "eq"
arr_for_each "a85da6" "eq"
arr_map "a85da6" "eq" ""
arr_includes "a85da6" "a" "0"
arr_index_of "a85da6" "a" "0"
arr_last_index_of "a85da6" "a" "0"
arr_slice "a85da6" "1" "5"
#simpe-usage
: <<out
1 2 3 4 5 6
a b n d ef g h i
key0 1 2 3 4 5 6 7
val:a b n d ef g h i
len:8
a b n d ef g h i acd
9
acd
a b n d ef g h i
hello a b n d ef g h i
hello
a b n d ef g h i
i h g ef d n b a
i h g ef d n b a
n i h g ef d b a
n i h g ef d b a
out

: <<test-with-fun
test 'arr_set "a85da6"' "1 2 3 4 5 6"
test 'arr_set "a85da6" "a b n d ef g h i" " "' "a b n d ef g h i"
test 'arr_values "a85da6"' "a b n d ef g h i"
test 'some "a b c" "eq"' "true"
test-with-fun
## file-usage
# ./test.sh
