CREATE OR REPLACE PROCEDURE P001(
    OUT v_total_cache_size NUMBER,
    OUT v_cache_used_MB NUMBER,
    OUT v_free_cache_MEM NUMBER
)
IS
BEGIN

    -- Obtener el tamaño total de la cache
    SELECT BYTES/1024/1024 INTO v_total_cache_size
    FROM v$sgainfo
    WHERE NAME LIKE '%Buffer Cache Size%';

    -- Obtener la memoria Cache utilizada
    SELECT ROUND((SELECT COUNT(*) FROM v$bh) * (SELECT block_size FROM v$buffer_pool)/1024/1024) INTO v_cache_used_MB
    FROM dual;

    v_free_cache_MEM := v_total_cache_size - v_cache_used_MB;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);

END;
/
