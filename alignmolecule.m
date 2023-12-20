function newcoordinates = alignmolecule(atoms,x,y,z,a1,a2,a3)

for ii = 1:length(atoms)
   c(ii).Atom = atoms{ii};
   c(ii).x = x(ii);
   c(ii).y = y(ii);
   c(ii).z = z(ii);    
end

n = shiftcoords(c,a1);

[v1,v2,v3,vc] = definevectors(n,a1,a2,a3);

tc = transformbasis(vc,v1,v2,v3);

newcoordinates = printxyz(tc);

end