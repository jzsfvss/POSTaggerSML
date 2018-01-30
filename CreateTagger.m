function tagger = CreateTagger(dori, dtag)

import java.io.*;
import edu.stanford.nlp.tagger.maxent.MaxentTagger;

% Add paths:
cd(dori);
addpath(dtag);
addpath([ dtag, '/models' ]);
cd([ dtag, '/models' ]);
javaaddpath('../stanford-postagger.jar');

% Create tagger:
tagger = MaxentTagger('./english-left3words-distsim.tagger');

cd(dori);