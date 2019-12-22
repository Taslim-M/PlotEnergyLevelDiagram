gap=0.1

totalNumberOfSheets = 6
barWidth =1

 for i=0:1:totalNumberOfSheets
     %read in Data to num, for total number of sheets available in Excel
    num=xlsread('graphData.xlsm',['Sheet',int2str(i+1)])
        %Plot black lines
        for k=1:1:length(num)
            plot(i+gap:i+barWidth+gap,[num(k),num(k)],'k')
           hold on
        end
        %adjust gaps
		gap=gap+0.1
end
