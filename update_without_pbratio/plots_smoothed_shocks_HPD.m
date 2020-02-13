%============================================
%SMOOTHED SHOCKS
startDate=datenum('01-06-1997');
endDate = datenum('01-03-2016');
T=72;%sample length

Date=linspace(startDate,endDate,T);



    f=figure;
    f.Name='Counterfactuals';
    f.Units='normalized';
    f.Position=[0 -0.2 1 1];
subplot(3,2,1);
plot(Date,oo_.SmoothedShocks.Mean.epsiA,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiA,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiA,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Productivity','FontSize',15);



subplot(3,2,2);
plot(Date,oo_.SmoothedShocks.Mean.epsiJ,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiJ,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiJ,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Housing Preference','FontSize',15);



subplot(3,2,3);
plot(Date,oo_.SmoothedShocks.Mean.epsiH,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiH,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiH,'--','color','black','lineWidth',1);;
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Housing Price','FontSize',15);

% subplot(5,3,4);
% plot(Date,oo_.SmoothedShocks.Mean.epsiSe,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.epsiSe,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.epsiSe,'--','color','black','lineWidth',1);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('Entrepreneur Risk');

% subplot(5,3,5);
% plot(Date,oo_.SmoothedShocks.Mean.epsiSB,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.epsiSB,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.epsiSB,'--','color','black','lineWidth',1);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('Bank Risk');

subplot(3,2,4);
plot(Date,oo_.SmoothedShocks.Mean.epsiWe,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiWe,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiWe,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Entrepreneur Net Worth','FontSize',15);

% subplot(5,3,7);
% plot(Date,oo_.SmoothedShocks.Mean.epsimarkup_m,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.epsimarkup_m,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.epsimarkup_m,'--','color','black','lineWidth',1);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('Mortgage Lending Mark-up');

% % subplot(5,3,8);
% plot(Date,oo_.SmoothedShocks.Mean.epsimarkup_F,'color','red','lineWidth',2);
% hold on;
 % plot(Date,oo_.SmoothedShocks.HPDinf.epsimarkup_F,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.epsimarkup_F,'--','color','black','lineWidth',1);
% 
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('Corporate Lending Mark-up');

subplot(3,2,5);
plot(Date,oo_.SmoothedShocks.Mean.epsiEC,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiEC,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiEC,'--','color','black','lineWidth',1);

 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Consumption Preference','FontSize',15);

% subplot(5,3,10);
% plot(Date,oo_.SmoothedShocks.Mean.epsiECAB,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.epsiECAB,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.epsiECAB,'--','color','black','lineWidth',1);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('EBank Capital');

% subplot(5,3,11);
% plot(Date,oo_.SmoothedShocks.Mean.epsiLTVH,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.epsiLTVH,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.epsiLTVH,'--','color','black','lineWidth',1);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('HH LTV');

subplot(3,2,6);
plot(Date,oo_.SmoothedShocks.Mean.epsiEbF,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiEbF,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiEbF,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Expected Capital Price','FontSize',15);

fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
% print(fig,'smoothed_shocks','-dpdf');
print(fig,'smoothed_shocks_HPD','-dpdf');
%========================================================================================================================================================================
%========================================================================================================================================================================

%========================================================================================================================================================================





startDate=datenum('01-06-1997');
endDate = datenum('01-03-2016');
T=72;%sample length

Date=linspace(startDate,endDate,T);


    f=figure;
    f.Name='Some Smoothed Variables';
    f.Units='normalized';
    f.Position=[0 -0.2 1 1];
    
    
    def_max=max(oo_.SmoothedVariables.Mean.def_rate_m);
    def_min=min(oo_.SmoothedVariables.Mean.def_rate_m);
    
    subplot(3,1,1);
plot(Date,oo_.SmoothedVariables.Mean.def_rate_m,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.def_rate_m,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.def_rate_m,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Household Default Rate','FontSize',20);
% ylim([def_min def_max]);

    subplot(3,1,2);
plot(Date,oo_.SmoothedVariables.Mean.def_rate_B,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.def_rate_B,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.def_rate_B,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Bank Default Rate','FontSize',20);

   subplot(3,1,3);
plot(Date,oo_.SmoothedVariables.Mean.def_rate_e,'color','red','lineWidth',2);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDinf.def_rate_e,'--','color','black','lineWidth',1);
% hold on;
% plot(Date,oo_.SmoothedShocks.HPDsup.def_rate_e,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Corporate Default Rate','FontSize',20);

% ylim([def_min def_max]);


%    subplot(2,2,3);
%     plot(Date,oo_.SmoothedVariables.Vs,'color','black','lineWidth',5);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('Saver Welfare','FontSize',20);

%   subplot(2,2,4);
%     plot(Date,oo_.SmoothedVariables.Vm,'color','black','lineWidth',5);
%  xlim([startDate endDate])
%  datetick('x','yy','keeplimits');
% title('Borrower Welfare','FontSize',20);


% set(gca,'FontSize',15);
fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,'smoothed_default_rates','-dpdf');






    f=figure;
    f.Name='Counterfactuals';
    f.Units='normalized';
    f.Position=[0 -0.2 1 1];
subplot(3,2,1);
plot(Date,oo_.SmoothedShocks.Mean.epsiA,'color','red','lineWidth',2);
hold on;
plot(Date,oo_.SmoothedShocks.HPDinf.epsiA,'--','color','black','lineWidth',1);
hold on;
plot(Date,oo_.SmoothedShocks.HPDsup.epsiA,'--','color','black','lineWidth',1);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Productivity','FontSize',15)

%VAROBS:
%dy_data,dw_data,dc_data,dinve_data,
%int_rate_HH_data,int_rate_business_data,bank_rate_data,dq_H_data,dbm_data,dbe_data;//,,pb_ratio_data;

%OBSERVABLES
startDate=datenum('01-06-1997');
endDate = datenum('01-03-2016');
T=72;%sample length

Date=linspace(startDate,endDate,T);

    f=figure;
    f.Name='Counterfactuals';
    f.Units='normalized';
    f.Position=[0 -0.2 1 1];
subplot(2,5,1);
plot(Date,oo_.SmoothedVariables.dy_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Output Growth','FontSize',15);

subplot(2,5,2);
plot(Date,oo_.SmoothedVariables.dw_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Wage Growth','FontSize',15);

subplot(2,5,3);
plot(Date,oo_.SmoothedVariables.dc_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Consumption Growth','FontSize',15);

subplot(2,5,4);
plot(Date,oo_.SmoothedVariables.dinve_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Investment Growth','FontSize',15);

subplot(2,5,5);
plot(Date,oo_.SmoothedVariables.int_rate_HH_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Household Interest Rate','FontSize',15);
%int_rate_HH_data,int_rate_business_data,bank_rate_data,dq_H_data,dbm_data,dbe_data;//,,pb_ratio_data;
subplot(2,5,6);
plot(Date,oo_.SmoothedVariables.int_rate_business_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Corporate Interest Rate','FontSize',15);

subplot(2,5,7);
plot(Date,oo_.SmoothedVariables.bank_rate_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Official Bank Rate','FontSize',15);

subplot(2,5,8);
plot(Date,oo_.SmoothedVariables.dq_H_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('House Price Growth','FontSize',15);

subplot(2,5,9);
plot(Date,oo_.SmoothedVariables.dbm_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Mortgage Lending Growth ','FontSize',15);

subplot(2,5,10);
plot(Date,oo_.SmoothedVariables.dbe_data,'color','black','lineWidth',2);
xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Corporate Lending Growth','FontSize',15);




fig = gcf;
fig.PaperPositionMode = 'auto'
fig_pos = fig.PaperPosition;
fig.PaperSize = [fig_pos(3) fig_pos(4)];
print(fig,'dataset','-dpdf');



