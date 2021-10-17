function [state ,y] = elevatormealy(u)
persistent current_state
if(isempty(current_state))
    current_state = 1;
end
switch current_state
    case 1
        switch u
            case 1
                current_state = 1;
                y = "s";
            case 2
                current_state = 2;
                y = "u1";
            otherwise
                current_state = 3;
                y = "u2";
        end
    case 2
        switch u
            case 1
                current_state = 1;
                y = "d1";
            case 2
                current_state = 2;
                y = "s";
            otherwise
                current_state = 3;
                y = "u1";
        end
    case 3
        switch u
            case 1
                current_state = 1;
                y = "d2";
            case 2
                current_state = 2;
                y = "d1";
            otherwise
                current_state = 3;
                y = "s";
        end
end
state = current_state;
end
