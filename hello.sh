#!/bin/sh
mkdir -p hello
ruby -rsample/hello -e "puts 'starting...'" hello &
echo $? > pid
sleep 1
cat hello/hello.txt
# umount hello/
sleep 1
cat pid | xargs kill
rmdir hello