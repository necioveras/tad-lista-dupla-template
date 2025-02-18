# **Exercício: Implementando o Tipo Abstrato `Lista Duplamente Encadeada`**

## **Objetivo**  
Praticar a implementação e manipulação de estruturas de dados do tipo **Lista Linear Duplamente Encadeada**, utilizando um TAD (`Tipo Abstrato de Dados`).  

---

## **Enunciado**  

Especifique e implemente um `Tipo Abstrato de Dados` chamado **`TListaDup`**, que manipule dados do tipo **char** e ofereça os seguintes serviços:  

1. **Exibir** todos os elementos armazenados na lista;  
2. **Esvaziar** completamente a lista;  
3. **Inserir** um novo elemento no início da lista;  
4. **Inserir** um novo elemento no final da lista;  
5. **Inserir** um novo elemento em posição específica da lista;  
6. **Remover** um elemento específico da lista pelo valor (obs: todas as ocorrências do valor devem ser removidas);  
7. **Remover** um elemento específico da lista pela posição (obs: a função deve retornar o valor removido);
8. **Buscar** um elemento na lista pelo valor. A função deve retornar a posição do elemento na lista (obs: caso ele não exista, retornar o valor -1);
9. **Obter o tamanho** atual da lista.

A implementação deve utilizar ponteiros para criar e manipular os nós da lista encadeada.  

O programa principal (`main.c`) deve ler comandos via entrada padrão (teclado) para manipular a lista. Os comandos possíveis são:  

- **`-s`** → Exibe o estado atual da lista.  
- **`-c`** → Esvazia a lista.  
- **`-ii X`** → Insere o valor `X` no início da lista.  
- **`-if X`** → Insere o valor `X` no final da lista.  
- **`-i X Y`** → Insere o valor `X` na posição `Y` da lista (posição inicial inicia com 1).  
- **`-r X`** → Remove o elemento `X` da lista.  
- **`-rp X`** → Remove o elemento presente na posição `X` da lista.  
- **`-b X`** → Busca o elemento `X` na lista e informa a posição do elemento.
- **`-t`** → Exibe o tamanho atual da lista.  
- **`-f`** → Finaliza a execução do programa.  

---

## **Exemplo de Uso**

### **Entrada de dados**
```
-ii A -if B -if C -s
-b B
-i D 3 -s
-r A -s
-rp 2 -s
-t
-c -s
-f
```

### **Saída esperada**
```
Lista: A B C
Posição do elemento B: 2
Lista: A B D C
Lista: B D C
Lista: B C
Tamanho da lista: 2
Lista vazia.
```