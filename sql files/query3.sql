    -- Ποια version των blocks είναι η πιο συχνή;

     SELECT version,count(version) AS total    
     FROM `bigquery-public-data.crypto_bitcoin.blocks`  
     GROUP BY version  
     ORDER BY total DESC 