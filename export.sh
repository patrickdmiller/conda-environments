for env in $(conda env list | cut -d" " -f1); do 
   if [[ ${env:0:1} == "#" ]] ; then continue; fi;
   conda env export -n $env > ${env}.yml
done
