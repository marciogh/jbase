# JBase PickBasic

- https://docs.rocketsoftware.com/bundle/jbase_lib_61/page/ozw1673031317994.html
- http://www.bitsavers.org/pdf/generalAutomation/zebra/88A00778A02_PICK_BASIC_Reference_Manual_Feb1985.pdf

### Run Environment

```
docker run -it -v ~/projects/jbase/JBASEADM:/jbasedata/dbms/JBASEADM zumasys/jbase
jlogin JBASEADM
```

### DB Structure

```
DB.CUSTOMER
CUSTOMER_ID: Name,Addr

DB.ORDERS
ORDER_ID: COSTUMER_ID

DB.ORDER-ITEMS
ITEM|ORDER_ID: Items[]
QTD|ORDER_ID: Qtd[]
UNIT_PRICE|ORDER_ID: Price[]
```

### Create DB files

```
DELETE-FILE DB.CUSTOMERS
DELETE-FILE DB.ORDERS
DELETE-FILE DB.ORDER_ITEMS

CREATE-FILE DB.CUSTOMERS
CREATE-FILE DB.ORDERS
CREATE-FILE DB.ORDER_ITEMS
```

### Compile and Catalog BASIC

```
BASIC BP AddCustomers.b
CATALOG BP AddCustomers.b

BASIC BP AddOrder.b
CATALOG BP AddOrder.b

BASIC BP AddItem.b
CATALOG BP AddItem.b

BASIC BP List.b
CATALOG BP List.b

AddCustomers
List
AddOrder
AddItem
```
