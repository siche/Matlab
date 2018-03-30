message=['sig_num=',num2str(sig_num),...
	 '\n conv_num=',num2str(conv_num),...
	 '\n sig_size=',num2str(sig_size),...
     '\n frames=',num2str(i)];
% mail2me('sichecmm@sjtu.edu.cn','Result of 20180206',...
%    'Running result','result.mat');

time=datestr(datetime);
time=time(end-7:end);
time=time(time~=':');
time=time(1:end-2);
zipfile=['result',time];
save result.mat *
mfile=[mfilename,'.m'];
zip(zipfile,{mfile,'result.mat','result'});
% mail2me('sichecmm@sjtu.edu.cn',[zipfile,'.zip']);