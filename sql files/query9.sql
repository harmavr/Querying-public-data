    -- Ποιο block είχε τις περισσότερες εξόδους;

     SELECT output_value,block_timestamp,block_hash  
     FROM `bigquery-public-data.crypto_bitcoin.transactions`  
     WHERE output_value IN(  
     SELECT MAX(output_value) FROM `bigquery-public-data.crypto_bitcoin.transactions`) 