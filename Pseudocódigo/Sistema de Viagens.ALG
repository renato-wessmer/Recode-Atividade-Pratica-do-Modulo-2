//----------------------------------------------------------------------------
//----------------------------- Secao: Algoritimo -----------------------------
//----------------------------------------------------------------------------

Algoritmo "Sistema Agencia de Viagens"

// Disciplina: Modulo_2_Iniciacao_ao_Mundo_da_Computacao_e
// Programacao_de_Computadores

// Descricao   : Faz Cadastro de clientes, cadastro de destino, e consulta
// para por cliente e lista geral

// Autor(a): Renato Wessner dos Santos

// Data de criação: 13/06/2022

// Data atual  : 02/07/2022

// Versão 23

//----------------------------------------------------------------------------
//----------------------------- Secao: Variaveis -----------------------------
//----------------------------------------------------------------------------

Var

// Secao de Declaracoes das variaveis
// Legenda das abreviacoes equivalentes abaixo perto de cada bloco
// do procedimento:

// codigo do cliente: cc;
// razao social ou nome completo: rn;
// CNPJ ou CPF:jf;
// endereco completo:ec;
// telefone celular: tc;
// telefone fixo: tf;
// e-mail: em;
// aniversario ou de fundacao:an;
// destino do cliente: des;
// data de chegada do cliente ao destino: dch;
// data de saida do cliente do destino: dsa;
// Quantidade de pessoas que acompanham o cliente: qap;
// tipo de acomodacao do cliente: aco;
// valor da diária de acomodacao do cliente: vda;
// tipo de reserva, se e possivel o cancelamento gratuito: rca;
// acomodacao escolhida fornece cafe da manha: caf;
// passeios inclusos: pas;
// Max_itens: variavel que contera o maximo de elementos de um vetor
// opcao: opcao de escolha usado
// X: variavel de controle
// FLAG,Flag2: variavel de controle


   cc         : vetor[1..5] de caracter
   rn         : vetor[1..5] de caracter
   jf         : vetor[1..5] de caracter
   ec         : vetor[1..5] de caracter
   tc         : vetor[1..5] de caracter
   tf         : vetor[1..5] de caracter
   em         : vetor[1..5] de caracter
   an         : vetor[1..5] de caracter
   des        : vetor[1..5] de caracter
   dch        : vetor[1..5] de caracter
   dsa        : vetor[1..5] de caracter
   qap        : vetor[1..5] de caracter
   aco        : vetor[1..5] de caracter
   vda        : vetor[1..5] de caracter
   rca        : vetor[1..5] de caracter
   caf        : vetor[1..5] de caracter
   pas        : vetor[1..5] de caracter
   Item_cad   : Inteiro
   Max_itens  : Inteiro
   opcao      : Caracter  // opcao de escolha utilizado no menu do escolha
   X          : Logico    // variaveis de controle
   FLAG,Flag2 : Logico    // variaveis de controle

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////// Procedimentos ///////////////////////////////
//////////////////////////////////////////////////////////////////////////////

//----------------------------------------------------------------------------
//----------------------------- Função: Pesquisa -----------------------------
//----------------------------------------------------------------------------
Funcao PESQUISA(xcod : caracter): Inteiro
Var
   p_Item, XP : inteiro
Inicio
   XP <- 0
   Para p_Item de 1 ate Max_itens faca // Le todas as entidades existentes
      Se (xcod = cc[p_Item]) entao // Se encontar a entidade retorna a mesma
         XP <- p_Item
      Fimse
   Fimpara
   Retorne XP                          // Retorna o conteudo atribuido a XP
Fimfuncao
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------


//----------------------------------------------------------------------------
//-----------------------Inclusao de cliente e viagem-------------------------
//----------------------------------------------------------------------------

Procedimento Inclusao   // De novos clientes e viagens ainda não cadastrados
Var iFlag      : Logico
    iPesq      : Inteiro
    xcc        : caracter
    xrn        : caracter
    xjf        : caracter
    xec        : caracter
    xtc        : caracter
    xtf        : caracter
    xem        : caracter
    xan        : caracter
    xdes       : caracter
    xdch       : caracter
    xdsa       : caracter
    xqap       : caracter
    xaco       : caracter
    xvda       : caracter
    xrca       : caracter
    xcaf       : caracter
    xpas       : caracter
    eum        : caracter
    xum        : caracter
    xdois      : caracter

