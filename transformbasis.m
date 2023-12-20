function transformedcoordinates = transformbasis(coordinates,v1,v2,v3)
c = coordinates;

v_x = [1; 0; 0];
v_y = [0; 1; 0];
v_z = [0; 0; 1];

v = [v1,v2,v3];
v_new = [v_x,v_y,v_z];

A = v_new/v;

for ii = 1:length(c)
    t(ii).Atom = c(ii).Atom;
    t_xyz = A*c(ii).xyz;
    t(ii).x = t_xyz(1);
    t(ii).y = t_xyz(2);
    t(ii).z = t_xyz(3);
end

transformedcoordinates = t;
end