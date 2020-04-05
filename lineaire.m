clear all; close all;

global k m Ma g l Io omega1 omega2 omega eps1 eps2 w0 a

periode=2*pi/omega;      % periode de l'excitation et de la reponse
nb_pts_per=30;          % nb de points par periode pour l integration temporelle
dt=periode/nb_pts_per;  % taille du pas de temps
nb_per=30;              % nb de periodes pour le calcul temporel
t_tot=nb_per*periode;   % temps final
t_init=0;               % temps initial

%Le vecteur X est le vecteur des inconnues il contient z et theta 
z0 = 0;%valeur de z initiale 
zp0 = 0.1;%valeur de z_point initiale
theta0 = 0;%valeur de theta initiale 
thetap0 = 0.1;% valeur de theta_point initiale
X0=[z0;theta0];dX0=[zp0;thetap0];             % conditions initiales

[tt,Xt,dXt]=newmarklin(X0,dX0,t_init,dt,t_tot);   % Integration par newmark

%% Comparaison avec solution analytique

 
