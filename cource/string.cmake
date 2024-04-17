cmake_minimum_required(VERSION 3.25 FATAL_ERROR)


string(FIND "adcdefghckdef" "def" fwdIndex)
string(FIND "adcdefghckdef" "def" revIndex REVERSE)

message(STATUS "fwdIndex0: ${fwdIndex}")
message(STATUS "revIndex0: ${revIndex}")

message(STATUS "---------------")

string(REPLACE "ghc" "ggg" outVar "adcdefghckdef")
message(STATUS "outVar: ${outVar}")

message(STATUS "---------------")

string(REGEX MATCH    "[ace]"           matchOne abcdefabcdef)
string(REGEX MATCHALL "[ace]"           matchAll abcdefabcdef)
string(REGEX REPLACE  "([de])" "X\\1Y"  replVar1 abc def abcdef)
string(REGEX REPLACE  "([de])" [[X\1Y]] replVar2 abcdefabcdef)
message("matchOne = ${matchOne}\n"
        "matchAll = ${matchAll}\n"
        "replVar1 = ${replVar1}\n"
        "replVar2 = ${replVar2}")

message(STATUS "---------------")

string(SUBSTRING "abcdef" 2 3 subStr)
message("subStr = ${subStr}")