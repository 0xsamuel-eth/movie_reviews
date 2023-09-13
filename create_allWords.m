function create_allWords(filename)
%  Name(s): Sam Masten
%  Email(s): samasten@ncsu.edu
%  Date: 11/0521
%  Lab Section # 204
%  Project 3: Movie Reviews, Fall 2021

% "learns" about the sentiment of various words from Movie Review file
%  Input: filename is a char array of the input movie review data file
% Output: saves the allWords Structure array into allWords.mat file
%         allWords has all the information about each word, the fields are:
%         - word:a char Array
%         - numOccurences: integer, how many times this word showed in a review
%         - score: integer, the total sentiment score for this word
%         - sentiment: double, the average sentiment for this word
%  Rules: words that contain non-letters are NOT included
%         words that are only punctuation are also not included
%         words are case insensitive, so 'this' and 'This' are the same word


%load the reviews into matlab using importdata
movieRevArray = importdata(filename);



%use strsplit to delimit the array
%use a loop to delimit each review one by one and store them
for i = 1:length(movieRevArray)
    movie{i} = strsplit (movieRevArray{i}, '|'); %the delimitor is a |
end

%initializing the isLetter array to hold the words
isLetter = [];

for j = 1:length(movieRevArray) %initiating the for loop for the length of a row
    splitOnSpaces{j} = strsplit(movie{j}{2}, ' '); %using strsplit to split words where spaces are
    splitOnSpacesCh = char(char(strsplit(movie{j}{2})))';
    for k = 1:length(splitOnSpaces{1}) %creating another loop to get rid of additional spaces and punctuation
        isNewLetter = splitOnSpacesCh(isletter(splitOnSpacesCh(:,k)))';
        isLetter = [isLetter isNewLetter]; %updating isLetter for each word
    end
    for n = 1:length(isLetter) %for as many words as there are
        allWords(n).word = char(isLetter{n}); %the current word as a character array
        allWords(n).score = movie{n}{1}; %the total score for the word
        allWords(n).numOccurences = sum(isLetter{n}==movie{n}{2}); %using sum to find how many instances of the word there are
        allWords(n).sentiment = allWords(n).score/allWords(n).numOccurences; %calculating the sentiment using score/occurences
   % end
end


end


end



