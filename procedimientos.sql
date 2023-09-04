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
  
  
  
  
  
  
  
  CREATE OR REPLACE PROCEDURE P002(cur OUT SYS_REFCURSOR)

IS

    v_timestamp TIMESTAMP;

 

    CURSOR data_cursor IS

        -- Obtener información sobre los procesos actuales

        SELECT s.USERNAME, p.PID, oc.SQL_TEXT

        FROM v$session s, v$process p, v$process_memory pm, V$OPEN_CURSOR oc

        WHERE s.paddr = p.addr

        AND p.pid = pm.pid

        AND oc.SQL_ID = s.SQL_ID

        AND (pm.category LIKE '%PL/SQL%' OR pm.category LIKE '%SQL%');

 

    v_username v$session.USERNAME%TYPE;

    v_process_id v$process.PID%TYPE;

    v_sql_text V$OPEN_CURSOR.SQL_TEXT%TYPE;

 

BEGIN

    -- Obtener la marca de tiempo actual

    SELECT systimestamp INTO v_timestamp FROM dual;

 

    OPEN data_cursor;

 

    -- Abre el cursor para pasar los resultados al cursor de salida

    OPEN cur FOR

        SELECT v_timestamp, s.USERNAME, p.PID, oc.SQL_TEXT

        FROM v$session s, v$process p, v$process_memory pm, V$OPEN_CURSOR oc

        WHERE s.paddr = p.addr

        AND p.pid = pm.pid

        AND oc.SQL_ID = s.SQL_ID

        AND (pm.category LIKE '%PL/SQL%' OR pm.category LIKE '%SQL%');

 

    CLOSE data_cursor;

 

EXCEPTION

    WHEN OTHERS THEN

        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);

END;

/