   function [numReviewWords, avgSentiment, neg, pos, notFound] = analyzeReview(allWords, Review)
%  Name(s): Sam Masten
%  Email(s): samasten@ncsu.edu
%  Date: 11/0521
%  Lab Section # 204
%  Project 3: Movie Reviews, Fall 2021

%Analyzes a review based on learned word info stored in allWords
%Input:
%  allWords structure array, which contains information
%           for all words in the movie reviewData file.
%           The fields of the structure are:
%           word, score, numOccurences and sentiment.
%  Review:  a character array (string) that has the movie review
%Returns:
%  numReviewWords is integer, the total number of words in the review
%  avgSentiment is real number that is an average of the sentiment
%               of all the words in the review
%           neg is a structure array that contains ALL the
%               most negative words, no repeats of a word
%           pos is a structure array that contains ALL the
%               most positive words, no repeats of a word
%           notFound is a cell array of all words not found in allWords



%creating a variable with the number of words by splitting at each space
spaceMoved = strsplit(Review,' ');

%setting the number of words equal to the length of the word array
numReviewWords = length(spaceMoved);

%initializing totalSentiment at 0
totalSentiment = 0;

%initializing a loop to iterate for each word there is
for i = 1:length(spaceMoved)
    %setting the word equal to a variable currentWord during each iteration
    currentWord = allWords(i).word;
    for j = 1:length(allWords.word)
        if currentWord == allWords(n).word %if a word equal to the inputted word is found
            %the sentiment of the word will be the structure array value at that n
            wordSentiment = allWords(j).sentiment;
            %updating totalSentiment after each iteration
            totalSentiment = wordSentiment + totalSentiment;
        end 
    end
    %ending all the loops
end

%finding the avgSentiment by dividing total by the number of words excluding the period
avgSentiment = totalSentiment/(length(spaceMoved)-1);

%for the length of the number of words in allWords
for k = 1:length(spaceMoved)
    %setting the word equal to a variable currentWord during each iteration
    currentWord = allWords(i).word;
    for l = 1:length(allWords.word)
        if currentWord == allWords(k).word %if a word equal to the inputted word is found
            %the sentiment of the word will be the structure array value at that n
            %if this sentiment is greater than the previous
            if allWords(k).sentiment > allWords(k-1).sentiment
                %we give it the most positive value variable which will
                %continue to update
                pos = allWords(k);
            elseif allWords(k).sentiment < allWords(k-1).sentiment
                %we give it the most negative value variable which will
                %continue to update
                neg = allWords(k);
            else
                %if the word does not exist we add it to the notFound cell
                %array
                notFound{k} = currentWord;
            end
        end
    end
end %ending all loops







