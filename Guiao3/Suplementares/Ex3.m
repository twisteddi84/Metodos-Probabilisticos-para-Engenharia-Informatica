%% a)
beta=0.85;
H=[0,1/2,1/2,0,1/4,0;
   1,0,0,0,1/4,0;
   0,0,0,1,1/4,0;
   0,0,1/2,0,1/4,1;
   0,0,0,0,0,0;
   0,1/2,0,0,0,0];
TeleMat=ones(6,6)*1/6;
A=beta*H+(1-beta)*TeleMat;

r0=ones(6,1)*1/6;
old=r0;
new=zeros(6,1);
for i=1:1e10
    new=A*old;
    if abs(new-old)<=1e-5
        break
    end
    old=new;
end
new
%% b)
beta=0.85;
H=[0,1/2,1/2,0,1/4,0;
   1,0,0,0,1/4,0;
   0,0,0,1,1/4,0;
   0,0,1/2,0,1/4,1;
   0,0,0,0,0,0;
   0,1/2,0,0,0,0];
TeleMat=ones(6,6)*1/6;
A=beta*H+(1-beta)*TeleMat;
M=[A-eye(6);
   ones(1,6)];
x=zeros(7,1);
x(end)=1;
r=M\x;
r