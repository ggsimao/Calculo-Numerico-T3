## Copyright (C) 2017 tosetto
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} fHorner (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: tosetto <tosetto@pc>
## Created: 2017-10-28

function y = fHorner(n, a, xp)

    %Pn(xi)=a(1)+a(2)*x+a(3)*x^2+...+a(n)*x^(n-1)+a(n+1)*x^n
    %Pn(xi)=a(1)+x*(a(2)+x*(a(3)+...+x*(a(n)+x*a(n+1))...))% HORNER  (ordem crescente de grau)

    for ip=1:length(xp) %calcula y p/ cada elemento de x
        aux = a(n+1);
         for i=n:-1:1
            aux = a(i) + aux*xp(ip);
        end
        y(ip) = aux;
    end
endfunction	 	  	 	    	   	 	     	      	     	    	 	
