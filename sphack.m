a=dlmread('walk.csv','',2,0);
ay=a(:,2);
fs=1/0.005;
ft=1/fs;
l=rows(a);
t = (0:l-1)*ft;
y=fft(ay);
p21=abs(y/l);
p11=p21(1:l/2+1);
p11(2:end-1)=2*p11(2:end-1);
f1=fs*(0:(l/2))/l;
%subplot(1,2,1);
%graph1=plot(f,p1);

b=dlmread('run.csv','',2,0);
by=b(:,2);
fs=1/0.005;
ft=1/fs;
l=rows(b);
t = (0:l-1)*ft;
y=fft(by);
p22=abs(y/l);
p12=p22(1:l/2+1);
p12(2:end-1)=2*p12(2:end-1);
f2=fs*(0:(l/2))/l;
%subplot(1,2,2);
%graph2=plot(f,p1);

c=dlmread('newjump.csv','',2,0);
cy=c(:,2);
fs=1/0.005;
ft=1/fs;
l=rows(c);
t = (0:l-1)*ft;
y=fft(cy);
p23=abs(y/l);
p13=p23(1:l/2+1);
p13(2:end-1)=2*p13(2:end-1);
f3=fs*(0:(l/2))/l;

d=dlmread('newclimb.csv','',1,0);
dy=d(:,1);
fs=1/0.005;
ft=1/fs;
l=rows(d);
t = (0:l-1)*ft;
y=fft(dy);
p24=abs(y/l);
p14=p24(1:l/2+1);
p14(2:end-1)=2*p14(2:end-1);
f4=fs*(0:(l/2))/l;

figure, hold on 

graph1=plot(f1,p11);
set(graph1,'Color','r');
%legend(graph1,'Walk');

graph2=plot(f2,p12);
set(graph2,'Color','b');
%legend(graph2,'Run');

graph3=plot(f3,p13);
set(graph3,'Color','y');
%legend(graph3,'Jump');

graph4=plot(f4,p14);
set(graph1,'Color','black');

hold off
%set(graph1,'Color','r');
%set(graph2,'Color','b');
%set(graph3,'Color','y');
%legend(graph1,graph2, {'walk','run'})