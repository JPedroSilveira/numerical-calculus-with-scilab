b = ones(1,8)'
x1 = zeros(1,8)'
A = zeros(8,8)

for i = 1:8
    for j = 1:8
        if i == j then
            A(i,j) = 2
        elseif abs(i - j) == 1 then
            A(i,j) = 1 //A(i,j) = 0, suprimido por A ser matriz de zeros
        end
    end
end

[xl,deltax,k] = jacobi(A,b,x1,-1,100)
//Norma 2 do resíduo
disp(norm(b-(A*xl),2))
