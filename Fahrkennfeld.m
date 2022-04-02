function [outputArg1,outputArg2] = Fahrkennfeld()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Drehzahl_max = 6000;
Drehmoment_max = 200;
Drehzahl = [];
for i_Drehzahlband = 600:200:Drehzahl_max
    Drehzahl(:,end+1) = i_Drehzahlband;
end
Drehmoment = [0 Drehmoment_max];
laenge_Drehzahl = length(Drehzahl);
Verbrauch = [];
for i_Verbrauch = 1:laenge_Drehzahl
b_abs = (1237000/200)*Drehmoment_max + (Drehzahl(i_Verbrauch)-600)*6164;
Verbrauch(:,end+1) = b_abs;
Verbrauch(end+1,:) = 0;
end

mesh(Drehzahl, Drehmoment, Verbrauch)

outputArg1 = 1;
outputArg2 = 1;
end

