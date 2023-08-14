function array = randStringArray(N, i_min, i_max, chars, prob_chars)
    array = cell(1,N);

    for i=1:N
        escolha_size = rand(1,1,1);
        if escolha_size >0.4
            i_min = 8;
            i_max = 8;
        else
            i_min = 5;
            i_max = 5;
        end
        size = i_max-1;
        string='';

        switch nargin
            case 4
                for j=0:size
                  string=strcat(string,chars(floor((length(chars)+1-1)*rand()+1)));
                end
            case 5
                prob_chars = prob_chars/sum(prob_chars);
                for j=0:size
                    U = rand();
                    char = 1 + sum(U > cumsum(prob_chars));
                    string=strcat(string,chars(char));
                end
        end

        array{i} = string;
    end
end