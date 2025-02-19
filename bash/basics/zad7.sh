# 7. Automatyczne restartowanie usługi, jeśli wykryje, że nie działa
echo "===== Zadanie 7: Sprawdzanie i restartowanie usługi nginx ====="
SERVICE="nginx"
if ! systemctl is-active --quiet $SERVICE; then
    echo "Usługa $SERVICE nie działa. Restartowanie..."
    systemctl restart $SERVICE
else
    echo "Usługa $SERVICE działa poprawnie."
fi
echo
