    -- Για ποια block θέλουμε τις περισσότερες υπογραφές;

     SELECT block_timestamp,block_hash, required_signatures FROM `bigquery-public-data.crypto_bitcoin.transactions`,UNNEST(inputs)  
     WHERE required_signatures IN(  
     SELECT MAX(required_signatures) FROM `bigquery-public-data.crypto_bitcoin.transactions` ,UNNEST(inputs))  
     ORDER BY block_timestamp DESC 