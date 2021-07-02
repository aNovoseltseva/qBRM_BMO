% List connected devices
a=motor.listdevices;   
LP_ill = '55001048';
LP_det = '55001045';
XY_controller = '73109054';

%create motor objects
[motor_x, motor_y] = motor_init(XY_controller);
motor_x.MoveTo(45, 60000);
motor_y.MoveTo(45, 60000);

motor_x.StopPolling()
motor_x.Disconnect()

motor_y.StopPolling()
motor_y.Disconnect()

% motor_ill = rotat_stage_init(LP_ill);
% motor_ill.MoveTo(45, 60000);
motor_ill.StopPolling()
motor_ill.Disconnect()
