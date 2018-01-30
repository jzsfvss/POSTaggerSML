function res = DispCells(mcls)

n = size(mcls, 1);

for i = 1:n
	disp(mcls{i});
end