format long

xbase   = 0.1;
xlimite = 2;
n = 24;
nln = 104;
x = 2;
npontosCoef = n; #pontos para determinar interpolador

h = (xlimite - xbase)/npontosCoef;
xs = xbase : h : xlimite;
ys = log(xs);

npade = ceil(n/2);
mpade = floor(n/2);

coefsPI = fCoefInterpolador(xs, ys);
coefsML = fCoefLnMaclaurin(nln);
coefsTC = fCoefTchebychev(n);
[coefsPDa coefsPDb] = fPade(npade, mpade, coefsML);

npontosErro = 99;
herro = (xlimite - xbase) / npontosErro;
xsErro = xbase : herro : xlimite;
xsErroBeta = ftx(xsErro);
ysExato = log(xsErro);

for i = 1 : npontosErro+1
  ysErroTC(i) = fcalculaTchebychev(n, coefsTC, xsErroBeta(i));
  ysErroPI(i) = fHorner(n,coefsPI, xsErro(i));
  ysErroML(i) = fHorner(nln-1,coefsML, xsErroBeta(i));
  ysErroLG(i) = fCoefLaGrange(xs, ys, xsErro(i));
  ysErroPD(i) = fHorner(npade, coefsPDa, xsErroBeta(i))./fHorner(mpade, coefsPDb, xsErroBeta(i));
end

coefsML;
#ysErroPI = fHorner(n,coefsPI, xsErro);
#ysErroML = fHorner(nln-1, coefsML, xsErroBeta);
#ysErroLG = fCoefLaGrange(xs, ys, xsErro);

errosPI = abs(ysErroPI - ysExato);
errosML = abs(ysErroML - ysExato);
errosLG = abs(ysErroLG - ysExato);
errosTC = abs(ysErroTC - ysExato);
errosPD = abs(ysErroPD - ysExato);
#plot(xsErroBeta, ysExato,'--', xsErroBeta, ysErroPI)
#plot(xsErroBeta, ysExato,'--', xsErroBeta, ysErroML)
#plot(xsErroBeta, ysExato,'--', xsErroBeta, ysErroLG)
#plot(xsErroBeta, ysExato,'--', xsErroBeta, ysErroTC)
#plot(xsErroBeta, ysExato,'--', xsErroBeta, ysErroPD)
erroMaxPI = max(abs(ysErroPI - ysExato))
erroMaxML = max(abs(ysErroML - ysExato))
erroMaxLG = max(abs(ysErroLG - ysExato))
erroMaxTC = max(abs(ysErroTC - ysExato))
erroMaxPD = max(abs(ysErroPD - ysExato))	 	  	 	    	   	 	     	      	     	    	 	
