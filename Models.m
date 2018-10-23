
function [xmean,zmean,meanfreq] = Models()

xmean=zeros(1,7);
zmean=zeros(1,7);
meanfreq = zeros(3,7);
meanfreq_X = zeros(1,7);
meanfreq_Y = zeros(1,7);
meanfreq_Z = zeros(1,7);
maxfreq_x=zeros(1,15);
maxfreq_y=zeros(1,15);
maxfreq_z=zeros(1,15);


% MODEL Data 1
folder = 'Pour_water_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata(:,1,j) = x(:,j);
    personaldata(:,2,j) = y(:,j);
    personaldata(:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(1) = sumx/(15*length(x));
zmean(1) = suMx/(15*length(z));
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(1) = mean(maxfreq_x);
meanfreq_Y(1) = mean(maxfreq_y);
meanfreq_Z(1) = mean(maxfreq_z);



% MODEL Data 2
folder = 'Walk_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata (:,1,j) = x(:,j);
    personaldata (:,2,j) = y(:,j);
    personaldata (:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(2) = sumx/(15*length(x));
zmean(2) = suMx/(15*length(z));
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(2) = mean(maxfreq_x);
meanfreq_Y(2) = mean(maxfreq_y);
meanfreq_Z(2) = mean(maxfreq_z);





% MODEL Data 3
folder = 'Standup_chair_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata (:,1,j) = x(:,j);
    personaldata (:,2,j) = y(:,j);
    personaldata (:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(3) = sumx/(15*length(x));
zmean(3) = suMx/(15*length(z));
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(3) = mean(maxfreq_x);
meanfreq_Y(3) = mean(maxfreq_y);
meanfreq_Z(3) = mean(maxfreq_z);




% MODEL Data 4
folder = 'Sitdown_chair_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata (:,1,j) = x(:,j);
    personaldata (:,2,j) = y(:,j);
    personaldata (:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(4) = sumx/(15*length(x));
zmean(4) = suMx/(15*length(z));
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(4) = mean(maxfreq_x);
meanfreq_Y(4) = mean(maxfreq_y);
meanfreq_Z(4) = mean(maxfreq_z);


% MODEL Data 5
folder = 'Getup_bed_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata (:,1,j) = x(:,j);
    personaldata (:,2,j) = y(:,j);
    personaldata (:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(5) = sumx/(15*length(x));
zmean(5) = suMx/(15*length(z));
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(5) = mean(maxfreq_x);
meanfreq_Y(5) = mean(maxfreq_y);
meanfreq_Z(5) = mean(maxfreq_z);




% MODEL Data 6
folder = 'Drink_glass_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata (:,1,j) = x(:,j);
    personaldata (:,2,j) = y(:,j);
    personaldata (:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(6) = sumx/(15*length(x));
zmean(6) = suMx/(15*length(z));
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(6) = mean(maxfreq_x);
meanfreq_Y(6) = mean(maxfreq_y);
meanfreq_Z(6) = mean(maxfreq_z);




% MODEL Data 7
folder = 'Climb_stairs_MODEL/';
[x ,y, z, N] = displayModel(folder);
personaldata = zeros(length(x) ,3, 15);
for j = 1:15
    personaldata (:,1,j) = x(:,j);
    personaldata (:,2,j) = y(:,j);
    personaldata (:,3,j) = z(:,j);
end
sumx=0;
suMx=0;
for j = 1:15
    for len = 1:length(x)
        sumx = sumx + x(len,j);
        suMx = suMx + z(len,j);
    end
end
xmean(7) = sumx/(15*length(x))
zmean(7) = suMx/(15*length(z))
for q = 1:15
    fft_x = abs(fftshift(fft(personaldata(:,1,q))));
    fft_y = abs(fftshift(fft(personaldata(:,2,q))));
    fft_z = abs(fftshift(fft(personaldata(:,3,q))));
    
    [Mx Ix]=max(fft_x);
    [My Iy]=max(fft_y);
    [Mz Iz]=max(fft_z);
    maxfreq_x(q)=Ix;
    maxfreq_y(q)=Iy;
    maxfreq_z(q)=Iz;
end
meanfreq_X(7) = mean(maxfreq_x);
meanfreq_Y(7) = mean(maxfreq_y);
meanfreq_Z(7) = mean(maxfreq_z);


meanfreq(1,:)=meanfreq_X;
meanfreq(2,:)=meanfreq_Y;
meanfreq(3,:)=meanfreq_Z
end
