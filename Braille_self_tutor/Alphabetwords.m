
[y1,fs]=audioread('a.mp3');
[y2,fs]=audioread('b.mp3');
[y3,fs]=audioread('c.mp3');
[y4,fs]=audioread('d.mp3');
[y5,fs]=audioread('e.mp3');
[y6,fs]=audioread('f.mp3');
[y7,fs]=audioread('g.mp3');
[y8,fs]=audioread('h.mp3');
[y9,fs]=audioread('i.mp3');
[y10,fs]=audioread('j.mp3');
[y11,fs]=audioread('k.mp3');
[y12,fs]=audioread('l.mp3');
[y13,fs]=audioread('m.mp3');
[y14,fs]=audioread('n.mp3');
[y15,fs]=audioread('o.mp3');
[y16,fs]=audioread('p.mp3');
[y17,fs]=audioread('q.mp3');
[y18,fs]=audioread('r.mp3');
[y19,fs]=audioread('s.mp3');
[y20,fs]=audioread('t.mp3');
[y21,fs]=audioread('u.mp3');
[y22,fs]=audioread('v.mp3');
[y23,fs]=audioread('w.mp3');
[y24,fs]=audioread('x.mp3');
[y25,fs]=audioread('y.mp3');
[y26,fs]=audioread('z.mp3');
%[y27,fs]=audioread('sha.mp3');
%[y28,fs]=audioread('C.mp3');
for i=1:26

x1=[0;0];
pt1=[0];
i=1;
j=1;
lex = {'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z'};
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
      %case 34
       %  x1=[x1(:,1);y26(:,1)];
      %case 35
       %  x1=[x1(:,1);y27(:,1)];

end


end
sound(x1,fs)
end