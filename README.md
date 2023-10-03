# Code - Active fault-tolerant system design for a rigid spacecraft in the presence of actuator faults and saturation constraints.  

Please refer to the reference: 

Z. Y. Kang, Q. Shen, S. F. Wu and C. Damaren, ‘‘Saturated attitude control of multi-spacecraft systems on SO(3) subject to mixed attitude constraints with arbitrary initial attitude,” IEEE Transactions on Aerospace and Electronic Systems, Accepted, Feb. 2023.

## List of capabilities: 

 - Detect actuator faults in rigid-body attitude control systems
 - Estimate combined actuator faults by using a disturbance observer
 - Design an adaptive controller to compensate actuator fault effects taking into account actuator saturation constraints. 


## Initialization
Ini_SO3.m

## Main 
SO3_model_AIS.slx  模型文件，自适应输入饱和

## Plot the orientation of instruments in 2D and 3D
plot2D.m
plot3D.m  

## Plot the attitude, angular velocity and control input
plotResultSO3v1.m 
plotResultSO3v2.m
