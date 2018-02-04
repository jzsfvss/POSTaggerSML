Package name	Stanford-MATLAB Part-of-Speech Tagger
Language	MATLAB, Java
Author		József Vass <jozsef.vass@outlook.com>
Version date	Feb. 3, 2018

INSTALLATION

1. Download and unzip the POSTaggerSML package to any directory and set the MATLAB path to it.
2. Download the Stanford Log-linear Part-Of-Speech Tagger (English version 3.4.1 or earlier) from:
https://nlp.stanford.edu/software/tagger.shtml#History

EXECUTION

See main.m for a demo. To adopt to your code:
1. Set the paths as shown.
2. Always create the tagger with CreateTagger.m first, and then use it with POSTaggerSML.m
3. Display the output cell arrays with DispCells.m and the tagged text with DispText.m.

FILES

license.txt
The license file for the POSTaggerSML package.

input.txt
Text file of sentences to be tagged for POS.

Penn Treebank POS Tagset.txt
The tagset used by the package.

Penn Treebank POS Tagset Codes.txt
The tagset with numerical codes and descriptions.

main.m
Demo program.

ReadText.m
Reads text line-by-line from a .txt file into a cell array.

DispCells.m
Displays a cell array.

CreateTagger.m
Creates the Stanford Log-linear Part-Of-Speech Tagger (Java).

POSTaggerSML.m
Tags a cell array of strings, and outputs a cell array of Java ArrayList types.

Java2Matlab.m
Converts the Java ArrayList output to more convenient MATLAB formats. See the file for more information.

FindChar.m
Finds a character in a string.

FindString.m
Finds a string in a string.

DispText.m
Displays the sentences with/out POS tags.
