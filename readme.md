Pour résumer :
-	Créer un fichier dockerfile (ou/et dockercompose) et donner toutes les informations comme l’image et les commande que le docker doit faire.
-	Sur windows il faut installer le logiciel docker desktop
-	Cette commande pour créer un container : docker build -t ubuntunode . 
-	Pour run le container : docker run --name ubuntunode --link mysql-container:mysql -p 3000:3000 -d ubuntunode:latest
-	Ensuite, on pourras également utiliser docker hub (un outil en ligne) pour push sont docker comme un github.


UPDATE :
- faire la commande : docker-compose up