10 GOSUB 9000
1000 PRINT TAB(13);"SALVO"
1010 PRINT TAB(7);"CREATIVE COMPUTING":PRINT TAB(5);"MORRISTOWN, NEW JERSEY"
1020 PRINT:PRINT:PRINT
1030 REM
1040 DIM A(10,10),B(10,10),C(7),D(7),E(12),F(12),G(12),H(12),K(10,10)
1050 Z8=0
1060 FOR W=1 TO 12
1070 E(W)=-1
1080 H(W)=-1
1090 NEXT W
1100 FOR X=1 TO 10
1110 FOR Y=1 TO 10
1120 B(X,Y)=0
1130 NEXT Y
1140 NEXT X
1150 FOR X=1 TO 12
1160 F(X)=0
1170 G(X)=0
1180 NEXT X
1190 FOR X=1 TO 10
1200 FOR Y=1 TO 10
1210 A(X,Y)=0
1220 NEXT Y
1230 NEXT X
1240 FOR K=4 TO 1 STEP -1
1250 U6=0
1260 GOSUB 2910
1270 DEF FNA(K)=(5-K)*3-2*INT(K/4)+SGN(K-1)-1
1280 DEF FNB(K)=K+INT(K/4)-SGN(K-1)
1290 IF V+V2+V*V2=0 THEN 1260
1300 IF Y+V*FNB(K)>10 THEN 1260
1310 IF Y+V*FNB(K)<1 THEN 1260
1320 IF X+V2*FNB(K)>10 THEN 1260
1330 IF X+V2*FNB(K)<1 THEN 1260
1340 U6=U6+1
1350 IF U6>25 THEN 1190
1360 FOR Z=0 TO FNB(K)
1370 F(Z+FNA(K))=X+V2*Z
1380 G(Z+FNA(K))=Y+V*Z
1390 NEXT Z
1400 U8=FNA(K)
1405 IF U8>U8+FNB(K) THEN 1460
1410 FOR Z2= U8 TO U8+FNB(K)
1415 IF U8<2 THEN 1450
1420 FOR Z3=1 TO U8-1
1430 IF SQR((F(Z3)-F(Z2))^2 + (G(Z3)-G(Z2))^2) < 3.59 THEN 1260
1440 NEXT Z3
1450 NEXT Z2
1460 FOR Z=0 TO FNB(K)
1470 A(F(Z+U8),G(Z+U8))=.5+SGN(K-1)*(K-1.5)
1480 NEXT Z
1490 NEXT K
1500 PRINT "ENTER COORDINATES FOR..."
1510 PRINT "BATTLESHIP"
1520 FOR X=1 TO 5
1530 INPUT Y,Z
1540 B(Y,Z)=3
1550 NEXT X
1560 PRINT "CRUISER"
1570 FOR X=1 TO 3
1580 INPUT Y,Z
1590 B(Y,Z)=2
1600 NEXT X
1610 PRINT "DESTROYER<A>"
1620 FOR X=1 TO 2
1630 INPUT Y,Z
1640 B(Y,Z)=1
1650 NEXT X
1660 PRINT "DESTROYER<B>"
1670 FOR X=1 TO 2
1680 INPUT Y,Z
1690 B(Y,Z)=.5
1700 NEXT X
1710 PRINT "DO YOU WANT TO START";
1720 INPUT J$
1730 IF J$<>"WHERE ARE YOUR SHIPS?" THEN 1890
1740 PRINT "BATTLESHIP"
1750 FOR Z=1 TO 5
1760 PRINT F(Z);G(Z)
1770 NEXT Z
1780 PRINT "CRUISER"
1790 PRINT F(6);G(6)
1800 PRINT F(7);G(7)
1810 PRINT F(8);G(8)
1820 PRINT "DESTROYER<A>"
1830 PRINT F(9);G(9)
1840 PRINT F(10);G(10)
1850 PRINT "DESTROYER<B>"
1860 PRINT F(11);G(11)
1870 PRINT F(12);G(12)
1880 GOTO 1710
1890 C=0
1900 PRINT "DO YOU WANT TO SEE MY SHOTS";
1910 INPUT K$
1920 PRINT
1930 IF J$<>"YES" THEN 2620
1940 REM*******************START
1950 IF J$<>"YES" THEN 1990
1960 C=C+1
1970 PRINT
1980 PRINT "TURN";C
1990 A=0
2000 FOR W=.5 TO 3 STEP .5
2010 FOR X=1 TO 10
2020 FOR Y=1 TO 10
2030 IF B(X,Y)=W THEN 2070
2040 NEXT Y
2050 NEXT X
2060 GOTO 2080
2070 A=A+INT(W+.5)
2080 NEXT W
2090 FOR W=1 TO 7
2100 C(W)=0
2110 D(W)=0
2120 F(W)=0
2130 G(W)=0
2140 NEXT W
2150 P3=0
2160 FOR X=1 TO 10
2170 FOR Y=1 TO 10
2180 IF A(X,Y)>10 THEN 2200
2190 P3=P3+1
2200 NEXT Y
2210 NEXT X
2220 PRINT "YOU HAVE";A;"SHOTS."
2230 IF P3>=A THEN 2260
2240 PRINT "YOU HAVE MORE SHOTS THAN THERE ARE BLANK SQUARES."
2250 GOTO 2890
2260 IF A<>0 THEN 2290
2270 PRINT "I HAVE WON."
2280 STOP
2290 FOR W=1 TO A
2300 INPUT X,Y
2310 IF X<>INT(X) THEN 2370
2320 IF X>10 THEN 2370
2330 IF X<1 THEN 2370
2340 IF Y<>INT(Y) THEN 2370
2350 IF Y>10 THEN 2370
2360 IF Y>=1 THEN 2390
2370 PRINT "ILLEGAL, ENTER AGAIN."
2380 GOTO 2300
2390 IF A(X,Y)>10 THEN 2440
2400 C(W)=X
2410 D(W)=Y
2420 NEXT W
2430 GOTO 2460
2440 PRINT "YOU SHOT THERE BEFORE ON TURN";A(X,Y)-10
2450 GOTO 2300
2460 FOR W=1 TO A
2470 IF A(C(W),D(W))=3 THEN 2540
2480 IF A(C(W),D(W))=2 THEN 2560
2490 IF A(C(W),D(W))=1 THEN 2580
2500 IF A(C(W),D(W))=.5 THEN 2600
2510 A(C(W),D(W))=10+C
2520 NEXT W
2530 GOTO 2620
2540 PRINT "YOU HIT MY BATTLESHIP."
2550 GOTO 2510
2560 PRINT "YOU HIT MY CRUISER."
2570 GOTO 2510
2580 PRINT "YOU HIT MY DESTROYER<A>."
2590 GOTO 2510
2600 PRINT "YOU HIT MY DESTROYER<B>."
2610 GOTO 2510
2620 A=0
2630 IF J$="YES" THEN 2670
2640 C=C+1
2650 PRINT
2660 PRINT "TURN";C
2670 A=0
2680 FOR W=.5 TO 3 STEP .5
2690 FOR X=1 TO 10
2700 FOR Y=1 TO 10
2710 IF A(X,Y)=W THEN 2750
2720 NEXT Y
2730 NEXT X
2740 GOTO 2760
2750 A=A+INT(W+.5)
2760 NEXT W
2770 P3=0
2780 FOR X=1 TO 10
2790 FOR Y=1 TO 10
2800 IF A(X,Y)>10 THEN 2820
2810 P3=P3+1
2820 NEXT Y
2830 NEXT X
2840 PRINT "I HAVE";A;"SHOTS."
2850 IF P3>A THEN 2880
2860 PRINT "I HAVE MORE SHOTS THAN BLANK SQUARES."
2870 GOTO 2270
2880 IF A<>0 THEN 2960
2890 PRINT "YOU HAVE WON."
2900 STOP
2910 X=INT(RND(1)*10+1)
2920 Y=INT(RND(1)*10+1)
2930 V=INT(3*RND(1)-1)
2940 V2=INT(3*RND(1)-1)
2950 RETURN
2960 FOR W=1 TO 12
2970 IF H(W)>0 THEN 3800
2980 NEXT W
2990 REM*******************RANDOM
3000 W=0
3010 R3=0
3020 GOSUB 2910
3030 RESTORE
3040 R2=0
3050 R3=R3+1
3060 IF R3>100 THEN 3010
3070 IF X>10 THEN 3110
3080 IF X>0 THEN 3120
3090 X=1+INT(RND(1)*2.5)
3100 GOTO 3120
3110 X=10-INT(RND(1)*2.5)
3120 IF Y>10 THEN 3160
3130 IF Y>0 THEN 3270
3140 Y=1+INT(RND(1)*2.5)
3150 GOTO 3270
3160 Y=10-INT(RND(1)*2.5)
3170 GOTO 3270
3180 F(W)=X
3190 G(W)=Y
3200 IF W=A THEN 3380
3210 IF R2=6 THEN 3030
3220 READ X1,Y1
3230 R2=R2+1
3240 DATA 1,1,-1,1,1,-3,1,1,0,2,-1,1
3250 X=X+X1
3260 Y=Y+Y1
3270 IF X>10 THEN 3210
3280 IF X<1 THEN 3210
3290 IF Y>10 THEN 3210
3300 IF Y<1 THEN 3210
3310 IF B(X,Y)>10 THEN 3210
3320 FOR Q9=1 TO W
3330 IF F(Q9)<>X THEN 3350
3340 IF G(Q9)=Y THEN 3210
3350 NEXT Q9
3360 W=W+1
3370 GOTO 3180
3380 IF K$<>"YES" THEN 3420
3390 FOR Z5=1 TO A
3400 PRINT F(Z5);G(Z5)
3410 NEXT Z5
3420 FOR W=1 TO A
3430 IF B(F(W),G(W))=3 THEN 3500
3440 IF B(F(W),G(W))=2 THEN 3520
3450 IF B(F(W),G(W))=1 THEN 3560
3460 IF B(F(W),G(W))=.5 THEN 3540
3470 B(F(W),G(W))=10+C
3480 NEXT W
3490 GOTO 1950
3500 PRINT "I HIT YOUR BATTLESHIP"
3510 GOTO 3570
3520 PRINT "I HIT YOUR CRUISER"
3530 GOTO 3570
3540 PRINT "I HIT YOUR DESTROYER<B>"
3550 GOTO 3570
3560 PRINT "I HIT YOUR DESTROYER<A>"
3570 FOR Q=1 TO 12
3580 IF E(Q)<>-1 THEN 3730
3590 E(Q)=10+C
3600 H(Q)=B(F(W),G(W))
3610 M3=0
3620 FOR M2=1 TO 12
3630 IF H(M2)<>H(Q) THEN 3650
3640 M3=M3+1
3650 NEXT M2
3660 IF M3<>INT(H(Q)+.5)+1+INT(INT(H(Q)+.5)/3) THEN 3470
3670 FOR M2=1 TO 12
3680 IF H(M2)<>H(Q) THEN 3710
3690 E(M2)=-1
3700 H(M2)=-1
3710 NEXT M2
3720 GOTO 3470
3730 NEXT Q
3740 PRINT "PROGRAM ABORT:"
3750 FOR Q=1 TO 12
3760 PRINT "E(";Q;") =";E(Q)
3770 PRINT "H(";Q;") =";H(Q)
3780 NEXT Q
3790 STOP
3800 REM************************USINGEARRAY
3810 FOR R=1 TO 10
3820 FOR S=1 TO 10
3830 K(R,S)=0
3840 NEXT S
3850 NEXT R
3860 FOR U=1 TO 12
3870 IF E(U)<10 THEN 4020
3880 FOR R=1 TO 10
3890 FOR S=1 TO 10
3900 IF B(R,S)<10 THEN 3930
3910 K(R,S)=-10000000
3920 GOTO 4000
3930 FOR M=SGN(1-R) TO SGN(10-R)
3940 FOR N=SGN(1-S) TO SGN(10-S)
3950 IF N+M+N*M=0 THEN 3980
3960 IF B(R+M,S+N)<>E(U) THEN 3980
3970 K(R,S)=K(R,S)+E(U)-S*INT(H(U)+.5)
3980 NEXT N
3990 NEXT M
4000 NEXT S
4010 NEXT R
4020 NEXT U
4030 FOR R=1 TO A
4040 F(R)=R
4050 G(R)=R
4060 NEXT R
4070 FOR R=1 TO 10
4080 FOR S=1 TO 10
4090 Q9=1
4100 FOR M=1 TO A
4110 IF K(F(M),G(M))>=K(F(Q9),G(Q9)) THEN 4130
4120 Q9=M
4130 NEXT M
4131 IF R>A THEN 4140
4132 IF R=S THEN 4210
4140 IF K(R,S)<K(F(Q9),G(Q9)) THEN 4210
4150 FOR M=1 TO A
4160 IF F(M)<>R THEN 4190
4170 IF G(M)=S THEN 4210
4180 NEXT M
4190 F(Q9)=R
4200 G(Q9)=S
4210 NEXT S
4220 NEXT R
4230 GOTO 3380
4240 END
9000 SCREEN 1,1,1:CLS
9010 I=RND(-TIME): REM TO RANDOMIZE
9020 RETURN
9030 K$=INKEY$:IF K$="" THEN 9030
9040 RETURN
