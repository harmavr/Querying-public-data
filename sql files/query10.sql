    -- Πότε και ποια συναλλαγή έγινε πρώτη;

     SELECT block_timestamp,block_hash  
     FROM `bigquery-public-data.crypto_bitcoin.transactions`  
     WHERE block_timestamp IN(  
     SELECT MIN(block_timestamp) FROM `bigquery-public-data.crypto_bitcoin.transactions`)  