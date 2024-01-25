R = [3, -1, -1; -1, 2, -1; -1, -1, 3];
V = [0; -10; 0];
invR = inv(R);
I_direct = invR \ V;
disp(I_direct);
