function [ txto, pos, posn ] = Java2Matlab(txti, tgst)
% txti: A 1D cell structure of Java arrays listing sentences with POS tags from PosTagger.
% tgst: The English Penn Treebank POS Tagset in a cell structure.
% txto: A 2D cell structure containing the sentences broken into words.
% pos: A 2D cell structure giving the POS tags associated with each word.
% posn: A 1D cell structure containing vectors of the tag codes for each word per sentence.

% Initialization:
n = size(txti, 1);
txto = cell(n, 1);
pos = cell(n, 1);
posn = cell(n, 1);

for i = 1:n % 1: Loop over sentences.

% Initialization for each sentence:
sen = txti{i};
senl = sen.size();
txto{i} = {};
pos{i} = {};
posn{i} = [];

for j = 1:senl % 2: Loop over each word in the sentence.

% Separate Java array element into the word and its tag:
jarr = char(sen.get(j-1));
sloc = FindChar(jarr, '/');
txto{i}{j} = jarr(1:(sloc-1)); % Word.
pos{i}{j} = jarr((sloc+1):end); % POS tag.
posn{i}(j) = FindString(tgst, pos{i}{j}); % POS tag numerical code.

end % 2

end % 1