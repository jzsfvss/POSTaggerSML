function tagger = CreateTagger(dori, dtag, sld)

import java.io.*;
import edu.stanford.nlp.tagger.maxent.MaxentTagger;
import edu.stanford.nlp.util.StringUtils;

% Add paths:
cd(dori);
addpath(dtag);
addpath([ dtag, '/models' ]);
cd([ dtag, '/models' ]);
javaaddpath('../stanford-postagger.jar');

% Create tagger:
if (sld) % Show "Reading POS tagger model..." message?
	tagger = MaxentTagger('./english-left3words-distsim.tagger');
else
	tagger = MaxentTagger('./english-left3words-distsim.tagger', StringUtils.argsToProperties({'-model', './english-left3words-distsim.tagger'}), false);
end

cd(dori);