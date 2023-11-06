# ahls-skriptid

See repositori sisaldab skripte, kasutades Ansible Agentless Host Lifecycle Support (AHLS) tarkvara, mis võimaldab lihtsasti hallata Linuxi masinaid, mis ei ole Ansible Toweri serveriga ühendatud. 
Lisaks on Ansible skriptidest bash skriptid, mis võimaldavad lihtsasti hallata Linuxi masinaid, mis ei ole Ansible Toweri serveriga ühendatud.

## Skriptide kasutamine
Kõik skriptid on kirjutatud Debian 11 (Bullseye) operatsioonisüsteemile. 

Skriptide kasutamiseks tuleb kõigepealt alla laadida skriptid ja anda neile õigused käivitamiseks.
```
git clone https://github.com/Harmless5/ahls-skriptid
cd ahls-skriptid
chmod +x *.sh
```

Skriptide käivitamiseks tuleb kasutada järgmist käsku:
```
ansible-playbook  <faili/asukoht/skripti nimi> -K
```

## Skriptide kirjeldused
### Praks 1
- [**apache2.yml**](./praks1/apache2.yml) - Apache2 paigaldamine, public_html kausta loomine, taaskäivitamine, index.html faili loomine ja sellele sisu lisamine.

### Praks 2
- [**php.yml**](./praks2/php.yml) - PHP paigaldamine ja sellele vajalike lisade paigaldamine.

### Praks 3
- [**mysql.yml**](./praks3/mysql.yml) - MySQL paigaldamine, kasutaja loomine, andmebaasi loomine, andmebaasi kasutaja loomine ja taaskäivitamine.

### Praks 4
- [**phpmyadmin.yml**](./praks4/phpmyadmin.yml) - PHPMyAdmini paigaldamine, koos vajalike lisadega ja phpmyadmini kausta nime muutmine.

### Praks 5
- [**wordpress.yml**](./praks5/wordpress.yml) - Wordpressi paigaldamine, andmebaasi loomine, andmebaasi kasutaja loomine, andmebaasi kasutaja õiguste andmine, Wordpressi konfiguratsiooni faili loomine ja taaskäivitamine.

## Bash skriptide kirjeldused
### Praks 1
- [**apache2.sh**](./praks1/apache_paigaldus.sh) - Skript, mis kontrollib, kas Apache2 on paigaldatud. Kui ei ole, siis paigaldab selle.

### Praks 2
- [**php_paigaldus.sh**](./praks2/php_paigaldus.sh) - Skript, mis kontrollib, kas PHP on paigaldatud. Kui ei ole, siis paigaldab kõige uuema versiooni PHP-st.

### Praks 3
- [**mysql_paigaldus.sh**](./praks3/mysql_paigaldus.sh) - Skript, mis kontrollib, kas MySQL (mysql-server) on paigaldatud. Kui ei ole, siis paigaldab selle.

### Praks 4
- [**phpmyadmin_paigaldus.sh**](./praks4/phpmyadmin_paigaldus.sh) - Skript, mis kontrollib, kas PHPMyAdmin on paigaldatud. Kui ei ole, siis paigaldab selle koos vajalike lisadega.

### Praks 5
- [**wordpress_paigaldus.sh**](./praks5/wordpress_paigaldus.sh) - Skript, mis kontrollib, kas Wordpress on paigaldatud. Kui ei ole, siis paigaldab selle. Pärast seda loob andmebaasi, andmebaasi kasutaja, annab andmebaasi kasutajale õigused, loob Wordpressi konfiguratsiooni faili ja taaskäivitab vajaolevad teenused.
