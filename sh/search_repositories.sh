#!/bin/bash

function grepSubfolders(){
  subpath=${1:-.}
  query=${2:-''}
  setR=$(tput setaf 1)
  setG=$(tput setaf 2)
  setReset=$(tput sgr0)

  for dir in *
  do
    #result=$(grep -rnw ${dir}/${subpath} -e $query)
    #if [ result ] 
    #then
    #  grep -rnw ${dir}/${subpath} -e $query
    #fi

    #echo -e _______${setG}${dir}${setReset}_______
    #grep -rnw ${dir}/${subpath} -e $query
    #echo -e "\n"
    grep -rnw ${dir}/${subpath} -e $query
  done
}
