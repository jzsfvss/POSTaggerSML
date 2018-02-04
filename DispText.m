function res = DispText(sensc, pos, dtgs)

nsens = size(sensc, 1);

for i = 1:nsens % 1
	sensi = [ num2str(i), ': ' ];
	nwds = size(pos{i}, 2);
	for j = 1:nwds % 2
		if (dtgs) % 3: Show tags.
			sensi = [ sensi, sensc{i}{j}, ' (', pos{i}{j}, ') ' ];
		else % 3: Don't show tags.
			sensi = [ sensi, sensc{i}{j}, ' ' ];
		end
	end % 2
	disp(sensi);
end % 1

res = 1;