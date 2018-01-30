function k = FindString(mcls, str)

n = size(mcls, 1);
lp = 1;
k = 0;

while ((lp == 1) && (k < n))
	k = k + 1;
	if strcmpi(mcls{k}, str)
		lp = 0;
	end
end

if (lp == 1)
	k = 0;
end