/* Diego Souza Lima Marques - TIA: 32039921
 * Paradigmas de Linguagens de Programação - 05D
 * Desafio final */

linha(azul,[tucuruvi,paradainglesa,jardimsaopauloayrtonsenna,santana,carandiru,portuguesatiete,armenia,tiradentes,luz,saobento,se,japaoliberdade,saojoaquim,vergueiro,paraiso,anarosa,vilamariana,santacruz,pracadaarvore,saude,saojudas,conceicao,jabaquara]).
linha(verde,[vilamadalena,sumare,clinicas,consolacao,trianonmasp,brigadeiro,paraiso,anarosa,chacaraklabin,santosimigrantes,altodoipiranga,sacoma,tamanduatei,vilaprudente]).
linha(vermelha,[corinthiansitaquera,arturalvim,patriarcavilare,guilherminaesperanca,vilamatilde,penha,carrao,tatuape,belem,bressermooca,bras,pedroii,se,anhangabau,republica,santacecilia,maldeodoro,palmeirasbarrafunda]).
linha(amarela,[vilasonia,saopaulomorumbi,butanta,pinheiros,farialima,fradiquecoutinho,oscarfreire,paulista,higienopolismackenzie,republica,luz]).
linha(lilas,[capaoredondo,campolimpo,viladasbelezas,giovannigronchi,santoamaro,largotreze,adolfopinheiro,altodaboavista,borbagato,brooklin,campobelo,eucaliptos,moema,aacdservidor,hospitalsaopaulo,santacruz,chacaraklabin]).
linha(rubi,[jundiai,varzeapaulista,campolimpopaulista,botujuru,franciscomorato,baltazarfidelis,francodarocha,caieiras,perus,vilaaurora,jaragua,vilaclarice,pirituba,piqueri,lapa,aguabranca,palmeirasbarrafunda,luz,bras]).
linha(diamante,[amadorbueno,santarita,itapevi,engcardoso,sagradocoracao,jandira,jardimsilveira,jardimbelval,barueri,antoniojoao,santaterezinha,carapicuiba,genmiguelcosta,quitauna,comsampaio,osasco,presaltino,imperatrizleopoldina,domingosdemoraes,lapa,palmeirasbarrafunda,julioprestes]).
linha(esmeralda,[ceasa,villalobosjaguare,cidadeuniversitaria,pinheiros,hebraicareboucas,cidadejardim,vilaolimpia,berrini,morumbi,granjajulieta,joaodias,santoamaro,socorro,jurubatuba,autodromo,primaverainterlagos,grajau,mendesvilanatal]).
linha(turquesa,[riograndedaserra,ribeiraopires,guapituba,maua,capuava,santoandre,prefeitosaladino,utinga,saocaetanodosul,tamanduatei,ipiranga,juventusmooca,bras]).
linha(coral,[estudantes,mogidascruzes,brazcubas,jundiapeba,suzano,calmonviana,poa,ferrazdevasconcelos,antoniogianettineto,guaianases,josebonifacio,dombosco,corinthiansitaquera,tatuape,bras,luz]).
linha(safira,[calmonviana,aracare,itaquaquecetuba,engmanoelfeio,jardimromano,itaimpaulista,jardimhelenavilamara,saomiguelpaulista,comendadorermelino,uspleste,enggoulart,tatuape,bras]).
linha(jade,[aeroportoguarulhos,guarulhoscecap,enggoulart]).
linha(prata,[jardimcolonial,saomateus,fazendadajuta,sapopemba,jdplanalto,vilauniao,vilatolstoi,camilohaddad,saolucas,oratorio,vilaprudente]).

% Fonte do mapa: https://www.metrocptm.com.br/wp-content/uploads/2022/05/mapa-da-rede-metro-mai-2022.jpg
% soma([],0).
% soma([H|T],S):-soma(T,Y),S is H+Y.

tamanhoLista([],0).
tamanhoLista([_|T],X):-tamanhoLista(T,Q),X is Q + 1.

quant(Linha,SLinha):-linha(Linha,[_|T]),tamanhoLista([_|T],SLinha).

% Testes:
% quant(amarela,Tamanho). => Tamanho = 11
% quant(jade,Tamanho). => Tamanho = 3

pertence(X,[X|_]):-!.
pertence(X,[_|T]):-pertence(X,T).

pertenceLinha(Linha,Estacao):-linha(Linha,L),pertence(Estacao,L).

/* inserirElemento([],Elemento,Elemento).
inserirElemento([H1|T1],Elemento,[H1|T2]):-inserirElemento(T1,Elemento,T2). */

qualLinha(Estacao,Linha,Lista):-findall(Linha,pertenceLinha(Linha,Estacao),Lista).
% Alternativa: qualLinha(Estacao,Linha):-pertenceLinha(Linha,Estacao). -> sem lista

% Testes:
% qualLinha(luz,Linha,L). => L = [azul, amarela, rubi, coral]
% qualLinha(anhangabau,Linha,L). => L = [vermelha]
% qualLinha(republica,Linha,L). => L = [vermelha, amarela]

encontro(Linha1,Linha2,Lista):-linha(Linha1,L1),linha(Linha2,L2),intersection(L1,L2,Lista).
% Referência do comando intersection: material Operações com listas - findall, bagof, setof + https://www.swi-prolog.org/pldoc/man?predicate=intersection/3

% Testes:
% encontro(azul,amarela,L). => L = [luz]
% encontro(verde,azul,L). => L = [paraiso, anarosa]

direto(Estacao1,Estacao2,Lista):-findall(Linha,(pertenceLinha(Linha,Estacao1),pertenceLinha(Linha,Estacao2)), Lista).
% Alternativa: direto(Estacao1,Estacao2,Linha):-pertenceLinha(Linha,Estacao1),pertenceLinha(Linha,Estacao2). -> sem lista

% Testes:
% direto(vilamadalena,paraiso,L). => L = [verde]
% direto(anarosa,paraiso,L). => L = [azul, verde]
% direto(santacruz,chacaraklabin,L). => L = [lilas]