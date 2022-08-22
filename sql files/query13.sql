    -- Πόσα blocks έχουν μεγαλύτερο ποσοστό από το μέσο όρο των witness data και πότε συμβαίνει αυτό;

     SELECT timestamp FROM(  
     SELECT stripped_size,size,timestamp from `bigquery-public-data.crypto_bitcoin.blocks`)a  
     FULL OUTER JOIN  
     (SELECT SUM(pososto_witness)/COUNT(size) AS m_o_witness,size  
     FROM(  
     SELECT ((size-stripped_size)/size)*100 AS pososto_witness,((stripped_size)/size)*100 AS pososto_normal,size  
     FROM `bigquery-public-data.crypto_bitcoin.blocks`   
     GROUP BY size,stripped_size  
     )  
     GROUP BY size)b  
     ON a.size=b.size  
     WHERE a.size-stripped_size>m_o_witness  
     GROUP BY timestamp  
     ORDER BY timestamp DESC  