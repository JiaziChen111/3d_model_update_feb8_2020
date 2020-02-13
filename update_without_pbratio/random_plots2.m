startDate=datenum('01-06-1997');
endDate = datenum('01-03-2016');
T=72;%sample length

Date=linspace(startDate,endDate,T);


    f=figure;
    f.Name='Counterfactuals';
    f.Units='normalized';
    f.Position=[0 -0.2 1 0.5];
    
    
    def_max=max(oo_.SmoothedVariables.def_rate_m);
    def_min=min(oo_.SmoothedVariables.def_rate_m);
    
    subplot(1,3,1);
    plot(Date,oo_.SmoothedVariables.def_rate_m,'color','black','lineWidth',5);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Household Default Rate','FontSize',20);
% ylim([def_min def_max]);

    subplot(1,3,2);
    plot(Date,oo_.SmoothedVariables.def_rate_B,'color','black','lineWidth',5);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Bank Default Rate','FontSize',20);

   subplot(1,3,3);
    plot(Date,oo_.SmoothedVariables.def_rate_e,'color','black','lineWidth',5);
 xlim([startDate endDate])
 datetick('x','yy','keeplimits');
title('Corporate Default Rate','FontSize',20);
ylim([-0.0001 0.01]);


% ax = gca;
% ax.FontSize = 16; 
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