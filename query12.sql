    -- Κατά μέσο όρο, τι ποσοστό του μεγέθους των block είναι witness data και τι κανονικά data;

     SELECT SUM(pososto_witness)/COUNT(size)AS m_o_witness,SUM(pososto_normal)/COUNT(size) AS m_o_normal  
     FROM(  
     SELECT ((size-stripped_size)/size)*100 AS pososto_witness,((stripped_size)/size)*100 AS pososto_normal,size  
     FROM `bigquery-public-data.crypto_bitcoin.blocks`   
     GROUP BY size,stripped_size)  