Inicio
   iFLAG <- Verdadeiro
   Enquanto iFlag faca
      Item_cad <- Item_cad + 1        // Incrementa o contador de elementos de um em um
      Se Item_cad > Max_itens entao   // Verifica se nao ultrapassou o maximo de elementos no vetor
         iFlag <- Falso
      Senao
         LimpaTela
         Escreval("================================================================")
         Escreval("=                                                              =")
         Escreval("=     Instrucoes de uso: nessa tela voce podera cadastrar o    =")
         Escreval("= cliente digitando as informacoes solicitadas pelo programa,  =")
         Escreval("= caso alguma informacao nao esteja correta voce pode cancelar =")
         Escreval("= o cadastro das informacoes digitadas e comecar um novo       =")
         Escreval("= cadastro atraves da opcao cadastrar novo cliente.            =")
         Escreval("=                                                              =")
         Escreval("================================================================")
         Escreval(" ")
         Escreval(" ")
         Escreval("Digite sim para prosseguir para a tela de castro")
         Leia(eum)
            Enquanto (eum <> "sim") faca
             Escreval(" ")
               Repita
                  Escreval("Voce precisar digitar sim")
                  Leia(eum)
                  Escreval("")
               Ate (eum = "sim")
            Fimenquanto
         Limpatela
         Escreval("================================================================")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("=                Sistema Agencia de Viagens                    =")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("================================================================")
         Escreval(" ")
         Escreval(" ")
         Escreval("====== Inclusao de cliente(s) e sua viagen(s) ======")
         Escreval(" ")
         Escreval(" ")
         Escreval("Digite o codigo para cadastrar o cliente: ")
         Leia(xcc)
         Escreval(" ")
         iPesq <- PESQUISA(xcc)                   // Pesquisa o codigo para ver se existe
         Se ((iPesq = 0) e (xcc <> "0")) entao    // Se retornar zero ainda nao foi cadastrado
            Escreval("Digite razao social ou nome completo do cliente pessoa fisica: ")
            Leia(xrn)
            Escreval(" ")
            Escreva("Digite o CNPJ ou CPF do cliente: ")
            Leia(xjf)
            Escreval(" ")
            Escreva("Digite o endereco completo do cliente: ")
            Leia(xec)
            Escreval(" ")
            Escreva("Digite o celular do cliente: ")
            Leia(xtc)
            Escreval(" ")
            Escreva("Digite o telefone fixo do cliente: ")
            Leia(xtf)
            Escreval(" ")
            Escreva("Digite o e-mail do cliente: ")
            Leia(xem)
            Escreval(" ")
            Escreva("Digite a data de fundacao ou aniversario do cliente para enviar futuros descontos: ")
            Leia(xan)
            Escreval(" ")
            Escreva("Digite o nome do destino do cliente: ")
            Leia(xdes)
            Escreval(" ")
            Escreva("Digite a data de chegada do cliente: ")
            Leia(xdch)
            Escreval(" ")
            Escreva("Digite a data de saida do cliente: ")
            Leia(xdsa)
            Escreval(" ")
            Escreva("Digite a quantidade de pessoas que acompanham o  cliente: ")
            Leia(xqap)
            Escreval(" ")
            Escreva("Digite o tipo de acomodacao do cliente: ")
            Leia(xaco)
            Escreval(" ")
            Escreva("Digite o valor da diaria de acomodacao do cliente: ")
            Leia(xvda)
            Escreval(" ")
            Escreva("Digite o tipo de reserva, se e possivel o cancelamento gratuito pelo cliente: ")
            Leia(xrca)
            Escreval(" ")
            Escreva("Digite se a acomodacao escolhida fornece cafe da manha ao cliente: ")
            Leia(xcaf)
            Escreval(" ")
            Escreva("Digite caso exista, os passeios inclusos para o cliente: ")
            Leia(xpas)
            Escreval(" ")
            Escreva("Voce deseja cadastrar as informacoes digitadas desse cliente sim ou nao? ")
            Leia(xum)
            Enquanto ((xum <> "sim") e (xum <> "nao") e (xum <> "Sim") e (xum <> "Nao") ) faca
            Escreval(" ")
               Repita
                  Escreval("Voce precisar digitar sim ou nao")
                  Leia(xum)
                  Escreval("")
               Ate ((xum = "sim") ou (xum = "nao") ou (xum = "Sim") ou (xum = "Nao"))
            Fimenquanto
            Se ((xum = "sim") ou (xum = "Sim")) entao
               cc[Item_cad] <- xcc
               rn[Item_cad] <- xrn
               jf[Item_cad] <- xjf
               ec[Item_cad] <- xec
               tc[Item_cad] <- xtc
               tf[Item_cad] <- xtf
               em[Item_cad] <- xem
               an[Item_cad] <- xan
               des[Item_cad] <- xdes
               dch[Item_cad] <- xdch
               dsa[Item_cad] <- xdsa
               qap[Item_cad] <- xqap
               aco[Item_cad] <- xaco
               vda[Item_cad] <- xvda
               rca[Item_cad] <- xrca
               caf[Item_cad] <- xcaf
               pas[Item_cad] <- xpas
            Senao
               Se Item_cad > 0 entao
                  Item_cad <- Item_cad - 1
               Fimse
            Fimse
         Senao
            Se (xcc = "0") entao
               Se Item_cad > 0 entao
                  Item_cad <- Item_cad - 1
               Fimse
               iFLAG <- Falso
            Senao
               Escreval(" ")
               Escreva("Esse codigo do cliente ja existe no cadastrado, por favor digite outra codigo para cadastrar um novo cliente")
               Escreval(" ")
            Fimse
         Fimse
      Fimse
      xdois <- ""
      Escreval(" ")
      Escreval(" =========================================================== ")
      Escreval(" ")
      Escreval("Deseja cadastra um novo cliente, sim ou nao?")
      Leia(xdois)
      Enquanto ((xdois <> "sim") e (xdois <> "nao") e (xdois <> "Sim") e (xdois <> "Nao") ) faca
      Escreval(" ")
         Repita
            Escreval("Voce precisar digitar sim ou nao")
            Leia(xdois)
            Escreval("")
         Ate ((xdois = "sim") ou (xdois = "nao") ou (xdois = "Sim") ou (xdois = "Nao"))
      Fimenquanto
      Se ((xdois = "nao") ou (xdois = "Nao")) entao
         iFlag <- Falso
      Senao
         iFlag <- Verdadeiro
      Fimse
   Fimenquanto
