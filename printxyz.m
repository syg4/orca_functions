function s = printxyz(data)

d = data;
for ii = 1:length(d)
    s(ii).Atom = d(ii).Atom;
    s(ii).x = round(d(ii).x,6);
    s(ii).y = round(d(ii).y,6);
    s(ii).z = round(d(ii).z,6);
end

writetable(struct2table(s), 'new_geom.txt')

end