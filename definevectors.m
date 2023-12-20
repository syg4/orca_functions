function [v1,v2,v3,vectorcoordinates] = definevectors(newcoordinates,atom1,atom2,atom3)
n = newcoordinates;
a1 = atom1;
a2 = atom2;
a3 = atom3;

v1 = [n(a2).x; n(a2).y; n(a2).z];

v2 = [n(a3).x; n(a3).y - n(a1).y; n(a3).z - n(a1).z];

if abs(dot(v1,v2)) > 0.01
    warning('Atoms chosen do not form orthogonal vectors')
    v3 = [];
else
    v3 = cross(v1,v2);
end  

v1 = v1/sqrt(sumsqr(v1));
v2 = v2/sqrt(sumsqr(v2));
v3 = v3/sqrt(sumsqr(v3));

for ii = 1:length(n)
    vc(ii).Atom = n(ii).Atom;
    vc(ii).xyz = [n(ii).x; n(ii).y; n(ii).z];
end
vectorcoordinates = vc;
end