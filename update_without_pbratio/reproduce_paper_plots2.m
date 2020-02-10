%TURN OFF zeta_m and zeta_F in estimation block of .mod file before running

clear;clc;%close all;
main;

%shock order : epsiA epsiJ epsiSe epsiSm epsiSB epsiWe epsiWb epsiHd epsiHk 
%variable order: b_m b_e R_m R_F Y_net C

%irf order: irf_length, shock, variable
irf_length=40;
numVar=7;
numShock=9;
irf=nan(irf_length,numShock,numVar);


irf1(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf1(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf1(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf1(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf1(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf1(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf1(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf1(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;




shock_names={'A','J','EC','ECAB','LTVH','We','EbF'};

save irf1.mat irf1;

%  set_zeta_m=  0.6383 ; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
% set_zeta_F= 0.7820; %SS*** Interest rate stickiness,  appears in 51 FOC for bank business lending, 51 is not in use  %60
%  

zeta_m=0.15; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
zeta_F=0.4967; %SS*** Interest rate stickiness,  appears in 51 FOC for bank business lending, 51 is not in use  %60

set_parameter_values_zeta(zeta_m,zeta_F);
dynare LTV1.mod%onlyclearglobals nolog nograph nointeractive;




irf2(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf2(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf2(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf2(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf2(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf2(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf2(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf2(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;





save irf2.mat irf2;

%  set_zeta_m=  0.6383 ; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
% set_zeta_F= 0.7820; %SS*** Interest rate stickiness,  appears in 51 FOC for bank business lending, 51 is not in use  %60
%  
zeta_m=0.7179; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
zeta_F= 0.15; %SS*** Interest rate stickiness,  appears in 51 FOC for bank business lending, 51 is not in use  %60

set_parameter_values_zeta(zeta_m,zeta_F);
dynare LTV1.mod%onlyclearglobals nolog nograph nointeractive;



irf3(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf3(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf3(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf3(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf3(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf3(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf3(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf3(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;




save irf3.mat irf3;
clear;
%====================================================================\
zeta_m=0.15; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
zeta_F= 0.15; %SS*** Interest rate stickiness,  appears in 51 FOC for bank business lending, 51 is not in use  %60

set_parameter_values_zeta(zeta_m,zeta_F);
dynare LTV1.mod%onlyclearglobals nolog nograph nointeractive;




irf4(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf4(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf4(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf4(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf4(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf4(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf4(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf4(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;






save irf4.mat irf4;
clear;
%====================================================================


load irf1.mat;
load irf2.mat;
load irf3.mat;
load irf4.mat;

% irf1=irf1/100;
% irf2=irf2/100;
% irf3=irf3/100;
% irf4=irf4/100;


var_names_plot={'Household Borrowing','Business Borrowing','Household Interest Rate',...
    'Business Interest Rate','Aggegate Output','Aggregate Consumption','House Prices','Aggregate Investment'};
shock_names={'A','J','EC','ECAB','LTVH','We','EbF'};
% shock_names_plot={'TFP (A)','Housing Preference (J)', 'Household Uncertainty Shock (Sm)','Business Net Worth (We)',...
%  'Housing Depreciation Shock (Hd)',...
%     'Capital Depreciation Shock (Hk)' 'Consumption Preference Shock (C)', 'Bank Capital Shock (CAB)'};

shock_names_plot={'TFP (A)',...
    'Housing Preference (J)', ...
    'Consumption Preference (C)',...
    'Bank Capital Shock (CAB)'...,
    'Household LTV (LTVH)',...
    'Business Net Worth (We)',...
    'Expected Asset Price (EbF)'};


%irf order: irf_length, shock, variable
for vv=1:length(shock_names_plot);
    f=figure;
    f.Name=char(shock_names_plot(vv));
    f.Units='normalized';
    f.Position=[0 -0.2 1 1];
    for ss=1:length(var_names_plot);
        subplot(2,4,ss);
       
        plot(-1*irf1(:,vv,ss),'color','black');
        hold on;
          plot(-1*irf2(:,vv,ss),'.-','color','red');
          hold on;
          plot(-1*irf3(:,vv,ss),'--','color','green');
          hold on;
          plot(-1*irf4(:,vv,ss),'color','blue');
          
           title(var_names_plot(ss));
    end
%      set_zeta_m= [0.691226178352873]; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
% set_zeta_F=  [0.447236412060053]; 
    legend('\zeta_m=0.72, \zeta_e=0.5',...
       '\zeta_m=0.15, \zeta_e=0.5',...
        '\zeta_m=0.72, \zeta_e=0.15',...
        '\zeta_m=0.15, \zeta_e=0.15');
        fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,['stickinessNegativeShocks' char(shock_names(vv))],'-dpdf');
end
