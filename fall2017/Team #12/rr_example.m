robot = RobotRaconteur.Connect('tcp://localhost:10001/dobotRR/dobotController');

start_angles = int16( [0 0 0  0] );
robot.setJointPositions(start_angles(1),start_angles(2),start_angles(3),start_angles(4));
pause(1);

for i=-10:1:10
    start_angles = int16( [i 45 20  0] )
    robot.setJointPositions(start_angles(1),start_angles(2),start_angles(3),start_angles(4));
    pause(1);
end


% % % 
% % % disp 'Going into twitch loop'
% % % a = 0; b = 20;
% % % for i=1:1:10
% % %     delta_r = int16(((b-a).*rand(4,1) + [a; a; a; a]));
% % %     new_angles = int16(delta_r' + start_angles);
% % %     %new_angles = int16([10 0 0 0])
% % %     robot.setJointPositions(new_angles(1),new_angles(2),new_angles(3),new_angles(4));
% % %     pause(1);
% % %     robot.getJointPositions()
% % %     pause(2);
% % % end