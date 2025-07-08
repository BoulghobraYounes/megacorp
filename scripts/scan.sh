echo -e "\n====== SCANNING FOR CREDIT CARD NUMBER ======"
grep -rE --color=always --exclude-dir=.git '([0-9]{4}[- ]?){3}[0-9]{4}' . --line-number
echo "======== CREDIT CARD SCAN COMPLETE ========"
echo -e "\n====== SCANNING FOR SOCIAL SECURITY NUMBERS ======"
grep -rE --color=always --exclude-dir=.git '[0-9]{3}-[0-9]{2}-[0-9]{4}' . --line-number
echo "======== SOCIAL SECURITY SCAN COMPLETE ========"
echo -e "\n====== SCANNING FOR PHONE NUMBERS ======"
grep -rE --color=always '\b[0-9]{3}[-. ][0-9]{3}[-. ][0-9]{4}\b' . 
grep -rE --color=always '\([0-9]{3}\)[-. ]?[0-9]{3}[-. ][0-9]{4}' . 
echo "======== PHONE NUMBER SCAN COMPLETE ========"
