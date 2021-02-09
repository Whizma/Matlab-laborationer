clear        % glöm alla tidigare variabelvärden
close all    % stäng alla figurer
clc          % rensa kommandofönstret

prompt = "Skriv in ett tal för att ta reda på kvadratroten ";
S = input(prompt)

x = S/2
x = 10;
x0 = S/2;


while abs(x-x0) > 10^-6
x = (x0+(S/x0))/2
x0 = x;
x = (x+(S/x))/2;
end

