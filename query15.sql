     --Ποιες διευθύνσεις έχουν τα μεγαλύτερα input.values και output.values; Πότε και ποιες ήταν οι τιμές τους

     SELECT addresses,block_timestamp  
     FROM `bigquery-public-data.crypto_bitcoin.transactions`,UNNEST(inputs)  
     WHERE value IN(  
     SELECT MAX(value) FROM `bigquery-public-data.crypto_bitcoin.transactions` ,UNNEST(inputs))  