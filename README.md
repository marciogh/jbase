# JBase PickBasic

- https://docs.rocketsoftware.com/bundle/jbase_lib_61/page/ozw1673031317994.html
- http://www.bitsavers.org/pdf/generalAutomation/zebra/88A00778A02_PICK_BASIC_Reference_Manual_Feb1985.pdf

### Run Environment

```
docker run -it -v ~/projects/jbase/JBASEADM:/jbasedata/dbms/JBASEADM zumasys/jbase
jlogin JBASEADM
```

### Create DB file

```
DELETE-FILE DB.DATA
CREATE-FILE DICT DB.DATA TYPE=HASH3 23
```

### Compile and Catalog BASIC

```
BASIC BP HelloWorld.b
CATALOG BP HelloWorld.b

BASIC BP Insert.b
CATALOG BP Insert.b

BASIC BP List.b
CATALOG BP List.b
```

### Run Compile BASIC

```
HelloWorld
```
