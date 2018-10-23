function [ ] = TestInput( trial )
%   trial = 'Pour_water\Accelerometer-2012-05-29-17-10-30-pour_water-m3.txt';
[x, y, z]=displayTrial(trial);
xsum=0;
zsum=0;
for i=1:length(x)
    xsum=xsum+x(1,i);
    zsum=zsum+z(1,i);
end
xmeantest=xsum/length(x);
zmeantest=zsum/length(x);
[maxtestpeak Xmaxtestindex]=max(abs(fftshift(fft(x))));
[maxtestpeak Ymaxtestindex]=max(abs(fftshift(fft(y))));
[maxtestpeak Zmaxtestindex]=max(abs(fftshift(fft(z))));

Diff=zeros(5,7);
Binarymatrix=zeros(5,7);


[avg_x, avg_z, avg_Freq_Pos] = Models( )

for i=1:7
   Diff(1,i)=abs(xmeantest)-abs(avg_x(1,i));
   Diff(2,i)=abs(zmeantest)-abs(avg_z(1,i));
   Diff(3,i)=Xmaxtestindex-avg_Freq_Pos(1,i);
   Diff(4,i)=Ymaxtestindex-avg_Freq_Pos(2,i);
   Diff(5,i)=Zmaxtestindex-avg_Freq_Pos(3,i);
   
end

[xmin tmp]=min(abs(Diff)');

for i=1:5
    Binarymatrix(i,tmp(i))=1;
end

A=sum(Binarymatrix);

[output outputindex]=max(A);

strng={'Pour Water','Walk_MODEL','Standup_chair_MODEL','Sitdown_chair_MODEL','Getup_bed_MODEL','Drink_glass_MODEL','Climb_stairs_MODEL'};
fprintf('%d percent chance is that the input is from:',(output/5)*100);
disp(strng(outputindex));
end