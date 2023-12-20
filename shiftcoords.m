function newcoordinates = shiftcoords(originalcoordinates,a1)
c = originalcoordinates;

x_corr = 0 - c(a1).x;
y_corr = 0 - c(a1).y;
z_corr = 0 - c(a1).z;

for ii = 1:length(originalcoordinates)
    n(ii).Atom = c(ii).Atom;
    n(ii).x = c(ii).x + x_corr;
    n(ii).y = c(ii).y + y_corr;
    n(ii).z = c(ii).z + z_corr;
end

newcoordinates = n;
end