
[y1,fs]=audioread('Aa.wav');
[y2,fs]=audioread('Bb.wav');
[y3,fs]=audioread('Cc.wav');
[y4,fs]=audioread('Dd.wav');
[y5,fs]=audioread('Ee.wav');
[y6,fs]=audioread('Ff.wav');
[y7,fs]=audioread('Gg.wav');
[y8,fs]=audioread('Hh.wav');
[y9,fs]=audioread('Ii.wav');
[y10,fs]=audioread('Jj.wav');
[y11,fs]=audioread('Kk.wav');
[y12,fs]=audioread('Ll.wav');
[y13,fs]=audioread('Mm.wav');
[y14,fs]=audioread('Nn.wav');
[y15,fs]=audioread('Oo.wav');
[y16,fs]=audioread('Pp.wav');
[y17,fs]=audioread('Qq.wav');
[y18,fs]=audioread('Rr.wav');
[y19,fs]=audioread('Ss.wav');
[y20,fs]=audioread('Tt.wav');
[y21,fs]=audioread('Uu.wav');
[y22,fs]=audioread('Vv.wav');
[y23,fs]=audioread('Ww.wav');
[y24,fs]=audioread('Xx.wav');
[y25,fs]=audioread('Yy.wav');
[y26,fs]=audioread('Zz.wav');
[y27,fs]=audioread('0.mp3');
[y28,fs]=audioread('1.mp3');
[y29,fs]=audioread('2.mp3');
[y30,fs]=audioread('3.mp3');
[y31,fs]=audioread('4.mp3');
[y32,fs]=audioread('5.mp3');
[y33,fs]=audioread('6.mp3');
[y34,fs]=audioread('7.mp3');
[y35,fs]=audioread('8.mp3');
[y36,fs]=audioread('9.mp3');
%[y27,fs]=audioread('sha.wav');
%[y28,fs]=audioread('C.wav');
for i=1:26

x1=[0;0];
pt1=[0];
i=1;
j=1;
lex = {'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';'0';'1';'2';'3';'4';'5';'6';'7';'8';'9'};
% lh={'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'k';'g';'c';'j';'t';'d';'p';'b';'s'};



%symbols = ['a':'z'];
%MAX_ST_LENGTH = 1;
%stLength = randi(MAX_ST_LENGTH);
%nums = randi(numel(symbols),[1 stLength]);
%st = symbols (nums);
st = input('Enter alphabet','s');
a = st;

len=length(a);
a(len+1)=0;
while(j<=len)
    %if((a(i)~='h')&&(a(i+1)=='h')&&((a(i)=='g')||(a(i)=='k')||(a(i)=='c')||(a(i)=='j')||(a(i)=='t')||(a(i)=='d')||(a(i)=='p')||(a(i)=='b')||(a(i)=='s')))
    % pt1(i) = strmatch(a(i),lh(:,1),'exact');
    % j=j+2;
    % i=i+1;
    %else
    pt1(i) = strmatch(a(i),lex(:,1),'exact');
    i=i+1;
    j=j+1;
  %end
end
i=1;
l=length(pt1);
for(i=1:l)
switch pt1(i)
      case 1
         x1=[x1(:,1);y1(:,1)];
      case 2
         x1=[x1(:,1);y2(:,1)];
         %break
      case 3
         x1=[x1(:,1);y3(:,1)];
         %break
      case 4
         x1=[x1(:,1);y4(:,1)];
         %break
      case 5
         x1=[x1(:,1);y5(:,1)];
      case 6
         x1=[x1(:,1);y6(:,1)];
      case 7
         x1=[x1(:,1);y7(:,1)];
      case 8
         x1=[x1(:,1);y8(:,1)];
      case 9
         x1=[x1(:,1);y9(:,1)];
      case 10
         x1=[x1(:,1);y10(:,1)];
      case 11
         x1=[x1(:,1);y11(:,1)];
      case 12
         x1=[x1(:,1);y12(:,1)];
         %break
      case 13
         x1=[x1(:,1);y13(:,1)];
         %break
      case 14
         x1=[x1(:,1);y14(:,1)];
         %break
      case 15
         x1=[x1(:,1);y15(:,1)];
      case 16
         x1=[x1(:,1);y16(:,1)];
      case 17
         x1=[x1(:,1);y17(:,1)];
      case 18
         x1=[x1(:,1);y18(:,1)];
      case 19
         x1=[x1(:,1);y19(:,1)];
      case 20
         x1=[x1(:,1);y20(:,1)];
      case 21
         x1=[x1(:,1);y21(:,1)];
         %break
      case 22
         x1=[x1(:,1);y22(:,1)];
         %break
      case 23
         x1=[x1(:,1);y23(:,1)];
      case 24
         x1=[x1(:,1);y24(:,1)];
      case 25
         x1=[x1(:,1);y25(:,1)];
      case 26
         x1=[x1(:,1);y26(:,1)];
      case 27
         x1=[x1(:,1);y27(:,1)];
      case 28
         x1=[x1(:,1);y28(:,1)];
      case 29
         x1=[x1(:,1);y29(:,1)];
      case 30
         x1=[x1(:,1);y30(:,1)];
      case 31
         x1=[x1(:,1);y31(:,1)];
      case 32
         x1=[x1(:,1);y32(:,1)];
      case 33
         x1=[x1(:,1);y33(:,1)];
      case 34
         x1=[x1(:,1);y34(:,1)];
      case 35
         x1=[x1(:,1);y35(:,1)];
      case 36
         x1=[x1(:,1);y36(:,1)];
         
      %case 34
       %  x1=[x1(:,1);y26(:,1)];
      %case 35
       %  x1=[x1(:,1);y27(:,1)];

end


end
sound(x1,fs)
end