FimProcedimento

//----------------------------------------------------------------------------
//---------------- Consulta de cliente e viagem por codigo -------------------
//----------------------------------------------------------------------------

Procedimento Consulta
Var cFlag      : Logico
    cPesq      : Inteiro
    xcc        : caracter
    xrn        : caracter
    xjf        : caracter
    xec        : caracter
    xtc        : caracter
    xtf        : caracter
    xem        : caracter
    xan        : caracter
    xdes       : caracter
    xdch       : caracter
    xdsa       : caracter
    xqap       : caracter
    xaco       : caracter
    xvda       : caracter
    xrca       : caracter
    xcaf       : caracter
    xpas       : caracter
    edois      : caracter
    etres      : caracter
    xtres      : caracter

Inicio
   cFlag <- Verdadeiro
   Enquanto cFlag faca
      Se Item_cad < 1 entao  // verifica nao tem nenhum elemento cadastrado
         cFlag <- Falso
         Limpatela
         Escreval("Nao existe nenhum cliente cadastrado")
         Escreval(" ")
         Escreval("Digite sim para retornar ao menu principal")
         Leia(edois)
         Limpatela
         Enquanto (edois <> "sim") faca
            Escreval(" ")
               Repita
                  Escreval("Voce precisar digitar sim")
                  Leia(edois)
                  Escreval("")
               Ate (edois = "sim")
            Fimenquanto
      Senao
         LimpaTela
         Escreval("================================================================")
         Escreval("=                                                              =")
         Escreval("=     Instrucoes de uso: nessa tela voce podera consultar o    =")
         Escreval("= cliente digitando o codigo dele, codigo esse que foi         =")
         Escreval("= previamente cadastrado pelo operador.                        =")
         Escreval("= Caso nao exista codigo cadastrado sera informado na tela a   =")
         Escreval("= mensagem de /noo existe nenhum cliente cadastrado/.          =")
         Escreval("=                                                              =")
         Escreval("================================================================")
         Escreval(" ")
         Escreval(" ")
         Escreval("Digite sim para prosseguir para a tela de consulta")
         Leia(etres)
         Enquanto (etres <> "sim") faca
            Escreval(" ")
               Repita
                  Escreval("Voce precisar digitar sim")
                  Leia(etres)
                  Escreval("")
               Ate (etres = "sim")
            Fimenquanto
         Limpatela
         Escreval("================================================================")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("=                Sistema Agencia de Viagens                    =")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("=                                                              =")
         Escreval("================================================================")
         Escreval(" ")
         Escreval(" ")
         Escreval("====== Consulta de cliente e seu destino de viagem ======")
         Escreval(" ")
         Escreval(" ")
         Escreva("Digite o codigo cadastrado do cliente que se deseja consultar: ")
         Leia(xcc)
         Se (xcc = "0") entao
             cFLAG <- Falso
         Senao
            cPesq <- PESQUISA(xcc)     // Pesquisa o codigo
            Se cPesq > 0 entao         // Se maior que zero esta cadastrado!
               xcc   <-  cc[cPESQ]
               xrn   <-  rn[cPESQ]
               xjf   <-  jf[cPESQ]
               xec   <-  ec[cPESQ]
               xtc   <-  tc[cPESQ]
               xtf   <-  tf[cPESQ]
               xem   <-  em[cPESQ]
               xan   <-  an[cPESQ]
               xdes  <- des[cPESQ]
               xdch  <- dch[cPESQ]
               xdsa  <- dsa[cPESQ]
               xqap  <- qap[cPESQ]
               xaco  <- aco[cPESQ]
               xvda  <- vda[cPESQ]
               xrca  <- rca[cPESQ]
               xcaf  <- caf[cPESQ]
               xpas  <- pas[cPESQ]
               Escreval(" ")
               Escreval("O codigo cadastrado do cliente e: ", xcc)
               Escreval("A razao social ou nome completo do cliente pessoa fisica e: ", xrn)
               Escreval("O CNPJ ou CPF do cliente e: ", xjf)
               Escreval("O endereço completo do cliente e: ", xec)
               Escreval("O celular do cliente e: ", xtc)
               Escreval("O telefone fixo do cliente e: ", xtf)
               Escreval("O e-mail do cliente e: ", xem)
               Escreval("A data de fundacao ou aniversario do cliente e: ", xan)
               Escreval("O nome do destino do cliente e: ", xdes)
               Escreval("A data de chegada do cliente e: ", xdch)
               Escreval("A data de saida do cliente e: ", xdsa)
               Escreval("A quantidade de pessoas que acompanham o  cliente e: ", xqap)
               Escreval("O tipo de acomodação do cliente e: ", xaco)
               Escreval("O valor da diaria de acomodacao do cliente e: ", xvda)
               Escreval("O tipo de reserva, se e possivel o cancelamento gratuito pelo cliente e: ", xrca)
               Escreval("A acomodacao escolhida fornece cafe da manha ao cliente e: ", xcaf)
               Escreval("Os passeios inclusos para o cliente e: ", xpas)
            Senao                                                          // Ainda nao foi cadastrado esse codigo para um cliente e sua viagem
               EscrevaL(" ")
               EscrevaL(" ")
               EscrevaL(" ")
               EscrevaL("O codigo informado nao esta relacionado a nenhum cliente cadastrado")
               Fimse
         Fimse
      Fimse
      xtres <- ""
      Escreval(" ")
      Escreval(" ========================================================================== ")
      Escreval(" ")
      Escreva("Deseja consultar um outro cliente cadastrado, sim ou nao? ")
      Leia(xtres)
         Enquanto ((xtres <> "sim") e (xtres <> "nao") e (xtres <> "Sim") e (xtres <> "Nao")) faca
         Escreval(" ")
            Repita
              Escreval("Você precisar digitar sim ou nao")
              Leia(xtres)
              Escreval("")
            Ate ((xtres = "sim") ou (xtres = "nao") ou (xtres = "Sim") ou (xtres = "Nao"))
        Fimenquanto
        Se ((xtres = "nao") ou (xtres = "Nao")) entao
          cFlag <- Falso
        Senao
          cFlag <- Verdadeiro
        Fimse
      Fimse
   Fimenquanto
