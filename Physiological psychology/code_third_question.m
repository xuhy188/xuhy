 i1=6;
 i2=7;
 i3=8;
 i4=8;
 i5=9;
 i6=10;
 i7=11;
 i8=12;
 i9=13;
 i10=14;
 i11=15;
 
 n=1;
 s11 = s;
 while n<19997
    s11(n:n+3) = 1;
    n = n + i11*20;
 end

t11 = t.*s11;

tone_i11 = sin(11*pi*f*t11);

sound(tone_i11,sr);

% 20000 = 1s, 1ms = 20