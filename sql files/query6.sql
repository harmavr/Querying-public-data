    -- Ποιες περιόδους είχαμε το μικρότερο target-bit αριθμό;

     SELECT  timestamp, bits    
     FROM `bigquery-public-data.crypto_bitcoin.blocks`     
     WHERE bits IN(    
     SELECT MIN(bits)    
     FROM `bigquery-public-data.crypto_bitcoin.blocks`)    
     ORDER BY timestamp DESC  