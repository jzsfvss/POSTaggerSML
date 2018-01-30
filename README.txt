Package name	Stanford-MATLAB Part-of-Speech Tagger
Language	MATLAB, Java
Author		József Vass <jozsef.vass@outlook.com>
Version date	January 29, 2018

INSTALLATION

1. Download and unzip the POSTaggerSML package to any directory and set the MATLAB path to it.
2. Download the Stanford Log-linear Part-Of-Speech Tagger (English version 3.4.1 or earlier) from:
https://nlp.stanford.edu/software/tagger.shtml#History

EXECUTION

See main.m for a demo. To adopt to your code:
1. Set the paths as shown.
2. Always create the tagger with CreateTagger.m first, and then use it with POSTaggerSML.m
3. Display the output cell arrays with DispCells.m and the tagged sentences with DispSentences.m.
