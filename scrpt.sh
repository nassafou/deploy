#!/bin/sh
echo -n 'What is the value?'
read value
sed 's/XYZ/'$value'/' <<EOF
the value is XYZ
EOF
