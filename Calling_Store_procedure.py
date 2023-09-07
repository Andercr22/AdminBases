import cx_Oracle


def show_cache_memory_usage():
    """Version con configuration file"""
    try:
        # create a connection to the Oracle Database
        connection = cx_Oracle.connect("system/root@localhost:1521/XE")
        cursor = connection.cursor()
        # Create a variable to hold the result set
        result_cursor = cursor.var(cx_Oracle.CURSOR)
        # call the stored procedure
        cursor.callproc("sys.P001", (result_cursor,))
        # Fetch the result from the result variable
        results = result_cursor.getvalue()
        # Process the result
        for row in results:
            print("CACHE_TOTAL_SIZE: ", int(row[0]))
            print("CACHE_TOTAL_USED: ", int(row[1]))
            print("FREE_CACHE_MEM: ", int(row[2]))
        # Cerrar la conexión
        cursor.close()
        connection.close()
    except cx_Oracle.Error as error:
        print(error)


show_cache_memory_usage()
