#!/bin/sh

for  csr in `kubectl get csr | awk 'NR>1 {print $1}'`
do 
  kubectl certificate approve  $csr 
done