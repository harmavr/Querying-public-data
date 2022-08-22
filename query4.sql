    -- Χρονολογία 100 blocks με τα περισσότερα fees

     SELECT fee, block_timestamp  
     FROM `bigquery-public-data.crypto_bitcoin.transactions`  
     ORDER BY fee DESC  
     LIMIT 100  