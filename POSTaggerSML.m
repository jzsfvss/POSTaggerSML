function results = POSTagger(sens, tagger)

import java.io.*;
import edu.stanford.nlp.tagger.maxent.MaxentTagger;

nsens = size(sens, 1);
results = cell(nsens, 1);

for i = 1:nsens % 1

sentence = MaxentTagger.tokenizeText(StringReader(sens{i}));
result = java.util.ArrayList();

for j = 1:size(sentence) % 2
	tSentence = tagger.tagSentence(sentence.get(j-1));
	result.addAll(tSentence);
end % 2

results{i} = result;

end % 1