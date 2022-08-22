    -- Ποιο block είχε τις περισσότερες εισόδους και πότε;

     SELECT input_value,block_timestamp,block_hash  
     FROM `bigquery-public-data.crypto_bitcoin.transactions`  
     WHERE input_value in(  
     SELECT MAX(input_value) FROM `bigquery-public-data.crypto_bitcoin.transactions`)  