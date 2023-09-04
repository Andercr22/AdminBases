CREATE OR REPLACE PROCEDURE P001
(
        OUT_TOTAL_CACHE_SIZE OUT NUMBER,
        OUT_CACHE_USED_MB OUT NUMBER,
        OUT_FREE_CACHE_MEM OUT NUMBER
  )
    IS
    BEGIN
  -- Obtener el tamaño total de la cache
        SELECT BYTES/1024/1024 INTO OUT_TOTAL_CACHE_SIZE
      FROM v$sgainfo
      WHERE NAME LIKE '%Buffer Cache Size%';

      -- Obtener la memoria Cache utilizada
      SELECT ROUND((SELECT COUNT(*) FROM v$bh) * (SELECT block_size FROM v$buffer_pool)/1024/1024) INTO OUT_CACHE_USED_MB
      FROM dual;

      OUT_FREE_CACHE_MEM := OUT_TOTAL_CACHE_SIZE - OUT_CACHE_USED_MB;
  END;
  /