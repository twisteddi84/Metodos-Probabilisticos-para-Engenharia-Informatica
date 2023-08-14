T=[0.8,0,0.3,0,0; 0.2,0.6,0.2,0,0; 0,0.1,0.4,0,0; 0,0.3,0,1,0; 0,0,0.1,0,1];

%% a)
N=1e4;
ini_lst=[1,2,4];
for ini=1:3
    step_lst=zeros(1,N);
    for iter=1:N
        step_lst(iter)=(length(crawl(T,ini,[4,5]))-1);
    end
    av=sum(step_lst)/N;
    ini_lst(ini)
    av
end

%% b)
N=1e4;
ini_lst=[1,2,4];
num_3=0;
num_5=0;
for iter=1:N
    path=crawl(T,1,[4,5]);
    if path(end)==4
        num_3=num_3+1;
    else
        num_5=num_5+1;
    end
end
avg_3=num_3/N;
avg_5=num_5/N;
avg_3
avg_5