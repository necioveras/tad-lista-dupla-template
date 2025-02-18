echo "Testando (remocao de numeros repetidos)..."
echo

output=$(./a.out < ./testes/input4.txt)
expected_output="Lista: A B C A D A E
Lista: B C D E
Posição do elemento A: -1
Posição do elemento B: 1
Posição do elemento C: 2
Posição do elemento D: 3
Posição do elemento E: 4
Tamanho da lista: 4
Lista: B C D E
Lista: N E C I O."


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
echo "Teste 4 realizado com sucesso"

exit 0