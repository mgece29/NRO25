
%Naloga 1
filename = "C:\Users\MARIJA\Desktop\FAKS\3 letnik\5 semester\NRO25\DN1\domaca_naloga1 (1)\naloga1_1.txt";
delimiterIn = " ";
headerlinesIn=2;
data = importdata(filename, delimiterIn, headerlinesIn);

t = data.data(:, 1);

%Naloga 2
fid = fopen("C:\Users\MARIJA\Desktop\FAKS\3 letnik\5 semester\NRO25\DN1\domaca_naloga1 (1)\naloga1_2.txt");
line = fgetl(fid);

count = 1;
while ~feof(fid)
    line = fgetl(fid);
    P(count) = str2double(line);

    count = count+1;
end
P = P.';

figure(1);

plot(t, P);
title("graf P(t)");
xlabel("t[s]");
ylabel("P[W]");

%Naloga 3
sum = 0;
for index = 1:size(P, 1)
    if index == 1 || index == size(P, 1)
        sum = sum + P(index);
    else
        sum = sum + 2*P(index);
    end
end
step = t(2) - t(1);

integRes = (step/2)*sum;
integResTrapz = trapz(t, P);