    --Πότε είχαμε μεγαλύτερο locktime; 

     SELECT block_timestamp,lock_time  
     FROM `bigquery-public-data.crypto_bitcoin.transactions`  
     WHERE lock_time IN(  
     SELECT MAX(lock_time) FROM `bigquery-public-data.crypto_bitcoin.transactions`)  
     ORDER BY block_timestamp ASC  