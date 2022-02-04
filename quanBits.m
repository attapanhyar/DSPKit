function[Q,q]= quanBits(input,N,A)
q = (A-(-A))/(2^N);
Q = round(input/q)*q;
