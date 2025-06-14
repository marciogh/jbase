# JBase PickBasic

- https://docs.rocketsoftware.com/bundle/jbase_lib_61/page/ozw1673031317994.html
- http://www.bitsavers.org/pdf/generalAutomation/zebra/88A00778A02_PICK_BASIC_Reference_Manual_Feb1985.pdf

### Run Environment

```
docker run -it -v ~/projects/jbase/JBASEADM:/jbasedata/dbms/JBASEADM zumasys/jbase
jlogin JBASEADM
```

### Create DB files

```
DELETE-FILE DB.CUSTOMERS
CREATE-FILE DICT DB.CUSTOMERS TYPE=HASH3 23
```

### Compile and Catalog BASIC

```
BASIC BP Helpers.b
CATALOG BP Helpers.b

BASIC BP HelloWorld.b
CATALOG BP HelloWorld.b
HelloWorld

BASIC BP Insert.b
CATALOG BP Insert.b
Insert

BASIC BP List.b
CATALOG BP List.b
List
```

### Run Compile BASIC

```
HelloWorld
```
