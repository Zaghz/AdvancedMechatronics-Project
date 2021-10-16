function [current_state, y] = elevator(u)
current_state = 1;
switch current_state
    case 1
        switch u
            case 1
                current_state = 1;
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
        end
end
end
