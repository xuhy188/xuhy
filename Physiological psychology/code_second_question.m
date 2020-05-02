 fafang_a_1 = rand(1,15)*1+9.5;
 
 n=1;
 i=1;
 while n<19997
    s_a1(n:n+3) = 1;
    n = n + round(20000/fafang_a_1(i));
    i = i+1;
 end

t_a2 = t_a2.*s_a2;

tone_a2 = sin(2*pi*f*t_a2);

sound(tone_a2,sr);