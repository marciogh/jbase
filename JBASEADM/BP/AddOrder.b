PRINT "############################################"
PRINT "# "
PRINT "# ADD ORDER"
PRINT "# "
PRINT "############################################"
PRINT ""
PRINT "CUSTOMER_ID"
INPUT CUSTOMER_ID

OPEN "DB.CUSTOMERS" TO P.CUSTOMERS ELSE STOP ("DB.CUSTOMERS")
READ CUSTOMER FROM P.CUSTOMERS, CUSTOMER_ID ELSE STOP (CUSTOMER_ID)

OPEN "DB.ORDERS" TO P.ORDERS ELSE STOP ("DB.ORDERS")

CALL SUBROUTINE.RANDOMSTRING(NEW_ORDER_ID, 8)
WRITE CUSTOMER_ID ON P.ORDERS, NEW_ORDER_ID
PRINT "ORDER " : NEW_ORDER_ID : " CREATED FOR CUSTOMER #" : CUSTOMER_ID : " " : CUSTOMER<1>

PRINT ""
