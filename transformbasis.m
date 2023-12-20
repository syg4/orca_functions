function transformedcoordinates = transformbasis(coordinates,v1,v2,v3)
c = coordinates;

v = [v1,v2,v3];
[u,s,w] = svd(v);
v_corr = u*w';

for ii = 1:length(c)
    t(ii).Atom = c(ii).Atom;
    t_xyz = v_corr'*c(ii).xyz;
    t(ii).x = t_xyz(1);
    t(ii).y = t_xyz(2);
    t(ii).z = t_xyz(3);
end

transformedcoordinates = t;
end