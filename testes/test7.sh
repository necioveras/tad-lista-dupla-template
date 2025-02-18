echo "Testando (7)..."
echo

# Teste de uso do malloc
if grep -E '^[^/]*\blistaDup.h\b' ./main.c; then
  echo "Pass: O tipo ListaEncadeada foi importado no código"
else
  echo "Fail: O tipo ListaEncadeada não foi importado no código"
  exit 1
fi

echo
echo "Teste 7 realizado com sucesso"

exit 0
