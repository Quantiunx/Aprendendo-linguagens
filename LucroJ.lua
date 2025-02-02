Cttrans = 0.0 -- Custo total do transporte
Pcusto = 0.0 -- Preço de custo da unidade da mercadoria
Qtrans = 0.0 -- quantidade de transporte para cada unidade
Ptrans = 0.0 -- preço das unidades de transportes
Uprodutos = 0 -- quantidades de unidades a serem vendidas
Tmerc =0.03 -- Taxa do mercado
Lucro1 = 0.15 -- Lucro apos venda com 10%
Lucro2 = 0.2 -- Lucro apos venda com 20%

print("insira a quantidade de produto a ser vendida no mercado")
Uprodutos = io.read() -- total de unidades a serem vendidas

print("insira a quatidade de transporte para cada unidade")
Qtrans = io.read()

Tunitrans = Uprodutos*Qtrans -- quantidade necessaria de Transporte para venda

print("insira o preço de custo de cada unidade")
Pcusto = io.read()

print("insira o preço de custo de cada transporte")
Ptrans = io.read()

Cttrans = Tunitrans*Ptrans -- Quanto vai custar o total de transporte.

Pcustototal = Pcusto*Uprodutos

X = Pcustototal*Cttrans
Z = X*Tmerc

print("Gasto total")
print(Z)

O1 = (Z*Lucro1)/Uprodutos
O2 = (Z*Lucro2)/Uprodutos

print("Lucros de 15% e 20% ",O1,O2)