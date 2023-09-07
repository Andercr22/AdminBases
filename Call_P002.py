import datetime

import cx_Oracle


def show_process_info():
    """Version con configuration file"""
    try:
        # create a connection to the Oracle Database
        connection = cx_Oracle.connect("system/root@localhost:1521/XE")
        cursor = connection.cursor()
        # Create a variable to hold the result set
        result_cursor = cursor.var(cx_Oracle.CURSOR)
        # call the stored procedure
        cursor.callproc("sys.P002", (result_cursor,))
        # Fetch the result from the result variable
        results = result_cursor.getvalue()
        # Process the result
        for row in results:
            timestamp, username, process_id, sql_text = row
            print(
                "Timestamp: ",
                datetime.datetime.strptime(str(timestamp), "%Y-%m-%d %H:%M:%S.%f"),
            )
            print("Username: ", str(username))
            print("PID: ", int(process_id))
            print("SQL Text: ", str(sql_text))
        # Cerrar la conexión
        cursor.close()
        connection.close()
    except cx_Oracle.Error as error:
        print(error)


show_process_info()
