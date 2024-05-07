#!/bin/sh

echo "<------------------------ Generating web build ------------------------>"
(cd ../ && flutter build web --web-renderer canvaskit --release --no-tree-shake-icons --source-maps -t lib/main.dart)
echo "<-------------------------- Web build complete --------------------------->"

exit 0
