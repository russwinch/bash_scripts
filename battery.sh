#!/bin/bash

# collects battery % and returns along with charging / discharging indicator
case $(pmset -g batt | tail -1 | awk "{ print \$4 }" | tr -d ";") in
    discharging)
        ind="⬇"
    ;;
    charging)
        ind="⬆"
    ;;
esac
echo $ind $(pmset -g batt | tail -1 | awk "{ print \$3 }" | tr -d ";")
