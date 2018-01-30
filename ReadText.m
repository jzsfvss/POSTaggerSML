function tlines = ReadText(inpfile)

fid = fopen(inpfile);
tline = fgetl(fid);
tlines = cell(0,1);

while ischar(tline)
    tlines{end+1,1} = tline;
    tline = fgetl(fid);
end

fclose(fid);