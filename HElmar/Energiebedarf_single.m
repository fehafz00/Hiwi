clear all

% Hier Verzeichnis wählen, in dem die Dateien liegen
cd C:\Users\ferdi\OneDrive\Dokumente\MATLAB\Hiwi\HElmar
% Fahrzyklen einlesen
%load NEDC.mat
load WLTC.mat

% Öffnen der Simulink Modelle
%open('Energiebedarf_Mod_NEDC')
open('Energiebedarf_Mod_WLTC')

% Fahrzeugdaten
m       = 1500;     %[kg] Fahrzeuggewicht
lambda  = 1.0;      %[-] Drehmassenzuschlagsfaktor
fR      = 0.012;    %[-] Rollwiderstandsbeiwert
cwA     = 0.7;      %[m^2] Luftwiderstandskoeffizient
rho     = 1.2;      %[kg/m^3] Luftdichte
g       = 9.81;     %[m/s^2] Erdbeschleunigung 

    
etaRec=0.5;   % Rekuperationseffizienz (0=keine Rekuperation, 1=volle Rekuperation)

% Start der Simulink Simulation
%sim('Energiebedarf_Mod_NEDC')

sim('Energiebedarf_Mod_WLTC')
