function [ s ] = modIQ( is, qs, fc, t )
% is �s la component en fase.
% qs �s la component en quadratura.
% fc �s la freq��ncia de la portadora.
% t �s el vector de temps.
% s �s el senyal modulat.
% --------------
% is the in-phase component.
% qs is the quadrature component.
% fc is the carrier frequency.
% t is the time vector.
% s is the modulated signal.

s=is.*cos(2*pi*fc*t)-qs.*sin(2*pi*fc*t);
end