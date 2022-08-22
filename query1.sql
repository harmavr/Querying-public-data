    -- Ποια περίοδο έχουμε περισσότερα blocks και πόσα είναι αυτά;
    
     SELECT timestamp,size  
     FROM  `bigquery-public-data.crypto_bitcoin.blocks`  
     WHERE size IN(  
     SELECT max(size) FROM `bigquery-public-data.crypto_bitcoin.blocks`  
     )  