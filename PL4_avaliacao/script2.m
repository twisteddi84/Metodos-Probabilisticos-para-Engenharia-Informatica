clc;clear;
data = load("u.data");
dic = readcell('films.txt','Delimiter','\t');
array_genres = {};
for(linha = 1:length(dic))
    for(i=2:7)
        if(missing)
            array_genres{end + 1} = dic{linha,i};
        end
    end
end
array_genres