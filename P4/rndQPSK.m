function [ s ] = rndQPSK( N )
s=sign(rand(1,N)-0.5)+j*(sign(rand(1,N)-0.5));
