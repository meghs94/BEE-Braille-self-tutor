[y1,fs]=wavread('a3.wav');
[y2,fs]=wavread('ba.wav');
[y3,fs]=wavread('da.wav');
[y4,fs]=wavread('e.wav');
[y5,fs]=wavread('ga.wav');
[y6,fs]=wavread('ha.wav');
[y7,fs]=wavread('i.wav');
[y8,fs]=wavread('ja.wav');
[y9,fs]=wavread('ka.wav');
[y10,fs]=wavread('la.wav');
[y11,fs]=wavread('ma.wav');
[y12,fs]=wavread('na.wav');
[y13,fs]=wavread('o.wav');
[y14,fs]=wavread('pa.wav');
[y15,fs]=wavread('ra.wav');
[y16,fs]=wavread('sa.wav');
[y17,fs]=wavread('tha.wav');
[y18,fs]=wavread('u1.wav');
[y19,fs]=wavread('va.wav');
[y20,fs]=wavread('ya.wav');
[y21,fs]=wavread('kha.wav');
[y22,fs]=wavread('gha.wav');
[y23,fs]=wavread('jha.wav');
[y24,fs]=wavread('da1.wav');
[y25,fs]=wavread('fa.wav');
[y26,fs]=wavread('bha.wav');
[y27,fs]=wavread('sha.wav');
[y28,fs]=wavread('cha.wav');
[y29,fs]=audioread('alphabet.mp3');
[y30,fs]=audioread('is.mp3');
[y31,fs]=audioread('correct.mp3');
[y32,fs]=audioread('incorrect.mp3');
[y33,fs]=audioread('0.mp3');
[y34,fs]=audioread('1.mp3');
[y35,fs]=audioread('2.mp3');
[y36,fs]=audioread('3.mp3');
[y37,fs]=audioread('4.mp3');
[y38,fs]=audioread('5.mp3');
[y39,fs]=audioread('6.mp3');
[y40,fs]=audioread('7.mp3');
[y41,fs]=audioread('8.mp3');
[y42,fs]=audioread('9.mp3');
x=[0;0];
pt=[0];
i=1;
j=1;
lex = {'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';'0';'1';'2';'3';'4';'5';'6';'7';'8';'9'};
lh={'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'k';'g';'c';'j';'t';'d';'p';'b';'s'};
a='alphabetiss';

x =[x(:,1);y29(:,1)];
sound(x,fs)

x =[x(:,1);y30(:,1)];
sound(x,fs)


len=length(a);
a(len+1)=0;
while(j<=len)
  if((a(i)~='h')&&(a(i+1)=='h')&&((a(i)=='g')||(a(i)=='k')||(a(i)=='c')||(a(i)=='j')||(a(i)=='t')||(a(i)=='d')||(a(i)=='p')||(a(i)=='b')||(a(i)=='s')))
     pt(i) = strmatch(a(i),lh(:,1),'exact');
     j=j+2;
     i=i+1;
  else
    pt(i) = strmatch(a(i),lex(:,1),'exact');
    i=i+1;
    j=j+1;
  end
end
i=1;
l=length(pt);
for(i=1:l)
switch pt(i)
      case 1
         x=[x(:,1);y1(:,1)];
      case 2
         x=[x(:,1);y2(:,1)];
         %break
      case 4
         x=[x(:,1);y3(:,1)];
         %break
      case 5
         x=[x(:,1);y4(:,1)];
         %break
      case 7
         x=[x(:,1);y5(:,1)];
      case 8
        % x=[x(:,1);y6(:,1)];
      case 9
         x=[x(:,1);y7(:,1)];
      case 10
         x=[x(:,1);y8(:,1)];
      case 11
         x=[x(:,1);y9(:,1)];
      case 12
         x=[x(:,1);y10(:,1)];
      case 13
         x=[x(:,1);y11(:,1)];
      case 14
         x=[x(:,1);y12(:,1)];
         %break
      case 15
         x=[x(:,1);y13(:,1)];
         %break
      case 16
         x=[x(:,1);y14(:,1)];
         %break
      case 18
         x=[x(:,1);y15(:,1)];
      case 19
         x=[x(:,1);y16(:,1)];
      case 20
         x=[x(:,1);y17(:,1)];
      case 21
         x=[x(:,1);y18(:,1)];
      case 22
         x=[x(:,1);y19(:,1)];
      case 25
         x=[x(:,1);y20(:,1)];
      case 27
         x=[x(:,1);y21(:,1)];
         %break
      case 28
         x=[x(:,1);y22(:,1)];
         %break
      case 29
         x=[x(:,1);y28(:,1)];
      case 30
         x=[x(:,1);y23(:,1)];
      case 32
         x=[x(:,1);y24(:,1)];
      case 33
         x=[x(:,1);y25(:,1)];
      case 34
         x=[x(:,1);y26(:,1)];
      case 35
         x=[x(:,1);y27(:,1)];

end

end
%sound(x,fs);

pause(3);
[x1,st] = sample();

for i=1:5000
end

st
sound(x1,fs);
alpha=input('Enter value','s');

if(alpha==st)
    disp('CORRECT');
    %y=correct();
    %sound(y,fs);
     x=[0;0];
     x=[x(:,1);y31(:,1)];
     sound(x,fs)
else
    disp('INCORRECT');
    %y=incorrect();
    %sound(y,fs);
     x=[0;0];
     x=[x(:,1);y32(:,1)];
     sound(x,fs)
end