# Redis

Redis only allows to store string, bytes and numbers (and lists thereof).
Whatever you store as single elements, it will be returned as a byte string. 
Hence if you store "a" as a UTF-8 string, it will be returned as b"a" when 
retrieved from the server.
