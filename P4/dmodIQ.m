function [ yi, yq ] = dmodIQ( r, fc, h, t )
% r �s el senyal rebut.
% fc �s la freq��ncia de la portadora.
% h �s la resposta impulsional del filtre passa baixes.
% t �s el vector de temps.
% yi �s la component en fase desmodulada.
% yq �s la component en quadratura desmodulada.
% --------------
% r is the received signal.
% fc is the carrier frequency.
% h is the impulse response of the low-pass filter.
% t is the time vector.
% yi is the demodulated in-phase component.
% yq is the demodulated quadrature component.

% 1. Components ri i rq.
% 1. Components ri and rq.
ri=2.*r.*cos(2*pi*fc*t);
rq=-2.*r.*sin(2*pi*fc*t);
% 2. Components yi i yq.
% 2. Components yi and yq.
D=t(2)-t(1);
convyi=conv(ri,h,"same");
convyq=conv(rq,h,"same");

yi=convyi*D;
yq=convyq*D;
end