unnamed(:,1)=[]; %deletes unused column
 
bins=ceil(linspace(1,length(unnamed),101)); %gives bin edges for 100 bins
%bin 1 has edges 1 through bins(2). bin2 has edges bin(2) through bin(3)
%bin 100 has edges (bin(100) thorugh bin(101)
 
for i = 1:99
  BinnedData(i)=mean(unnamed(bins(i):(bins(i+1)-1)));
end
 
BinnedData(100)=mean(unnamed(bins(end-1):bins(end)))