FimProcedimento

//----------------------------------------------------------------------------
//---------------- Lista dos cliente e viagens cadastrados -------------------
//----------------------------------------------------------------------------

Procedimento Listagem
Var lFlag      : Logico
    lPesq      : Inteiro
    lis        : inteiro       //Variavel que e alimentada pelo operador com a quantidade de cadastros que foram realizados
    xcc        : caracter
    xrn        : caracter
    xjf        : caracter
    xec        : caracter
    xtc        : caracter
    xtf        : caracter
    xem        : caracter
    xan        : caracter
    xdes       : caracter
    xdch       : caracter
    xdsa       : caracter
    xqap       : caracter
    xaco       : caracter
    xvda       : caracter
    xrca       : caracter
    xcaf       : caracter
    xpas       : caracter
    ecinco     : caracter

Inicio
   limpatela
   Escreval("================================================================")
   Escreval("=                                                              =")
   Escreval("=     Instrucoes de uso: nessa tela voce podera listar a       =")
   Escreval("= quantidade total de clienetes e suas viagens cadastradas     =")
   Escreval("= previamente pelo operador.                                   =")
   Escreval("= Caso nao exista nenhum cadastrado sera informado na tela a   =")
   Escreval("= mensagem de /nao existe nenhum cliente cadastrado/.          =")
   Escreval("=                                                              =")
   Escreval("================================================================")
   Escreval(" ")
   Escreval(" ")
   Escreval("Digite sim para prosseguir para a tela de consulta")
   Leia(ecinco)
      Enquanto (ecinco <> "sim") faca
         Escreval(" ")
         Repita
            Escreval("Voce precisar digitar sim")
            Leia(ecinco)
            Escreval("")
            Ate (ecinco = "sim")
      Fimenquanto
   Limpatela
   Escreval("================================================================")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("=                Sistema Agencia de Viagens                    =")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("================================================================")
   Escreval(" ")
   Escreval(" ")
   Escreval("====== Lista de clientes e seus destinos de viagem ======")
   Escreval(" ")
   Escreval(" ")
   Escreva("Digite a quantidade de clientes cadastrados com suas respectivas viagens: ")
   Leia(lis)
   Para lPesq de 1 ate lis faca
      Escreval("O codigo cadastrado do cliente e: ", cc[lPesq])
      Escreval("A razao social ou nome completo do cliente pessoa fisica e: ", rn[lPesq])
      Escreval("O CNPJ ou CPF do cliente e: ", jf[lPesq])
      Escreval("O endereco completo do cliente e: ", ec[lPesq])
      Escreval("O celular do cliente e: ", tc[lPesq])
      Escreval("O telefone fixo do cliente e: ", tf[lPesq])
      Escreval("O e-mail do cliente e: ", em[lPesq])
      Escreval("A data de fundacao ou aniversario do cliente e: ", an[lPesq])
      Escreval("O nome do destino do cliente e: ", des[lPesq])
      Escreval("A data de chegada do cliente e: ", dch[lPesq])
      Escreval("A data de saida do cliente e: ", dsa[lPesq])
      Escreval("A quantidade de pessoas que acompanham o  cliente e: ", qap[lPesq])
      Escreval("O tipo de acomodacao do cliente e: ", aco[lPesq])
      Escreval("O valor da diaria de acomodacao do cliente e: ", vda[lPesq])
      Escreval("O tipo de reserva, se e possivel o cancelamento gratuito pelo cliente e: ", rca[lPesq])
      Escreval("A acomodacao escolhida fornece cafe da manha ao cliente e: ", caf[lPesq])
      Escreval("Os passeios inclusos para o cliente e: ", pas[lPesq])
      Escreval("")
      Escreval("")
   Fimpara
   Escreva("Pressione a tecla <enter> para voltar a usar o menu de opcoes")
   Leia(X)
