#!/bin/bash

F1="tests/test_files/test1.txt"
F2="tests/test_files/test2.txt"
F3="tests/test_files/test3.txt"

i=0
suc=0
fail=0

echo "---------------------------------------------------"
echo "No-flag test"
i=$((i+1))
cat "$F1" > 1 && ./s21_cat "$F1" > 2 && if diff -q 1 2;
then echo "Test 1 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 1 \033[31mFAILED\033[0m";  fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -b"
i=$((i+1))
cat -b "$F1" > 1 && ./s21_cat -b "$F1" > 2 && if diff -q 1 2;
then echo "Test 2 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 2 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --number-nonblank)"
i=$((i+1))
cat -b "$F1" > 1 && ./s21_cat --number-nonblank "$F1" > 2 && if diff -q 1 2;
then echo "Test 3 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 3 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -e"
i=$((i+1))
cat -e "$F1" > 1 && ./s21_cat -e "$F1" > 2 && if diff -q 1 2;
then echo "Test 4 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 4 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -E"
i=$((i+1))
cat -e "$F1" > 1 && ./s21_cat -Ev "$F1" > 2 && if diff -q 1 2;
then echo "Test 5 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 5 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -n"
i=$((i+1))
cat -n "$F1" > 1 && ./s21_cat -n "$F1" > 2 && if diff -q 1 2;
then echo "Test 6 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 6 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --number)"
i=$((i+1))
cat -n "$F1" > 1 && ./s21_cat --number "$F1" > 2 && if diff -q 1 2;
then echo "Test 7 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 7 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -s"
i=$((i+1))
cat -s "$F1" > 1 && ./s21_cat -s "$F1" > 2 && if diff -q 1 2;
then echo "Test 8 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 8 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi
echo "---------------------------------------------------"

echo "Test flag (GNU: --squeeze-blank)"
i=$((i+1))
cat -s "$F1" > 1 && ./s21_cat --squeeze-blank "$F1" > 2 && if diff -q 1 2;
then echo "Test 9 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 9 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -t"
i=$((i+1))
cat -t "$F1" > 1 && ./s21_cat -t "$F1" > 2 && if diff -q 1 2;
then echo "Test 10 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 10 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -T"
i=$((i+1))
cat -t "$F1" > 1 && ./s21_cat -Tv "$F1" > 2 && if diff -q 1 2;
then echo "Test 11 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 11 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test multi-flags -bestv"
i=$((i+1))
cat -bestv "$F1" > 1 && ./s21_cat -bestv "$F1" > 2 && if diff -q 1 2;
then echo "Test 12 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 12 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "No-flag test two files"
i=$((i+1))
cat "$F1" "$F2" > 1 && ./s21_cat "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 13 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 13 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -b two files"
i=$((i+1))
cat -b "$F1" "$F2" > 1 && ./s21_cat -b "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 14 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 14 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --number-nonblank) two files"
i=$((i+1))
cat -b "$F1" "$F2" > 1 && ./s21_cat --number-nonblank "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 15 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 15 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -e two files"
i=$((i+1))
cat -e "$F1" "$F2" > 1 && ./s21_cat -e "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 16 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 16 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -E two files"
i=$((i+1))
cat -e "$F1" "$F2" > 1 && ./s21_cat -Ev "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 17 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 17 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -n two files"
i=$((i+1))
cat -n "$F1" "$F2" > 1 && ./s21_cat -n "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 18 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 18 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --number) two files"
i=$((i+1))
cat -n "$F1" "$F2" > 1 && ./s21_cat --number "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 19 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 19 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -s two files"
i=$((i+1))
cat -s "$F1" "$F2" > 1 && ./s21_cat -s "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 20 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 20 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --squeeze-blank) two files"
i=$((i+1))
cat -s "$F1" "$F2" > 1 && ./s21_cat --squeeze-blank "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 21 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 21 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -t two files"
i=$((i+1))
cat -t "$F1" "$F2" > 1 && ./s21_cat -t "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 22 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 22 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -T two files"
i=$((i+1))
cat -t "$F1" "$F2" > 1 && ./s21_cat -Tv "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 23 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 23 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test multi-flags -bestv two files"
i=$((i+1))
cat -bestv "$F1" "$F2" > 1 && ./s21_cat -bestv "$F1" "$F2" > 2 && if diff -q 1 2;
then echo "Test 24 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 24 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "No-flag test three files"
i=$((i+1))
cat "$F1" "$F2" "$F3" > 1 && ./s21_cat "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 25 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 25 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -b three files"
i=$((i+1))
cat -b "$F1" "$F2" "$F3" > 1 && ./s21_cat -b "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 26 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 26 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --number-nonblank) three files"
i=$((i+1))
cat -b "$F1" "$F2" "$F3" > 1 && ./s21_cat --number-nonblank "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 27 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 27 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -e three files"
i=$((i+1))
cat -e "$F1" "$F2" "$F3" > 1 && ./s21_cat -e "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 28 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 28 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -E three files"
i=$((i+1))
cat -e "$F1" "$F2" "$F3" > 1 && ./s21_cat -Ev "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 29 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 29 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -n three files"
i=$((i+1))
cat -n "$F1" "$F2" "$F3" > 1 && ./s21_cat -n "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 30 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 30 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --number) three files"
i=$((i+1))
cat -n "$F1" "$F2" "$F3" > 1 && ./s21_cat --number "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 31 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 31 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -s three files"
i=$((i+1))
cat -s "$F1" "$F2" "$F3" > 1 && ./s21_cat -s "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 32 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 32 \033[31mFAILED\033[0m"; fail=$((fail+1));fi

echo "---------------------------------------------------"

echo "Test flag (GNU: --squeeze-blank) three files"
i=$((i+1))
cat -s "$F1" "$F2" "$F3" > 1 && ./s21_cat --squeeze-blank "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 33 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 33 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -t three files"
i=$((i+1))
cat -t "$F1" "$F2" "$F3" > 1 && ./s21_cat -t "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 34 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 34 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test flag -T three files"
i=$((i+1))
cat -t "$F1" "$F2" "$F3" > 1 && ./s21_cat -Tv "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 35 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 35 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "Test multi-flags -bestv three files"
i=$((i+1))
cat -bestv "$F1" "$F2" "$F3" > 1 && ./s21_cat -bestv "$F1" "$F2" "$F3" > 2 && if diff -q 1 2;
then echo "Test 36 \033[32mSUCCESSFUL\033[0m"; suc=$((suc+1));
else echo "Test 36 \033[31mFAILED\033[0m"; fail=$((fail+1)); fi

echo "---------------------------------------------------"

echo "\033[31mFAIL: $fail\033[0m"
echo "\033[32mSUCCESS: $suc\033[0m"
echo "ALL TESTS: $i"

rm 1 2