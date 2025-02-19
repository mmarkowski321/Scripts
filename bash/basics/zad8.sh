# 8. Policz, ile razy dany użytkownik zalogował się do systemu
echo "===== Zadanie 8: Liczba logowań użytkownika ====="
USER="nazwa_użytkownika"
LOGIN_COUNT=$(last | grep "^$USER" | wc -l)
echo "Użytkownik $USER zalogował się $LOGIN_COUNT razy."
echo
