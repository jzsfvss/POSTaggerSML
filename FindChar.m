function k = FindChar(str, chr)

n = length(str);
lp = 1;
k = 0;

while ((lp == 1) && (k < n))
	k = k + 1;
	if (str(k) == chr)
		lp = 0;
	end
end

if (lp == 1)
	k = 0;
end