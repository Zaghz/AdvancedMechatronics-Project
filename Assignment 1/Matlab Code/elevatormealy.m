function [state ,y] = elevatormealy(u)
persistent current_state %state variable that persistes with every function call
if(isempty(current_state)) %initializing the state variable during first function call
    current_state = 1;
end
switch current_state 
    case 1  %state q1 represents being in the first floor
        switch u %u is action or event
            case 1 %floor 1 button is pressed
                current_state = 1;
                y = "s"; %elevator remains in place
            case 2 %floor 2 button is pressed
                current_state = 2;
                y = "u1"; %elevator goes up 1 floor
            otherwise %otherwise floor 3 button is pressed
                current_state = 3;
                y = "u2"; %elevator goes up 2 floors
        end
    case 2 %state q2 represents being in the second floor
        switch u
            case 1
                current_state = 1;
                y = "d1"; %elevator goes down 1 floor
            case 2
                current_state = 2;
                y = "s";
            otherwise
                current_state = 3;
                y = "u1"; %elevator goes up 1 floor
        end
    otherwise % otherwise state q3 represents being in the third floor
        switch u
            case 1
                current_state = 1;
                y = "d2"; %elevator goes down 2 floors
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
