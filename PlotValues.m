function PlotValues()
    figure
    %Custom points to loglog
    x = [50,100,250,500,750,1000,2500,5000,10000,25000,50000];
    y = [3.540505,5.379697,8.601616,14.371212,17.755455,26.494949,49.201111,84.977273,133.484747,301.328889,512.531212];
    %Function
    func = @(x) (2/3)*(x-4.605) + 1.6826;
    domain = [log(50),log(50000)];
    range = func(domain);
    %Plot both
    plot(log(x),log(y),'r.-');
    hold on;
    plot(domain,range);
    %Configure the plot
    ax = gca;
    ax.FontSize = 20;
    yText = ylabel('$\log(\sigma_{2,n})$');
    set(yText,'Interpreter','latex');
    xText = xlabel('$\log(n)$');
    set(xText,'Interpreter','latex');
    xlim([3 11]);
    ylim([1 6.5]);
    print -depsc2 myplot.eps
end