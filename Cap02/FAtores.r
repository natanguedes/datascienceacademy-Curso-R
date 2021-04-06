

#FATORES E FATORES ORDENADOS

#o termo fator se refere a tipos de dados estatisticos usados para armazenar variáveis categóricas que são muitos uteis em sumarização de estatisticas , plot e regressões.

#fatores representam uma maneira muito eficiente para armazenar valores de caracteres 
#porque cada caracter único é armazenado apenas uma vez e os 
#dados são armazenados como um vetor de inteiros
#criar fatores função factor(...,ord=T) ou ordered()

getwd()


vet = c("Macho","Femea","Macho","Fermea")
vet

factor = factor(vet)
factor
class(factor)
class(vet)

#variaveis categoricas nominal

animais = c("cavalo","zebra","tigre","macaco")
class(animais)
factor(animais)
levels(animais)

#possui categorias

graduacao = c("graduacao","doutorado","mestrado")
graduacao


#visao geral das variaveis via sumario
fator = factor(animais, order = T, levels = c("Doutorado","Mestrado","Bacharelado"))

fator
levels(fator)

summary(fator)


#datas

data = c(1,1,2,3,4,5,6,7)
fdata = factor(data)
fdata

#transformando para romanos
rdate = factor(data, labels = c("I","II","III","IV","V","VI","VII"))
rdate
vet2 = c("M","F","M","F")
vet2
fact = factor(vet2)
fact

RDATA = factor(vet2)
rdata = factor(RDATA)
rdata

romano = c("i","II","III")
romano = factor(romano)
romano
summary(romano)
levels(romano)


#fator nao ordenado

set = c("AA","B","RA","CC","CA","AA","BA","CC","CC")
set

table(set)
f.set= factor(set)
f.set
class(f.set)
is.ordered(f.set)


#fator ordenado

o.set = factor(set , levels = c("CA","BA","AA","CC","B"))
o.set
class(o.set)

is.ordered(o.set)

FATNAORDENADO = c("AA","B","BA","CC","CA","AA","BA","CC","CC")
FATNAORDENADO

#Criando niveis

f.set = factor(FATNAORDENADO)
f.set

class(f.set)
is.ordered(f.set)

o.set = factor(FATNAORDENADO, levels = c("AC","BA","AA","CC","DA","QA"), ordered =  T)

o.set
is.numeric(o.set)
table(o.set)

#parou em 03:04