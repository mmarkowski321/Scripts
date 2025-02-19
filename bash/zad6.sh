#!/bin/bash

# 6. Znajdź 5 największych plików w systemie i wypisz ich rozmiar oraz ścieżkę
echo "===== Zadanie 1: 5 największych plików ====="
find / -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 5
echo
