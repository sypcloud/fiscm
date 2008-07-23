%% plotfiscm.m
%This m-file retrieves the output from the fiscm.nc file ouputted using
%bio_copepod.f90 and can be used to make plots of the various outputs.

time =nc_varget('fiscm_1.nc', 'time');
status =nc_varget('fiscm_1.nc', 'status');
stage =nc_varget('fiscm_1.nc', 'stage');
pasd =nc_varget('fiscm_1.nc', 'PASD');
T =nc_varget('fiscm_1.nc', 'T');
N =nc_varget('fiscm_1.nc', 'N');
diapause =nc_varget('fiscm_1.nc', 'diapause');


figure
hold on
plot(time,stage);
plot(time,pasd, 'm');
title('Stage development over time for C. finmarchicus at -2 C');
xlabel('time (days)');
ylabel('stage');
legend('iStage', 'PASD', 'Location', 'SouthEast');

%temperature was constant. In degrees C, temperature= (see ans=)
T(1,1)