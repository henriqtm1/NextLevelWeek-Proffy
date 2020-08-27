Algoritmo "FolhaDePagamento"
//
//
// Descrição   : Calcular folha de pagamento.
// Autor(a)    : Henrique Marinho Teixeira
// Data atual  : 13/08/2020
Var
   Codigo:Inteiro //Código
   NHTrab:Inteiro //Números horas trabalhadas no mês
   TurnoTrab :Caractere //Turno de trabalho
   Categoria:Caractere //Categoria de trabalho
   VHoraTrab:Real//Valor da hora trabalhada
   SalMin:Real//Valor Salário Minímo
   SalInic:Real//Valor salario inicial
   AuxAlim:Real//Valor do auxílio alimentação
   SalFinal:Real//Valor Salário final

Inicio
   Escreval("CALCULADOR DE FOLHA DE PAGAMENTO")
   Escreval("--------------------------------")
   Escreval("Informe aqui seu código:")
   Leia(Codigo)
   Escreval("Informe seu numero de horas trabalhadas no mês:")
   Leia(NHTrab)
   Escreval("Informe sua categoria:")
   Escreval("Digite [G] para gerente e [F] para funcionario):")
   Leia(Categoria)
   Escreval("Informe seu Turno:")
   Escreval("Digite [M] para Matutino e [V] para Vespertino [N] para Noturno:")
   Leia(TurnoTrab)
   Escreval("Informe o salário minímo:")
   Leia(SalMin)

   Se (Categoria = "G") E (TurnoTrab = "N")entao
            VHoraTrab <- SalMin * 0.06
      Escreval(SalMin)
         FimSe
         Se (Categoria = "G") E (TurnoTrab = "M")entao
            VHoraTrab <- SalMin * 0.04
         FimSe
         Se (Categoria = "G") E (TurnoTrab = "V")entao
            VHoraTrab <- SalMin * 0.04

         FimSe
         Se (Categoria = "F") E (TurnoTrab = "N")entao
            VHoraTrab <- SalMin * 0.02

         FimSe
         Se (Categoria = "F") E (TurnoTrab = "M")entao
            VHoraTrab <- SalMin * 0.01
         FimSe
         Se(Categoria = "F") E (TurnoTrab = "V")entao
            VHoraTrab <- SalMin * 0.01
         FimSe
   //Calculo salário inicial
   SalInic <- NHTrab * VHoraTrab

   Se(SalInic<=800)entao
             AuxAlim <- SalInic * 0.25
         FimSe
         Se( SalInic>=801) E (SalInic <=1200)entao
             AuxAlim <- SalInic * 0.20
         FimSe
         Se( SalInic>=1200)entao
             AuxAlim <- SalInic * 0.15
            FimSe
         FimSe
   //Calculo salário final
   SalFinal<- SalInic + AuxAlim

   Escreval("-------------------------------")
   Escreval("Suas informações ficarão assim:")
   Escreval("-------------------------------")
   Escreval("Código:",Codigo," Com ",NHTrab, " Horas trabalhadas")
   Escreval("Valor de Horas Trabalhadas:",VHoraTrab," Com Salário Inicial de:",SalInic)
   Escreval("Auxilio Alimentação:",AuxAlim," Com Salário Final de:",SalFinal)

Fimalgoritmo
