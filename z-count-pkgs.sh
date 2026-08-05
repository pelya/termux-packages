#!/bin/bash

shopt -s extglob
LIBCNT="$(ls packages/lib*/build.sh x11-packages/lib*/build.sh root-packages/lib*/build.sh | wc -l)"

for F in a b c d e f g h i j k l m n o p q r s t u v w x y z; do
  echo "$F:" "$(ls packages/${F}*/build.sh x11-packages/$F*/build.sh root-packages/$F*/build.sh | wc -l)"
done

echo "===="

for F in '@(0|1|2|3|4|5|6|7|8|9|a|b|c|d|e|f)' '@(g|h|i|j|k)' '@(l|m|n|o)' '@(p|q|r|s)' '@(t|u|v|w|x|y|z)'; do
  CNT="$(ls packages/${F}*/build.sh x11-packages/$F*/build.sh root-packages/$F*/build.sh | wc -l)"
  echo "$F" | grep 'l' >/dev/null && CNT=$(expr $CNT - $LIBCNT)
  echo "$F: $CNT"
done

echo "lib: $LIBCNT"

echo "===="

for F in '@(0|1|2|3|4|5|6|7|8|9|a|b|c|d)' '@(e|f|g|h|i|j)' '@(k|l|m)' '@(n|o|p)' '@(q|r|s)' '@(t|u|v|w|x|y|z)'; do
  CNT="$(ls packages/${F}*/build.sh x11-packages/$F*/build.sh root-packages/$F*/build.sh | wc -l)"
  echo "$F" | grep 'l' >/dev/null && CNT=$(expr $CNT - $LIBCNT)
  echo "$F: $CNT"
done

echo "lib: $LIBCNT"

echo "===="

for F in '@(0|1|2|3|4|5|6|7|8|9)' `echo {a..z} | sed -E 's/([^ ])/@(\1)/g'` `echo {a..z} | sed -E 's/([^ ])/@(lib\1)/g'`; do
  CNT="$(ls packages/${F}*/build.sh x11-packages/$F*/build.sh root-packages/$F*/build.sh | wc -l)"
  echo "$F" | grep '@(l)' >/dev/null && CNT=$(expr $CNT - $LIBCNT)
  echo "$F: $CNT"
done
