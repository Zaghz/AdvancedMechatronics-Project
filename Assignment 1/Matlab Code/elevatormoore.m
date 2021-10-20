function [state ,y] = elevatormoore(u)
persistent current_state %state variable that persistes with every function call
if(isempty(current_state)) %initializing the state variable during first function call
    current_state = 1;
end
switch current_state
    case 1 %state q1 represents being in the first floor
        switch u %u is action or event
            case 1 %floor 1 button is pressed
                current_state = 1;
            case 2 %floor 2 button is pressed
                current_state = 4;
            otherwise %otherwise floor 3 button is pressed
                current_state = 6;
        end
    case 2 %state q2 represents being in the second floor
        switch u
            case 1
                current_state = 5;
            case 2
                current_state = 2;
            otherwise
                current_state = 8;
        end
    case 3 % state q3 represents being in the third floor
        switch u
            case 1
                current_state = 7;
            case 2
                current_state = 9;
            otherwise
                current_state = 3;
        end
    case 4
        switch u
            case 2
                current_state = 2;
        end
    case 5
        switch u
            case 1
                current_state = 1;
        end
    case 6
        switch u
            case 3
                current_state = 3;
        end  
    case 7
        switch u
            case 1
                current_state = 1;
        end  
    case 8
        switch u
            case 3
                current_state = 3;
        end  
    case 9
        switch u
            case 2
                current_state = 2;
        end  
end
switch current_state %choose output depending on current state
    case 1
        y = "s"; %elevator remains in place
    case 2
        y = "s";
    case 3
        y = "s";
    case 4
        y = "u1"; %elevator goes up 1 floor
    case 5
        y = "u1";
    case 6
        y = "u2"; %elevator goes up 2 floors
    case 7
        y = "d2"; %elevator goes down 2 floors
    case 8
        y = "u1";
    case 9
        y = "d1"; %elevator goes down 1 floor
end
state = current_state;
end
