%__________________________________________________________________________________________
% Package name		Stanford-MATLAB Part-of-Speech Tagger
% Language			MATLAB, Java
% Author			József Vass <jozsef.vass@outlook.com>
% Version date		January 29, 2018
%‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
% Set paths:
dori = pwd; % Original / current directory.
dtag = './Packages/Basic English Stanford Tagger 3.4.1 (140827)'; % Directory of the tagger.
din = './input.txt'; % Location of the input sentences.
dts = './Penn Treebank POS Tagset.txt'; % Location of the tagset.
addpath(dtag);
addpath([ dtag, '/models' ]);
javaaddpath([ dtag, '/stanford-postagger.jar' ]);

% Read input and tagset:
sens = ReadText(din); % Sentences read into a cell array.
tagset = ReadText(dts); % Penn Treebank POS Tagset.

% Tag sentences for parts of speech (output: a cell array of Java ArrayList elements):
tagger = CreateTagger(dori, dtag);
senst = POSTaggerSML(sens, tagger);
% DispCells(senst);

% Convert the Java array into convenient MATLAB formats:
[ sensc, pos, posn ] = Java2Matlab(senst, tagset); % See Java2Matlab.m for input / output.
%{
DispCells(sensc);
DispCells(pos);
DispCells(posn);
%}

% Display results:
disp(' ');
res = DispSentences(sensc, pos, 1); % 1: show tags, 0: don't show tags.
disp(' ');