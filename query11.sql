    -- Για ποιες τιμές target έχουμε μεγαλύτερο Nonce; Πότε συνέβη αυτό;

     SELECT nonce AS max_nonce, bits,timestamp  
     FROM `bigquery-public-data.crypto_bitcoin.blocks`   
     WHERE nonce IN(  
     SELECT MAX(nonce) FROM `bigquery-public-data.crypto_bitcoin.blocks` ) 