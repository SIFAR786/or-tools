************************************************************************
file with basedata            : cm146_.bas
initial value random generator: 533726319
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  80
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       33        3       33
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           5  10  11
   3        1          3           6  12  14
   4        1          2           7  14
   5        1          3           8  13  17
   6        1          3           8   9  15
   7        1          3           9  10  12
   8        1          1          16
   9        1          2          11  13
  10        1          2          15  17
  11        1          1          17
  12        1          1          13
  13        1          1          16
  14        1          2          15  16
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       3    9    3    3
  3      1     8       3    6    9    9
  4      1     3       5    8    3    7
  5      1     3       3    7    7    5
  6      1     4       8    2    3    9
  7      1     6      10    7    3    4
  8      1     4       9    6    3    1
  9      1     8       3    4    8    5
 10      1     4       6    6    8    3
 11      1     9       5    2    6    2
 12      1     7       2    2    5    6
 13      1     9       8    5    4    7
 14      1     1       7    3    2    5
 15      1     2       9    4    5    3
 16      1     3       4    7    2    2
 17      1     4      10    6    9    7
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   18   16   80   78
************************************************************************