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
tagger = CreateTagger(dori, dtag, 0); % Set 3rd argument to 1: show load time, 0: don't.
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
stgs = input('Display POS tags? [y/n=1/0] ');
disp(' ');
res = DispText(sensc, pos, stgs); % Set stgs to 1: show tags, 0: don't show tags.
disp(' ');

% Clear the workspace:
clear all