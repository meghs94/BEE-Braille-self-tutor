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
[y27,fs]=audioread('cat.mp3');
[y28,fs]=audioread('dog.mp3');
[y29,fs]=audioread('red.mp3');
[y30,fs]=audioread('jug.mp3');
[y31,fs]=audioread('spell.mp3');
[y32,fs]=audioread('correct.mp3');
[y33,fs]=audioread('incorrect.mp3');
[y34,fs]=audioread('hat.mp3');
[y35,fs]=audioread('car.mp3');
[y36,fs]=audioread('rat.mp3');
[y37,fs]=audioread('sun.mp3');
[y38,fs]=audioread('top.mp3');

%[y27,fs]=audioread('sha.wav');
%[y28,fs]=audioread('C.wav');


x1=[0;0];
pt1=[0];
i=1;
j=1;
lex = {'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z'};
% lh={'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'0';'k';'g';'c';'j';'t';'d';'p';'b';'s'};
arr = zeros(26000,10);
arr(1:size(y27),1)=y27(:,1);
arr(1:size(y28),2)=y28(:,1);
arr(1:size(y29),3)=y29(:,1);
arr(1:size(y30),4)=y30(:,1);
arr(1:size(y34),5)=y34(:,1);
arr(1:size(y35),6)=y35(:,1);
arr(1:size(y36),7)=y36(:,1);
arr(1:size(y37),8)=y37(:,1);
arr(1:size(y38),9)=y38(:,1);

a = { 'cat' , 'dog' , 'red','jug', 'hat', 'car', 'rat', 'sun', 'top'};
for spell = 1:length(a)
    pause(1);
    x1=[0;0];
    pt1=[0]; 
    i=1;
    j=1;
    sound(y31,fs)
    pause(2);
    sound(arr(:,spell),fs)
    pause(2);
    word = input('Enter value','s');
    if (strcmp(word,a{spell})) 
           sound(y32,fs)
           pause(2);
           correct = 1;
    else
        sound(y33,fs)
        pause(2);
        correct = 0;
    end
    %disp('entered before the loop');
    if (correct == 0)
         disp('entered the loop');
         x1=[0;0];
         pt1=[0]; 
         i=1;
         j=1;

        
        len=length(a{spell});
        a{spell}(len+1)=0;

        while(j<=len)
            pt1(i) = strmatch(a{spell}(i),lex(:,1),'exact');
            i=i+1;
            j=j+1;
            
        end
        i=1;
        l=length(pt1);
        l
        for i=1:l

            switch pt1(i)
              case 1
                 x1=[x1(:,1);y1(:,1)];
                 
              case 2
                 x1=[x1(:,1);y2(:,1)];
                 
              case 3
                 x1=[x1(:,1);y3(:,1)];
                 
              case 4
                 x1=[x1(:,1);y4(:,1)];
         
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
         
                case 13
                    x1=[x1(:,1);y13(:,1)];
         
                case 14
                    x1=[x1(:,1);y14(:,1)];
         
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
         
                case 22
                    x1=[x1(:,1);y22(:,1)];
         
                case 23
                    x1=[x1(:,1);y23(:,1)];
                case 24
                    x1=[x1(:,1);y24(:,1)];
                case 25
                    x1=[x1(:,1);y25(:,1)];
                case 26
                    x1=[x1(:,1);y26(:,1)];
      
       end



        end
       sound(x1,fs)
       pause(3);
        sound(arr(:,spell),fs)
       pause(2);
    end
    
end

