echo "Testando (42 comandos)..."
echo

output=$(./a.out < ./testes/input2.txt)
expected_output="Lista: A B C D E
Posição do elemento C: 3
Posição do elemento Z: -1
Lista: A F B C D E
Lista: A F B G C D E
Lista: A F G C D E
Lista: A F G C D
Lista: A F D
Lista: F D
Posição do elemento A: -1
Posição do elemento X: -1
Tamanho da lista: 2
Lista: F H D
Lista: F H I D
Lista: F H I J D
Lista: F H I J K D
Lista: F H I J K D
Lista: F I J K D
Lista: F I K D
Posição do elemento I: 2
Posição do elemento K: 3
Tamanho da lista: 3
Lista vazia
Lista: M O P Q N
Posição do elemento M: 1
Posição do elemento N: 5
Posição do elemento O: 2
Posição do elemento P: 3
Posição do elemento Q: 4
Lista: M P Q N
Lista: M P N
Lista: M N
Lista: N
Posição do elemento N: 1
Tamanho da lista: 1
Lista vazia."


if [ $? -eq 0 ] ; then
  echo "Running ok: Program exited zero"
else
  echo "Fail on running: Program did not exit zero"
  exit 1
fi

if [ "$output" == "$expected_output" ] ; then
  echo "Pass: A saida esperada esta correta"
else
  echo "Era esperado '$expected_output' mas o programa retornou: $output"
  exit 1
fi

echo
echo "Teste 2 realizado com sucesso"

exit 0