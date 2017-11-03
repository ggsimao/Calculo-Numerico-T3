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
## @deftypefn {} {@var{retval} =} f (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: tosetto <tosetto@pc>
## Created: 2017-10-30
function y = f(t)
  y = log(0.95 .* t .+ 1.05);
endfunction
	 	  	 	    	   	 	     	      	     	    	 	
