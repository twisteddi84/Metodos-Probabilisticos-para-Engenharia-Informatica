%% a
%adicionar 300 palavras ao filtro de bloom com 1 função de dispersao e taxa
%de falso positivo de 0.03
m = 300;
k = 1;
n = round(-m/log(1-0.03))

%% b

N = 300;
chars = 'abcdefghijklmnopqrstuvwxyz';
Prob = ones(1,26)/26;
escolha_size = rand(1,1,1)

palavras = randStringArray(N, 1, 1, chars, Prob)
k=1;
chaves=palavras(1:300);

filtro=inicializarFiltro(n);

for i=1:length(chaves)
    filtro=adicionarElemento(filtro,chaves{i},k)
end