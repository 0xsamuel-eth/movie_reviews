function wordIndx = findWordIndex( allWords, word )
%  Name(s): Sam Masten
%  Email(s): samasten@ncsu.edu
%  Date: 11/0521
%  Lab Section # 204
%  Project 3: Movie Reviews, Fall 2021

%determines the index of a word in allWords
%Input:  allWords structure array, which contains information
%                for all words in the movie reviewdata file.
%                The fields fo the strucutre are:
%                word, score, numOccurences and sentiment.
%          word is a character Array for the word being searched for
%Returns: wordIndx if word is in the Structure Array allWords, it is the index
%                  if it is NOT in allWords, it returns the empty set []

%setting the index to [] initially
wordIndx = [];

%initializing a loop that will iterate for as many words as there are in the structure array
for n = 1:length(allWords.word)
    if word == allWords(n).word %if a word equal to the inputted word is found
        %the index of the word will be the n value from the loop
        wordIndx = n;
    end
end %terminate the loop with 'end'

%if the word is NOT in the array, the index value will not be updated and
%still be [] as requested in the instructions


end










