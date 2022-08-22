    -- Υπάρχουν blocks που φτάνουν στο ανώτατο χωρικό όριο; Και αν ναι ποια περίοδο;

     SELECT  timestamp,weight FROM `bigquery-public-data.crypto_bitcoin.blocks`   
     WHERE weight in(  
     SELECT MAX(weight) FROM `bigquery-public-data.crypto_bitcoin.blocks`  
     )  
     ORDER BY timestamp DESC 