# sh lib arr-fun

## desc

some function for handle arr for ymc shell lib

## feat

- [x] arr_set
- [x] arr_keys
- [x] arr_values
- [x] arr_size
- [x] arr_push
- [x] arr_pop
- [x] arr_unshfit
- [x] arr_shfit
- [x] arr_reverse
- [x] arr_sort
- [x] arr_every
- [x] arr_some
- [x] arr_filter
- [x] arr_find
- [x] arr_find_index
- [x] arr_for_each
- [x] arr_map
- [x] arr_fill
- [x] arr_includes
- [x] arr_index_of
- [x] arr_last_index_of
- [x] arr_slice
- [ ] arr_splice
- [ ] arr_concat
- [ ] arr_join
- [ ] arr_to_string
- [ ] arr_entries
- [ ] arr_reduce
- [ ] arr_reduceRight
- [x] arr_get
- [x] arr_get_last
- [ ] arr_get_value_by_key

## how to use for poduction?

```sh
# get the code

# run the index file
# ./index.sh

# or import to your sh file
# source /path/to/the/index file

# simple usage
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

:<<output
1 2 3 4 5 6
a b n d ef g h i
0 1 2 3 4 5 6 7
a b n d ef g h i
8
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
true
false
1 1 1 1 1 1 b a
a
a
7
false
false
false
false
false
false
false
true

false false false false false false false true
true
7
7
 1 1 1 1 1
output

```

## how to use for developer?

```sh
# get the code

# run test
./test.sh
#2 get some fail test
./test.sh | grep "it is false"
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