FimProcedimento

//////////////////////////////////////////////////////////////////////////////
///////////////////////////// Inicio do programa /////////////////////////////
//////////////////////////////////////////////////////////////////////////////

inicio
   Max_itens <- 5
   x <- Verdadeiro
   FLAG <- Verdadeiro
   Item_cad <- 0
   Enquanto FLAG faca
      X <- Verdadeiro
   limpatela
   Escreval("================================================================")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("=                Sistema Agencia de Viagens                    =")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("=                                                              =")
   Escreval("================================================================")
   Escreval("")
   Escreval("")
   Escreval("")
   Escreval("*** Menu do programa sistema de viagens ***")
   Escreval(" ")
   Escreval("1 - Inclusao de cliente(s) e sua viagen(s)")  // nao e opcional tem q ser inclusao ou cadastrar
   Escreval("2 - Consulta de cliente(s) e sua viagen(s)")
   Escreval("3 - Lista de todos os clientes e suas viagens")
   Escreval("4 - Finalizar sistema de viagens")
   Escreval("  ")
   Escreva("Digite o numero correspondente a opcao do programa que voce deseja executar:")
   Leia(opcao)
   Se ((opcao > "0") e (opcao < "5")) entao
      Escolha opcao
      Caso "1"
         Inclusao        // chama o procedimento inclusao
      Caso "2"
         Consulta        // chama o procedimento consulta
      Caso "3"
         Listagem        // chama o procedimento listagem
      Caso "4"
         FLAG <- Falso   // muda a variável do controle para encerrar o loop
      Fimescolha
   Senao                 // Caso o usuario digite algo que nao sao as opcoes
      Escreval("")
      Escreval("")
      Escreval("Voce nao digitou uma opcao valida")
      Escreval("")
      Escreva("Pressione a tecla <enter> para voltar a usar o menu de opcoes")
      Leia(X)
   Fimse
Fimenquanto


fimalgoritmo


