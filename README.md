# bash_esempio 

Gli esercizi propongono la creazione di script Bash per operazioni su file e directory. Uno script accetta due argomenti per creare un file con un nome e permessi specificati in notazione ottale. Un altro script genera un file eseguibile che stampa "Hello World!". È richiesto verificare se un argomento è una directory esistente e leggibile oppure accettare una directory e un nome di file per creare un file con il percorso assoluto. Si richiede uno script che stampi il primo e l’ultimo argomento con cui è stato invocato, oppure che identifichi se un argomento rappresenta un percorso assoluto, relativo o relativo semplice. È necessario mostrare tutti i file nella directory corrente, ma stampare quelli con estensione `.sh` su stderr, oppure elencare i file contenenti `#!/bin/sh`. Uno script deve distinguere tra file e directory in una directory data, riportandone il conteggio totale. Un altro monitora una directory ogni N secondi, segnalando variazioni nel numero di file e directory.

Uno script esplora ricorsivamente una directory riportando il livello di profondità per ogni sottocartella, utilizzando sia una funzione ricorsiva sia il comando `find`. Altri script cercano file con un certo nome e una lunghezza in linee compresa tra due valori, oppure file contenenti un carattere numerico sia nel nome che nel contenuto. È richiesto trovare directory con un numero di file compreso tra 1 e un valore N, o directory contenenti almeno un file con dimensioni maggiori di N byte, ordinandole per numero di file che soddisfano questa condizione. È necessario cercare file con un dato nome, stampandone percorso e righe iniziali/finali, oppure creare link simbolici in `/tmp` per tali file. Si devono individuare directory contenenti due file specificati, stampandone percorso e somma delle dimensioni, o contare occorrenze di tali file.

Uno script identifica directory in cui il numero di file e sottodirectory è uguale o diverso, a seconda di un parametro. Si sommano le dimensioni di file leggibili in directory specificate, oppure si cerca file con un numero di linee maggiore o uguale a un valore e si salva la penultima linea in `/tmp/script.log`. Si registra nome, byte e linee dei file trovati in un log, oppure si individuano file modificati nelle ultime 24 ore, creando link simbolici evitando omonimie. Uno script cerca directory in cui la somma delle dimensioni dei file è compresa tra due valori, salvandole ordinate. È necessario individuare directory contenenti almeno uno dei file specificati, ordinandole per numero di file trovati, o verificare la presenza globale di un insieme di file e segnalare quelli mancanti. Infine, si calcola la dimensione media dei file con una data estensione per ciascuna directory specificata.
