clear;

disp('please inpot 3 numbers (0-10)');
b=round(rand(1,3).*10);

for i= 1 : 3
    Number(i) = input(sprintf('please input the %d number',i));
end

while (sum(b == Number)) ~= 3
    dd = (b == Number);
    for j = 1: 3
        if dd(j) == 1
            fprintf('the %d numder is OK!\n',j);
        end
    end
    
    for g = 1 : 3
        Number(g) = input(sprintf('please input %d number again', g));
    end
end

disp('you win');
