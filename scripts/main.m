%==========================================================================
% Project: LEGO EV3 Car Master Project
% Team: Parker Conley, Yash Mittal, Isaiah Brown, and Shashwat Newa
% Description: This program uses a finite state machine
% to control a LEGO EV3 car.
% Car car has two main functions:
% (1) to navigate a maze and
% (2) to fight another car in a sumo wrestling match.
%==========================================================================

% Connect to the EV3 brick using this command in the terminal: brick = ConnectBrick('COOL_TEAM');
brick.SetColorMode(3, 2); % Sets color mode to numbers (as opposed to RBG)

% Define the states
states = {'moveForward', 'turnLeft', 'turnRight', 'stop', 'remoteControl', 'craneComplete'};

% Define the initial state and sensor thresholds
currentState = 'moveForward';
goalState = 'blueZone'; % Green -> blue -> yellow -> green
leftTurnDistance = 40;
tooFarLeft = 15;
tooFarRight = 25;
turn = 'incomplete';

% Loop until the FSM is stopped
while true
   % Get the current sensor readings
   touch = brick.TouchPressed(1);
   color = brick.ColorCode(3);
    % If the variable value is "NaN"
   while isnan(color)
       color = brick.ColorCode(3); % then measure again
   end
   distance = brick.UltrasonicDist(4);

   % Transition logic using switch-case
   switch currentState
       case 'moveForward'
           disp('Move Forward!');

           % Print color and distance in a nicely formatted way
           disp(strcat('Color: ', num2str(color), ', Distance: ', num2str(distance)));

           if color == 5
               brick.StopMotor('A');
               brick.StopMotor('B');
               pause(1); 
           end

           if distance > leftTurnDistance % IF DISTANCE > 35
               currentState = 'turnLeft';
           elseif touch == 1
               currentState = 'turnRight';
           elseif color == 2 && strcmp(goalState, 'blueZone') % BLUE
               goalState = 'yellowZone';
               currentState = 'remoteControl';
           elseif color == 4 && strcmp(goalState, 'yellowZone') % YELLOW
               goalState = 'greenZone';
               currentState = 'remoteControl';
           elseif color == 3 && strcmp(goalState, 'greenZone') % GREEN
               currentState = 'stop';
           end

           if distance < tooFarLeft % IF DISTANCE < 15
               brick.MoveMotor('A', 70);
               brick.MoveMotor('B', 60);
           elseif distance > tooFarRight % IF DISTANCE > 25
               brick.MoveMotor('A', 60);
               brick.MoveMotor('B', 64);
           else % IF 15 < DISTANCE < 25
               brick.MoveMotor('A', 60);
               brick.MoveMotor('B', 58);
           end

       case 'turnLeft'
           turnLeft(brick);
           turn = 'complete';
           currentState = 'moveForward';

       case 'turnRight'
           turnRight(brick);
           turn = 'complete';
           currentState = 'moveForward';

       case 'remoteControl'
           remoteControl(brick);
           currentState = 'moveForward';

       case 'stop'
           brick.StopMotor('A');
           brick.StopMotor('B');
           return;

       otherwise
           disp('Unknown state!');
           return;
   end
end
function turnLeft(brick)
   disp('Turn Left!\n');
   % MOTOR A & B MOVE FWD
   brick.MoveMotor('A', 60);
   brick.MoveMotor('B', 58);
   pause (1);

   % STOP BOTH MOTORS
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(0.5);

   % MOVE BACK
   brick.MoveMotor('A', -40);
   brick.MoveMotor('B', -37);
   pause(0.5);

   % STOP
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(1);

   % TURN LEFT
   brick.MoveMotor('A', -55);
   brick.MoveMotor('B', 0);
   pause(1);

   % STOP
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(2);

   % MOTOR A & B MOVE FWD
   brick.MoveMotor('A', 60);
   brick.MoveMotor('B', 60);
   pause (2);
end

function turnRight(brick)
   disp ('Turn Right!\n');
   % STOP BOTH MOTORS
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(0.5);

   % MOVE BACK
   brick.MoveMotor('A', -40);
   brick.MoveMotor('B', -37);
   pause(0.5);

   % STOP
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(1);

   % TURN RIGHT
   brick.MoveMotor('A', 0);
   brick.MoveMotor('B', -47);
   pause(1);

   % STOP
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(2);

   % MOTOR A & B MOVE FWD
   brick.MoveMotor('A', 60);
   brick.MoveMotor('B', 58);
   pause (1);
end
function remoteControl(brick)
   brick.StopMotor('A');
   brick.StopMotor('B');
   pause(0.5);

   global key;
   InitKeyboard();

   while true
       pause (0.05);
       switch key
           case 'uparrow' %FWD
               disp ('Up Arrow Pressed!');
               brick.MoveMotor('A', 60);
               brick.MoveMotor('B', 56);

           case 'downarrow' %BKWD
               disp ('Down Arrow Pressed!');
               brick.MoveMotor('A', -60);
               brick.MoveMotor('B', -56);

           case 'leftarrow' %LEFT
               disp('Left Arrow Pressed!');
               brick.MoveMotor('A', -40);
               brick.MoveMotor('B', 0);

           case 'rightarrow' %RIGHT
               disp ('Right Arrow Pressed!');
               brick.MoveMotor('A', 0);
               brick.MoveMotor('B', -40);

           case 0  % No key is being pressed.
               disp ('No Key Pressed!');
               brick.StopMotor('A');
               brick.StopMotor('B');
               brick.StopMotor('C');

           case 'w' %Crane up
               disp ('W Pressed!');
               brick.MoveMotor('C', 20);

           case 's' %Crane down
               disp ('S Pressed!');
               brick.MoveMotor('C', -20);

           case 'c' %Cool team
               break; %Press "c" to quit.
       end
   end

   CloseKeyboard();
end