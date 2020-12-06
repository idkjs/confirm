#!/usr/bin/env fish
function confirm
    while true
        read --local --prompt=confirm_prompt answer
        switch $answer
            case '' N n
                # echo '(n)'
                return 1
            case Y y
                #  echo '(y)'
                return 0
        end
    end
end

function confirm_prompt
    echo '(y/n)'
end
confirm2
