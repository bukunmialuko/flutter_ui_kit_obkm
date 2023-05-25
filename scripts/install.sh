#!/bin/sh

pwd

(cd .. && flutter clean)
(cd .. && flutter pub get)
(cd .. && flutter pub run build_runner build --delete-conflicting-outputs)

exit 0
