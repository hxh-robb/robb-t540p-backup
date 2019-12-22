#!/bin/sh

## get device id of the TouchPad
tp_dev_id=`xinput list|grep TouchPad|grep -o id=[0-9]*|grep -o [0-9]*`

## check whether touchpad is disabled
test -z `xinput list $tp_dev_id|grep -o disabled` && xinput disable $tp_dev_id|echo TouchPad disabled || xinput enable $tp_dev_id|echo TouchPad enabled
