clc;clear;
data = load("u.data");
dic = readcell('films.txt','Delimiter','\t');
user = input('Insert User ID (1 to 943):');
while(user<1 || user >943)
    fprintf("User ID Invalid\n")
    user = input('Insert User ID (1 to 943):');
end
while true
menu_opcoes = menu('Select Choice:', ...
    '1 - Your Movies', ...
    '2 - Films from most similar user', ...
    '3 - Search Title', ...
    '4 - Find most similar films', ...
    '5 - Estimate the number of films from a year', ...
    '6 - Exit');

switch menu_opcoes
    case 1
        clc;
        fprintf('----------------MOVIES---------------\n')
        for i=1:length(data)
            linha = data(i,:);
            if(linha(:,1) == user)
                id_movie = linha(:,2);
                fprintf('--Movie ID %d - %s--\n',id_movie,dic{id_movie,1})
            end
        end
        fprintf('------------------------------------\n')
    case 2
        disp('ola2')
    case 3
        title_search = input('Write a string:','s');
    case 4
        disp('ola2')
    case 5
        disp('ola2')
    case 6
        break  
end
end