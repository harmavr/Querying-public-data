    --Ποιο block έχει τις περισσότερες συναλλαγές;

     SELECT `bigquery-public-data.crypto_bitcoin.blocks`.hash ,timestamp, transaction_count  
     FROM `bigquery-public-data.crypto_bitcoin.blocks`   
     WHERE transaction_count IN(  
     SELECT MAX(transaction_count)  
     FROM `bigquery-public-data.crypto_bitcoin.blocks`) 