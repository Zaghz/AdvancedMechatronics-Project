function [state ,y] = elevatormoore(u)
persistent current_state
if(isempty(current_state))
    current_state = 1;
end
switch current_state
    case 1
        y = "s";
        switch u
            case 1
                current_state = 1;
            case 2
                current_state = 4;
            otherwise
                current_state = 6;
        end
    case 2
        y = "s";
        switch u
            case 1
                current_state = 5;
            case 2
                current_state = 2;
            otherwise
                current_state = 8;
        end
    case 3
        y = "s";
        switch u
            case 1
                current_state = 7;
            case 2
                current_state = 9;
            otherwise
                current_state = 3;
        end
    case 4
        y = "u1";
        switch u
            case 2
                current_state = 2;
        end
    case 5
        y = "u1";
        switch u
            case 1
                current_state = 1;
        end
    case 6
        y = "u2";
        switch u
            case 3
                current_state = 3;
        end  
    case 7
        y = "d2";
        switch u
            case 1
                current_state = 1;
        end  
    case 8
        y = "u1";
        switch u
            case 3
                current_state = 3;
        end  
    case 9
        y = "d1";
        switch u
            case 2
                current_state = 2;
        end  
end
state = current_state;
end
