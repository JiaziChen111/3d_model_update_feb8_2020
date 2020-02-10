%TURN OFF zeta_m and zeta_F in estimation block of .mod file before running

clear;clc;%close all;
%===============================================================================================================
 Cyphi_H=0;Cyphi_F=0;phi_Hs=0.11;phi_Fs=0.11;phis=0.11;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
%Cyphi_H=0;Cyphi_F=0;phi_Hs=0.11;phi_Fs=0.11;phis=0.11;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
zeta_m=0.7179; %SS**
zeta_F=0.4967 ;
%===============================================================================================================
set_parameter_values_counterfactual( Cyphi_H,Cyphi_F,phi_Hs,phi_Fs,phis,epsilonH1s,epsilonF1s,LTVHrule,LTVFrule,zeta_m,zeta_F)

dynare LTV1.mod noclearall;
irf_length=40;
numVar=7;
numShock=9;
%irf=nan(irf_length,numShock,numVar);

irf1(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf1(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf1(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf1(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf1(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf1(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf1(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf1(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;


save irf1.mat irf1;

%===============================================================================================================
 Cyphi_H=0.1;Cyphi_F=0.1;phi_Hs=0.11;phi_Fs=0.11;phis=0.11;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;

% Cyphi_H=0;Cyphi_F=0;phi_Hs=0.11;0;phi_Fs=0.11;0;phis=0.11;epsilonH1s=0.9;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
%Cyphi_H=0.4;Cyphi_F=0;phi_Hs=0.11;0;phi_Fs=0.11;0;phis=0.11;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
zeta_m=0.7179; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
zeta_F=0.4967 ; %SS*** Interest rate stickiness,  appears in 51 FOC for bank business lending, 51 is not in use  %60
 %===============================================================================================================
set_parameter_values_counterfactual( Cyphi_H,Cyphi_F,phi_Hs,phi_Fs,phis,epsilonH1s,epsilonF1s,LTVHrule,LTVFrule,zeta_m,zeta_F)
dynare LTV1.mod noclearall;%onlyclearglobals nolog nograph nointeractive;

irf2(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf2(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf2(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf2(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf2(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf2(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf2(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf2(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;


save irf2.mat irf2;


%===============================================================================================================
Cyphi_H=0;Cyphi_F=0;phi_Hs=0.11;phi_Fs=0.11;phis=0.11;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
 zeta_m=0.15; 
zeta_F=0.15;
%===============================================================================================================
set_parameter_values_counterfactual( Cyphi_H,Cyphi_F,phi_Hs,phi_Fs,phis,epsilonH1s,epsilonF1s,LTVHrule,LTVFrule,zeta_m,zeta_F)
dynare LTV1.mod noclearall;


irf3(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf3(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf3(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf3(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf3(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf3(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf3(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf3(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;


save irf3.mat irf3;

%===============================================================================================================
%Cyphi_H=0;Cyphi_F=0;phi_Hs=0.11;phi_Fs=0.11;phis=0;epsilonH1s=0.9;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
% Cyphi_H=0.4;Cyphi_F=0.4;phi_Hs=0.11;phi_Fs=0.11;phis=0.11;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
 Cyphi_H=0.1;Cyphi_F=0.1;phi_Hs=0.11;0;phi_Fs=0.11;0;phis=0;epsilonH1s=0.86;epsilonF1s=0.86;LTVHrule=0;LTVFrule=0;
zeta_m=0.15; 
zeta_F=0.15;
%===============================================================================================================
set_parameter_values_counterfactual( Cyphi_H,Cyphi_F,phi_Hs,phi_Fs,phis,epsilonH1s,epsilonF1s,LTVHrule,LTVFrule,zeta_m,zeta_F)
dynare LTV1.mod noclearall;


irf4(:,:,1)=[b_m_obs_epsiA b_m_obs_epsiJ b_m_obs_epsiEC b_m_obs_epsiECAB b_m_obs_epsiLTVH b_m_obs_epsiWe b_m_obs_epsiEbF] ;
irf4(:,:,2)=[b_e_obs_epsiA b_e_obs_epsiJ b_e_obs_epsiEC b_e_obs_epsiECAB b_e_obs_epsiLTVH b_e_obs_epsiWe b_e_obs_epsiEbF] ;
irf4(:,:,3)=[R_m_obs_epsiA R_m_obs_epsiJ R_m_obs_epsiEC R_m_obs_epsiECAB R_m_obs_epsiLTVH R_m_obs_epsiWe R_m_obs_epsiEbF] ;
irf4(:,:,4)=[R_F_obs_epsiA R_F_obs_epsiJ R_F_obs_epsiEC R_F_obs_epsiECAB R_F_obs_epsiLTVH R_F_obs_epsiWe R_F_obs_epsiEbF] ;
irf4(:,:,5)=[Y_net_obs_epsiA Y_net_obs_epsiJ Y_net_obs_epsiEC Y_net_obs_epsiECAB Y_net_obs_epsiLTVH Y_net_obs_epsiWe Y_net_obs_epsiEbF] ;
irf4(:,:,6)=[C_obs_epsiA C_obs_epsiJ C_obs_epsiEC C_obs_epsiECAB C_obs_epsiLTVH C_obs_epsiWe C_obs_epsiEbF] ;
irf4(:,:,7)=[q_H_obs_epsiA q_H_obs_epsiJ q_H_obs_epsiEC q_H_obs_epsiECAB q_H_obs_epsiLTVH q_H_obs_epsiWe q_H_obs_epsiEbF] ;
irf4(:,:,8)=[I_obs_epsiA I_obs_epsiJ I_obs_epsiEC I_obs_epsiECAB I_obs_epsiLTVH I_obs_epsiWe I_obs_epsiEbF] ;



save irf4.mat irf4;



%====================================================================
clear;

load irf1.mat;
load irf2.mat;
load irf3.mat;
load irf4.mat;

% irf1=irf1/100;
% irf2=irf2/100;
% irf3=irf3/100;
% irf4=irf4/100;

var_names_plot={'Mortgage Lending','Corporate Lending','Household Interest Rate',...
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
for vv=1:length(shock_names);
% for vv=1:2;
    f=figure;
    f.Name=char(shock_names_plot(vv));
    f.Units='normalized';
    f.Position=[0.2 0.2 1 0.5];
%     for ss=1:length(var_names);
    for ss=1:2;
        subplot(1,2,ss);      

plot(irf1(:,vv,ss),'color','black');
        hold on;
          plot(irf2(:,vv,ss),'.-','color','red');
          hold on;
          plot(irf3(:,vv,ss),'--','color','green');
          hold on;
          plot(irf4(:,vv,ss),'color','blue');
          
           title(var_names_plot(ss));
           
                   if ss==1
            legend('Estimated Stickiness, No CCyB',...
        'Estimated Stickiness, with CCyB',...
        'Low Stickiness, No CcyB',...
        'Low Stickiness, with CCyB');

%             legend('Estimated Stickiness, LTV=0.86',...
%         'Estimated Stickiness, LTV=0.8',...
%         'Low Stickiness, LTV=0.86',...
%         'Low Stickiness, LTV=0.8');

%             legend('Estimated Stickiness, CAR=11%',...
%         'Estimated Stickiness, CAR=15%',...
%         'Low Stickiness, CAR=11%',...
%         'Low Stickiness, CAR=15%');

        end
           
    end
%      set_zeta_m= [0.691226178352873]; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
% set_zeta_F=  [0.447236412060053]; 

        fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,['stickiness_CAR' char(shock_names(vv))],'-dpdf');
end

%1&2 with stickiness 
%3&4 without stickiness 
%irf order: irf_length, shock, variable
%bm=1,be=2,hd=4,ecab=5

irf1_cumsum=cumsum(irf1);
irf2_cumsum=cumsum(irf2);
irf3_cumsum=cumsum(irf3);
irf4_cumsum=cumsum(irf4);

diff_sticky=cumsum(abs(irf1-irf2));
diff_nosticky=cumsum(abs(irf3-irf4));

% %irf order: irf_length, shock, variable
% for vv=1:length(shock_names);
% % for vv=1:2;
%     f=figure;
%     f.Name=char(shock_names_plot(vv));
%     f.Units='normalized';
%     f.Position=[0.2 0.2 1 0.5];
% %     for ss=1:length(var_names);
% for ss=1:2
%           subplot(1,2,ss);      
% 
% plot(irf1_cumsum(:,vv,ss),'color','black');
%         hold on;
%           plot(irf2_cumsum(:,vv,ss),'.-','color','red');
%           hold on;
%           plot(irf3_cumsum(:,vv,ss),'--','color','green');
%           hold on;
%           plot(irf4_cumsum(:,vv,ss),'color','blue');
%           
%            title(var_names_plot(ss));
%            
%                    if ss==1
% %             legend('Estimated Stickiness, No CCyB',...
% %         'Estimated Stickiness, with CCyB',...
% %         'Low Stickiness, No CcyB',...
% %         'Low Stickiness, with CCyB');
% 
% %             legend('Estimated Stickiness, LTV=0.86',...
% %         'Estimated Stickiness, LTV=0.9',...
% %         'Low Stickiness, LTV=0.86',...
% %         'Low Stickiness, LTV=0.9');
% 
%             legend('Estimated Stickiness, Low CAR',...
%         'Estimated Stickiness, High CAR',...
%         'Low Stickiness, Low CAR',...
%         'Low Stickiness, High CAR');
% 
%         end
%            
%     end
% %      set_zeta_m= [0.691226178352873]; %SS***  Interest rate stickiness, same as below, appears in  R_m R_F %59
% % set_zeta_F=  [0.447236412060053]; 
% 
%         fig = gcf;
% fig.PaperPositionMode = 'auto'
% fig_pos = fig.PaperPosition;
% fig.PaperSize = [fig_pos(3) fig_pos(4)];
% print(fig,['stickiness_cumul_CAR' char(shock_names(vv))],'-dpdf');
% end

% diff_sticky=abs(irf1_cumsum-irf2_cumsum);
% diff_nosticky=abs(irf3_cumsum-irf4_cumsum);
b_m_J=[-diff_sticky(end,2,1)+diff_nosticky(end,2,1)]
b_e_J=[-diff_sticky(end,2,2)+diff_nosticky(end,2,2)]

b_m_C=[-diff_sticky(end,3,1)+diff_nosticky(end,3,1)]
b_e_C=[-diff_sticky(end,3,2)+diff_nosticky(end,3,2)]


b_m_CAB=[-diff_sticky(end,4,1)+diff_nosticky(end,4,1)]
b_e_CAB=[-diff_sticky(end,4,2)+diff_nosticky(end,4,2)]

b_m_LTVH=[-diff_sticky(end,5,1)+diff_nosticky(end,5,1)]
b_e_LTVH=[-diff_sticky(end,5,2)+diff_nosticky(end,5,2)]

b_m_We=[-diff_sticky(end,6,1)+diff_nosticky(end,6,1)]
b_e_We=[-diff_sticky(end,6,2)+diff_nosticky(end,6,2)]

b_m_EbF=[-diff_sticky(end,7,1)+diff_nosticky(end,7,1)]
b_e_EbF=[-diff_sticky(end,7,2)+diff_nosticky(end,7,2)]
