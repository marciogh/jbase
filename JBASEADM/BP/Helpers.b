*
* Random String Generator ie: ANDFUE SADJRE
* A = output srting
* B = string size
*
SUBROUTINE SUBROUTINE.RANDOMSTRING(A, B)
A = ""
FOR I = 1 TO B
  A = A : CHAR(RND(24) + 65)
NEXT I
RETURN
