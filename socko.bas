'Socko's Adventures!  (The first game ever made based on
'a dog's real experiences.)  A foolish game made by Hacksoft.
'
'You may use parts of the code from this program as long as you are
'sure to say that it was from this program, by Hacksoft.
'
'Features: This game has a good amount of missions, each one different,
'including dropping "doggie mines" in the kitchen, escaping the fat cleaning
'lady, ripping up paper, eating flies, avoiding baths and other stuff all in
'Jamie's apartment.

'HACKSOFT is on the WEB, with other wicked QBasic games. Find us at:

'http://members.aol.com/jeffereys/index.htm

DECLARE SUB hacksoft ()
DECLARE SUB death ()
DECLARE SUB getkey ()
DECLARE SUB title ()
DECLARE SUB apartment ()
DECLARE SUB graphicsload ()
DECLARE SUB sockomoving ()
DECLARE SUB jamiemoving ()
DECLARE SUB dadmoving ()
DECLARE SUB thegame ()
DECLARE SUB story ()
DECLARE SUB mainmenu ()
DECLARE SUB flymoving ()
DECLARE SUB options ()
DECLARE SUB instructions ()
DECLARE SUB womanmoving ()
DECLARE SUB ending ()

DIM SHARED l, u, move$, sockoup(100), sockodown(100), sockoleft(100), sockoright(100)
DIM SHARED dad(100), Jamie(100), jl, ju, dl, du, direction, missiondone, fl, fu, speed
DIM SHARED woman(500), wl, wu

SCREEN 13

hacksoft

graphicsload

title

SUB apartment
CLS
PAINT (25, 25), 7, 15
LINE (80, 70)-(25, 25), 0, B
PAINT (70, 65), 0, 0
PAINT (25, 70), 0, 0
LINE (120, 95)-(25, 70), 0, B
PAINT (110, 90), 0, 0
LINE (120, 130)-(90, 95), 0, B
LINE (90, 130)-(25, 100), 0, B
LINE (155, 130)-(120, 100), 0, B
LINE (250, 130)-(155, 25), 0, B
PAINT (80, 115), 0, 0
PAINT (100, 115), 0, 0
PAINT (135, 115), 0, 0
PAINT (170, 115), 0, 0
LINE (315, 130)-(250, 100), 0, B
LINE (315, 100)-(260, 70), 0, B
LINE (315, 60)-(250, 25), 0, B
LINE (315, 70)-(280, 60), 0, B
PAINT (280, 45), 0, 0
PAINT (290, 65), 0, 0
PAINT (290, 80), 0, 0
PAINT (290, 110), 0, 0
LINE (150, 65)-(85, 25), 0, B
LINE (115, 70)-(90, 65), 0, B
LINE (150, 80)-(125, 65), 0, B
PAINT (109, 68), 0, 0
PAINT (109, 53), 0, 0
PAINT (134, 73), 0, 0
PAINT (114, 78), 6, 7
LINE (214, 43)-(179, 28), 8, B
PAINT (194, 33), 8, 8
LINE (204, 43)-(189, 33), 16, B
LINE (157, 37)-(171, 29), 16
LINE (171, 29)-(177, 37), 16
LINE (177, 37)-(163, 44), 16
LINE (163, 44)-(157, 37), 16
LINE (165, 37)-(165, 37), 114
PAINT (168, 36), 114, 16
LINE (247, 95)-(236, 81), 16, B
PAINT (244, 91), 114, 16
LINE (226, 67)-(239, 77), 16
LINE (239, 77)-(250, 69), 16
LINE (250, 69)-(240, 60), 16
LINE (240, 60)-(226, 67), 16
LINE (230, 65)-(238, 71), 16
LINE (235, 74)-(235, 74), 16
PAINT (240, 68), 114, 16
LINE (235, 74)-(245, 65), 16
LINE (242, 67)-(238, 61), 16
LINE (238, 55)-(248, 61), 16
LINE (248, 61)-(253, 56), 16
LINE (253, 56)-(243, 50), 16
LINE (243, 50)-(238, 55), 16
LINE (170, 56)-(158, 47), 16, B
LINE (157, 87)-(157, 59), 16, B
LINE (173, 87)-(157, 87), 16, B
LINE (173, 60)-(173, 87), 16, B
LINE (157, 59)-(173, 59), 16, B
LINE (163, 59)-(163, 87), 16
LINE (163, 83)-(173, 83), 16
LINE (173, 63)-(163, 63), 16
LINE (163, 66)-(157, 66), 16
LINE (157, 76)-(163, 76), 16
LINE (170, 99)-(159, 90), 16, B
LINE (300, 47)-(276, 33), 16, B
LINE (276, 83)-(263, 72), 16, B
LINE (269, 90)-(263, 86), 16, B
PAINT (267, 88), 15, 16
LINE (259, 132)-(251, 119), 7, B
PAINT (254, 122), 7, 7
LINE (274, 129)-(262, 119), 16, B
LINE (277, 121)-(313, 129), 16, B
LINE (312, 81)-(304, 121), 16, B
PAINT (267, 126), 15, 16
LINE (89, 108)-(85, 99), 7, B
PAINT (87, 105), 7, 7
LINE (74, 130)-(59, 117), 16, B
LINE (50, 129)-(39, 125), 16, B
LINE (42, 124)-(40, 121), 16
LINE (40, 121)-(40, 117), 16
LINE (40, 117)-(43, 114), 16
LINE (43, 114)-(47, 114), 16
LINE (47, 114)-(50, 117), 16
LINE (50, 117)-(50, 121), 16
LINE (50, 121)-(47, 123), 16
LINE (47, 123)-(48, 125), 16
PAINT (44, 117), 15, 16
PAINT (44, 127), 15, 16
PAINT (64, 127), 15, 16
LINE (70, 128)-(65, 127), 8, B
LINE (68, 127)-(67, 125), 8, B
LINE (65, 126)-(64, 124), 16
LINE (64, 124)-(63, 122), 16
LINE (63, 122)-(65, 120), 16
LINE (65, 120)-(70, 121), 16
LINE (70, 121)-(71, 123), 16
LINE (71, 123)-(70, 126), 16
LINE (75, 66)-(50, 46), 16, B
LINE (68, 46)-(68, 66), 16
PAINT (63, 52), 9, 16
PAINT (72, 52), 15, 16
LINE (107, 52)-(87, 27), 16, B
LINE (87, 32)-(107, 32), 16
PAINT (97, 37), 12, 16
PAINT (97, 30), 15, 16
LINE (115, 69)-(110, 66), 7, B
LINE (114, 68)-(111, 67), 7, B
LINE (127, 65)-(115, 59), 16, B
LINE (135, 63)-(125, 68), 16, B
LINE (126, 64)-(125, 63), 6, B
LINE (135, 68)-(125, 66), 6, B
LINE (135, 65)-(128, 63), 6, B
LINE (125, 68)-(135, 64), 16
LINE (125, 68)-(125, 71), 16
LINE (125, 71)-(135, 68), 16
LINE (135, 68)-(135, 64), 16
LINE (135, 68)-(138, 64), 16
LINE (138, 64)-(144, 68), 16
LINE (144, 68)-(143, 71), 16
LINE (143, 71)-(136, 67), 16
LINE (140, 37)-(120, 27), 16, B
PAINT (137, 34), 66, 16
LINE (149, 46)-(143, 35), 16, B
LINE (149, 63)-(140, 51), 16, B
LINE (147, 61)-(142, 53), 16, B
PAINT (144, 57), 22, 16
PAINT (131, 67), 15, 16
PAINT (139, 67), 15, 16
LINE (68, 35)-(43, 27), 16, B
LINE (78, 43)-(70, 35), 16, B
LINE (68, 35)-(71, 35), 16
LINE (68, 29)-(74, 35), 16
LINE (38, 68)-(27, 53), 16, B
LINE (36, 130)-(25, 100), 16, B
PAINT (33, 127), 15, 16
LINE (34, 124)-(27, 104), 16, B
PAINT (309, 89), 15, 16
PAINT (299, 124), 15, 16
PAINT (272, 81), 114, 16
PAINT (247, 58), 114, 16
PAINT (167, 68), 114, 16
PAINT (167, 61), 114, 16
PAINT (160, 61), 114, 16
PAINT (160, 69), 114, 16
PAINT (160, 78), 114, 16
PAINT (166, 85), 114, 16
PAINT (121, 63), 114, 16
PAINT (146, 43), 114, 16
PAINT (141, 58), 114, 16
PAINT (61, 33), 114, 16
PAINT (70, 33), 114, 16
PAINT (75, 38), 114, 16
PAINT (35, 58), 114, 16
PAINT (160, 53), 17, 16
PAINT (165, 93), 17, 16
PAINT (285, 43), 66, 16
LINE (89, 108)-(85, 107), 6, B


END SUB

SUB dadmoving
        LINE (dl, du)-(dl + 10, du + 10), 6, BF
        IF dl > l AND POINT(dl - 1, du) = 6 AND POINT(dl - 1, du + 5) = 6 AND POINT(dl - 1, du + 10) = 6 THEN dl = dl - .25
        IF dl < l AND POINT(dl + 11, du) = 6 AND POINT(dl + 11, du + 5) = 6 AND POINT(dl + 11, du + 10) = 6 THEN dl = dl + .25
        IF du > u AND POINT(dl, du - 1) = 6 AND POINT(dl + 5, du - 1) = 6 AND POINT(dl + 10, du - 1) = 6 THEN du = du - .25
        IF du < u AND POINT(dl, du + 11) = 6 AND POINT(dl + 5, du + 11) = 6 AND POINT(dl + 10, du + 11) = 6 THEN du = du + .25
        PUT (dl, du), dad, PSET
        IF dl + 10 > l AND dl < l + 8 AND du + 10 > u AND du < u + 8 THEN
                death
        END IF
END SUB

SUB death
        CLS
        COLOR 6: PRINT "No!  You've been caught, and"
        PRINT "they've won the war!  With you in your"
        PRINT "cage, you are stuck.  Game over!"
        getkey
        mainmenu
END SUB

SUB ending
        COLOR 15
        PRINT "Amazing!  You managed to avoid"
        PRINT "the ultimate of punishments - "
        PRINT "the hugging of a fat chick!"
        PRINT "Are you the worlds greatest dog?"
        PRINT "I don't think so.  But two things are"
        PRINT "proven: you always get your way,"
        PRINT "and you left quite a mess to clean"
        PRINT "up."
        getkey
        title
END SUB

SUB flymoving
        PSET (fl, fu), 6
        movement = INT(RND * 4)
        IF movement = 0 THEN
                IF POINT(fl, fu - 1) = 6 THEN
                        fu = fu - 1
                END IF
        ELSEIF movement = 1 THEN
                IF POINT(fl, fu + 1) = 6 THEN
                        fu = fu + 1
                END IF
        ELSEIF movement = 2 THEN
                IF POINT(fl + 1, fu) = 6 THEN
                        fl = fl + 1
                END IF
        ELSEIF movement = 3 THEN
                IF POINT(fl - 1, fu) = 6 THEN
                        fl = fl - 1
                END IF
        END IF
        PSET (fl, fu), 16
END SUB

SUB getkey
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ = " "
END SUB

SUB graphicsload
LINE (0, 0)-(320, 200), 6, BF
PSET (52, 108), 15
PSET (52, 107), 8
PSET (51, 106), 8
PSET (51, 105), 8
PSET (51, 104), 8
PSET (50, 103), 8
PSET (52, 104), 8
PSET (53, 104), 8
PSET (54, 104), 8
PSET (54, 105), 8
PSET (55, 104), 15
PSET (55, 105), 15
PSET (56, 106), 15
PSET (56, 107), 15
PSET (57, 108), 15
PSET (56, 103), 8
PSET (55, 102), 8
PSET (57, 103), 15
PSET (56, 102), 8
PSET (206, 108), 15
PSET (206, 107), 8
PSET (207, 106), 8
PSET (207, 105), 8
PSET (207, 104), 8
PSET (208, 103), 8
PSET (206, 104), 8
PSET (205, 104), 8
PSET (204, 104), 8
PSET (203, 104), 8
PSET (203, 105), 8
PSET (202, 104), 15
PSET (202, 105), 15
PSET (201, 106), 15
PSET (201, 107), 15
PSET (200, 108), 15
PSET (200, 103), 15
PSET (201, 103), 8
PSET (201, 102), 8
PSET (202, 102), 8
PSET (104, 107), 8
PSET (104, 106), 8
PSET (104, 105), 8
PSET (103, 105), 8
PSET (105, 105), 8
PSET (105, 104), 8
PSET (104, 104), 8
PSET (103, 104), 8
PSET (103, 108), 8
PSET (105, 108), 8
PSET (103, 107), 15
PSET (105, 107), 15
PSET (103, 103), 15
PSET (104, 103), 15
PSET (105, 103), 15
PSET (106, 103), 15
PSET (107, 102), 15
PSET (102, 103), 15
PSET (101, 102), 15
PSET (104, 102), 8
PSET (103, 101), 8
PSET (105, 101), 8
PSET (154, 106), 8
PSET (153, 107), 8
PSET (155, 107), 8
LINE (152, 105)-(156, 105), 15
PSET (151, 106), 15
PSET (157, 106), 15
LINE (153, 104)-(155, 104), 8
LINE (155, 103)-(153, 103), 8
LINE (154, 102)-(154, 101), 8
PSET (153, 101), 15
PSET (155, 101), 15
PSET (153, 100), 8
PSET (155, 100), 8
GET (50, 100)-(58, 108), sockoright
GET (100, 100)-(108, 108), sockoup
GET (150, 100)-(158, 108), sockodown
GET (200, 100)-(208, 108), sockoleft
CLS
LINE (0, 0)-(320, 200), 6, BF
LINE (53, 59)-(54, 56), 1
LINE (55, 56)-(54, 59), 1
LINE (56, 56)-(57, 59), 1
LINE (56, 57)-(57, 59), 1
LINE (55, 55)-(53, 53), 7
LINE (53, 53)-(57, 53), 7
LINE (57, 53)-(55, 55), 7
LINE (55, 54)-(55, 54), 7
LINE (58, 53)-(58, 55), 7
LINE (52, 55)-(52, 53), 7
PSET (55, 52), 14
PSET (55, 51), 6
LINE (53, 60)-(54, 60), 114
LINE (57, 60)-(58, 60), 114
PSET (58, 56), 14
PSET (52, 56), 14
LINE (103, 59)-(105, 56), 9
LINE (105, 56)-(107, 59), 9
LINE (104, 57)-(102, 59), 9
PSET (106, 58), 9
LINE (104, 56)-(103, 53), 8
LINE (103, 53)-(108, 53), 8
LINE (108, 53)-(106, 56), 8
LINE (106, 56)-(104, 56), 8
LINE (108, 53)-(109, 56), 8
LINE (103, 53)-(102, 56), 8
PSET (109, 57), 14
PSET (102, 57), 14
PSET (105, 52), 14
PAINT (105, 54), 8, 8
PSET (103, 55), 6
PSET (103, 54), 6
LINE (102, 56)-(102, 54), 8
PSET (103, 54), 8
LINE (102, 60)-(103, 60), 114
LINE (106, 60)-(107, 60), 114
PSET (105, 51), 6
PSET (55, 51), 6
GET (50, 50)-(60, 60), Jamie
GET (100, 50)-(110, 60), dad
CLS
LINE (0, 0)-(320, 200), 6, BF
CIRCLE (110, 110), 6, 15
PAINT (113, 107), 15, 15
LINE (106, 113)-(104, 116), 13
LINE (104, 116)-(117, 116), 13
LINE (117, 116)-(115, 113), 13
LINE (115, 113)-(106, 113), 13
PAINT (107, 114), 13, 13
LINE (108, 117)-(108, 118), 14
LINE (114, 118)-(114, 117), 14
LINE (113, 117)-(113, 118), 14
LINE (107, 118)-(107, 117), 14
LINE (106, 117)-(106, 118), 14
LINE (112, 118)-(112, 117), 14
LINE (112, 119)-(114, 119), 4
LINE (114, 120)-(116, 120), 4
LINE (112, 120)-(112, 120), 4
LINE (108, 119)-(106, 119), 4
LINE (106, 120)-(104, 120), 4
LINE (108, 120)-(108, 120), 4
LINE (111, 102)-(109, 104), 14, B
LINE (110, 103)-(110, 103), 14, B
LINE (111, 100)-(109, 101), 7, B
LINE (114, 106)-(117, 103), 15
LINE (114, 106)-(117, 103), 15
LINE (115, 106)-(117, 104), 15
LINE (115, 107)-(117, 105), 15
LINE (119, 104)-(118, 103), 14, B
LINE (106, 106)-(103, 103), 15
LINE (103, 102)-(106, 105), 15
LINE (107, 105)-(103, 101), 15
LINE (102, 102)-(101, 103), 14, B
LINE (101, 101)-(102, 101), 14, B
LINE (118, 102)-(119, 102), 14, B
GET (100, 100)-(120, 120), woman
CLS
END SUB

SUB hacksoft
        CLS
        LOCATE 5, 10: PRINT "HACKSOFT PRESENTS"
        SLEEP 2
        CLS

END SUB

SUB instructions
        CLS
        PRINT "Instructions:"
        PRINT
        PRINT "The arrow keys move the dog."
        PRINT "You have various objectives to"
        PRINT "do on each level.  Some missions"
        PRINT "require that you do something"
        PRINT "when you get somewhere, to 'do'"
        PRINT "it, press SPACEBAR.  SPACEBAR is"
        PRINT "also used when you have finished"
        PRINT "reading the text in the 'mission"
        PRINT "briefing' screens."
        getkey
        mainmenu
END SUB

SUB jamiemoving
        LINE (jl, ju)-(jl + 10, ju + 10), 6, BF
        IF jl > l AND POINT(jl - 1, ju) = 6 AND POINT(jl - 1, ju + 5) = 6 AND POINT(jl - 1, ju + 10) = 6 THEN jl = jl - .3
        IF jl < l AND POINT(jl + 11, ju) = 6 AND POINT(jl + 11, ju + 5) = 6 AND POINT(jl + 11, ju + 10) = 6 THEN jl = jl + .3
        IF ju > u AND POINT(jl, ju - 1) = 6 AND POINT(jl + 5, ju - 1) = 6 AND POINT(jl + 10, ju - 1) = 6 THEN ju = ju - .3
        IF ju < u AND POINT(jl, ju + 11) = 6 AND POINT(jl + 5, ju + 11) = 6 AND POINT(jl + 10, ju + 11) = 6 THEN ju = ju + .3
        PUT (jl, ju), Jamie, PSET
        IF jl + 10 > l AND jl < l + 8 AND ju + 10 > u AND ju < u + 8 THEN
                death
        END IF

END SUB

SUB mainmenu
        CLS
        COLOR 15: PRINT "Main Menu:"
        PRINT
        PRINT "1 - Play the game"
        PRINT "2 - Story"
        PRINT "3 - Options"
        PRINT "4 - Instructions"
        PRINT "5 - Quit"
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ = "1" OR move$ = "2" OR move$ = "3" OR move$ = "4" OR move$ = "5"
        IF move$ = "1" THEN thegame
        IF move$ = "2" THEN story
        IF move$ = "3" THEN options
        IF move$ = "4" THEN instructions
        IF move$ = "5" THEN END
END SUB

SUB options
        CLS
        PRINT "Options:"
        PRINT "Select Speed:"
        PRINT
        PRINT "1 = Regular"
        PRINT "2 = Faster"
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ = "1" OR move$ = "2"
        IF move$ = "1" THEN speed = 1
        IF move$ = "2" THEN speed = 0
        mainmenu
END SUB

SUB sockomoving
        LINE (l, u)-(l + 8, u + 8), 6, BF
        move$ = CHR$(0)
        move$ = INKEY$
        IF move$ = CHR$(0) + "H" THEN direction = 1
        IF move$ = CHR$(0) + "P" THEN direction = 4
        IF move$ = CHR$(0) + "K" THEN direction = 2
        IF move$ = CHR$(0) + "M" THEN direction = 3
        IF move$ = CHR$(27) THEN END
        IF direction = 1 THEN
                IF POINT(l, u - 1) = 6 AND POINT(l + 2, u - 1) = 6 AND POINT(l + 4, u - 1) = 6 AND POINT(l + 6, u - 1) = 6 AND POINT(l + 8, u - 1) = 6 THEN
                        u = u - 1
                END IF
        ELSEIF direction = 4 THEN
                IF POINT(l, u + 9) = 6 AND POINT(l + 2, u + 9) = 6 AND POINT(l + 4, u + 9) = 6 AND POINT(l + 6, u + 9) = 6 AND POINT(l + 8, u + 9) = 6 THEN
                        u = u + 1
                END IF
        ELSEIF direction = 2 THEN
                IF POINT(l - 1, u) = 6 AND POINT(l - 1, u + 2) = 6 AND POINT(l - 1, u + 4) = 6 AND POINT(l - 1, u + 6) = 6 AND POINT(l - 1, u + 8) = 6 THEN
                        l = l - 1
                END IF
        ELSEIF direction = 3 THEN
                IF POINT(l + 9, u) = 6 AND POINT(l + 9, u + 2) = 6 AND POINT(l + 9, u + 4) = 6 AND POINT(l + 9, u + 6) = 6 AND POINT(l + 9, u + 8) = 6 THEN
                        l = l + 1
                END IF
        END IF
        IF direction = 1 THEN PUT (l, u), sockoup, PSET
        IF direction = 2 THEN PUT (l, u), sockoleft, PSET
        IF direction = 3 THEN PUT (l, u), sockoright, PSET
        IF direction = 4 THEN PUT (l, u), sockodown, PSET
END SUB

SUB story
CLS
LINE (25, 15)-(35, 25), 2
LINE (35, 25)-(45, 15), 2
LINE (35, 25)-(35, 35), 2
LINE (55, 40)-(45, 30), 2, B
LINE (65, 40)-(65, 30), 2, B
LINE (75, 40)-(65, 40), 2, B
LINE (75, 30)-(75, 40), 2, B
LINE (110, 35)-(100, 30), 2, B
LINE (110, 36)-(110, 29), 2, B
LINE (115, 36)-(115, 26), 2
LINE (115, 31)-(125, 26), 2
LINE (130, 31)-(140, 31), 2
LINE (140, 31)-(135, 26), 2
LINE (135, 26)-(130, 31), 2
LINE (130, 31)-(135, 36), 2
LINE (165, 11)-(150, 21), 2
LINE (150, 21)-(170, 21), 2
LINE (170, 21)-(155, 36), 2
LINE (185, 31)-(175, 26), 2, B
LINE (190, 26)-(195, 26), 2
LINE (190, 26)-(190, 31), 2
LINE (190, 31)-(195, 31), 2
LINE (200, 31)-(200, 16), 2
LINE (200, 26)-(205, 21), 2
LINE (205, 21)-(200, 26), 2
LINE (200, 26)-(205, 31), 2
LINE (215, 31)-(210, 26), 2, B
LINE (225, 26)-(240, 26), 2
LINE (240, 26)-(235, 21), 2
LINE (235, 21)-(235, 31), 2
LINE (235, 31)-(240, 26), 2
CIRCLE (275, 36), 15, 15
CIRCLE (255, 16), 10, 15
CIRCLE (280, 11), 10, 15
CIRCLE (315, 26), 0, 15
CIRCLE (304, 23), 10, 15
LINE (29, 63)-(39, 73), 11
LINE (39, 73)-(49, 63), 11
LINE (39, 73)-(39, 88), 11
LINE (59, 88)-(49, 78), 11, B
LINE (64, 88)-(64, 78), 11, B
LINE (74, 88)-(64, 88), 11, B
LINE (74, 78)-(74, 88), 11, B
LINE (99, 88)-(89, 78), 11, B
LINE (99, 74)-(99, 89), 11, B
LINE (104, 79)-(104, 89), 11, B
LINE (104, 84)-(114, 79), 11
LINE (119, 84)-(124, 79), 11
LINE (124, 79)-(129, 84), 11
LINE (129, 84)-(119, 84), 11
LINE (119, 84)-(124, 89), 11
LINE (149, 89)-(139, 79), 11, B
LINE (149, 79)-(149, 94), 11, B
LINE (175, 88)-(165, 78), 11, B
LINE (175, 63)-(175, 88), 11, B
LINE (190, 88)-(180, 78), 11, B
LINE (205, 78)-(195, 88), 11, B
LINE (205, 97)-(205, 77), 11, B
LINE (198, 97)-(205, 97), 11, B
LINE (212, 88)-(212, 88), 11, B
LINE (27, 113)-(37, 123), 4
LINE (37, 123)-(47, 113), 4
LINE (37, 123)-(37, 138), 4
LINE (52, 138)-(42, 128), 4, B
LINE (57, 138)-(57, 128), 4, B
LINE (67, 138)-(57, 138), 4, B
LINE (67, 128)-(67, 138), 4, B
LINE (92, 138)-(82, 128), 4, B
LINE (92, 113)-(92, 138), 4, B
LINE (107, 138)-(97, 128), 4, B
LINE (137, 128)-(127, 138), 4, B
LINE (137, 113)-(137, 133), 4, B
LINE (152, 138)-(142, 128), 4, B
LINE (167, 128)-(157, 138), 4, B
LINE (167, 147)-(167, 127), 4, B
LINE (157, 147)-(167, 147), 4, B
LINE (177, 127)-(187, 127), 4, B
LINE (177, 132)-(177, 127), 4, B
LINE (187, 132)-(177, 132), 4, B
LINE (187, 137)-(187, 132), 4, B
LINE (177, 137)-(187, 137), 4, B
LINE (197, 112)-(197, 137), 4, B
LINE (202, 122)-(192, 122), 4, B
LINE (207, 137)-(207, 127), 4, B
LINE (217, 137)-(207, 137), 4, B
LINE (217, 127)-(217, 137), 4, B
LINE (227, 112)-(227, 137), 4, B
LINE (227, 112)-(232, 122), 4
LINE (222, 122)-(231, 126), 4
LINE (241, 136)-(241, 111), 4
LINE (241, 111)-(251, 121), 4
LINE (236, 126)-(246, 126), 4
LINE (252, 135)-(252, 135), 4
LINE (34, 152)-(49, 152), 14
LINE (44, 152)-(44, 167), 14
LINE (54, 167)-(54, 152), 14
LINE (54, 162)-(59, 157), 14
LINE (59, 157)-(59, 167), 14
LINE (64, 162)-(69, 157), 14
LINE (64, 162)-(69, 167), 14
LINE (69, 167)-(74, 162), 14
LINE (74, 162)-(69, 157), 14
LINE (74, 157)-(74, 167), 14
LINE (79, 167)-(79, 147), 14
LINE (74, 152)-(84, 152), 14
LINE (89, 152)-(94, 152), 14
LINE (94, 152)-(94, 157), 14
LINE (94, 157)-(89, 162), 14
LINE (104, 157)-(99, 162), 14
LINE (99, 162)-(104, 162), 14
LINE (104, 162)-(99, 167), 14
LINE (124, 167)-(124, 147), 14
LINE (119, 157)-(129, 157), 14
LINE (134, 147)-(134, 167), 14
LINE (134, 157)-(139, 152), 14
LINE (139, 152)-(139, 167), 14
LINE (144, 162)-(149, 157), 14
LINE (149, 157)-(154, 162), 14
LINE (154, 162)-(144, 162), 14
LINE (144, 162)-(149, 167), 14
LINE (179, 152)-(169, 157), 14
LINE (169, 157)-(179, 157), 14
LINE (179, 157)-(169, 167), 14
LINE (189, 167)-(189, 147), 14
LINE (184, 157)-(194, 157), 14
LINE (199, 157)-(209, 157), 14
LINE (209, 157)-(209, 167), 14
LINE (209, 167)-(199, 167), 14
LINE (199, 167)-(199, 162), 14
LINE (199, 157)-(199, 162), 14
LINE (219, 167)-(219, 157), 14
LINE (219, 162)-(229, 157), 14
LINE (234, 157)-(244, 162), 14
LINE (244, 162)-(244, 157), 14
LINE (244, 162)-(239, 167), 14
PSET (249, 162), 14
move$ = CHR$(0)
DO
        move$ = INKEY$
LOOP UNTIL move$ = " "
mainmenu
END SUB

SUB thegame
        CLS
        PRINT "Mission One:"
        PRINT
        PRINT "Right now you're on equal ground with"
        PRINT "your owners.  You've got to find"
        PRINT "a way to begin war.  Then, you"
        PRINT "have an idea.  From the bathroom,"
        PRINT "get to the kitchen, poop, and run"
        PRINT "into Jamie's room.  Dad is"
        PRINT "patrolling the area, so watch out."
        getkey
        CLS
        apartment
        missiondone = 0
        l = 45
        u = 105
        dl = 280
        du = 100
        direction = 3
        pl = -10
        pu = -10
        DO
                sockomoving
                dadmoving
                IF speed = 1 THEN SOUND 0, 1
                LINE (pl, pu)-(pl + 2, pu), 114
                PSET (pl + 1, pu - 1), 114
                PSET (pl, pu - 2), 2
                PSET (pl - 1, pu - 3), 2
                PSET (pl, pu - 4), 2
                LINE (pl + 2, pu - 2)-(pl + 2, pu - 4), 2
                IF move$ = " " AND missiondone = 0 AND l > 259 AND u > 75 THEN
                        pl = l + 5
                        pu = u + 5
                        missiondone = 1
                END IF
                IF missiondone = 1 THEN
                        LOCATE 21, 1: PRINT "Crap placed.  Get to Jamie's room."
                ELSEIF missiondone = 0 THEN
                        LOCATE 21, 1: PRINT "Get to the kitchen and poop!"
                END IF
        LOOP UNTIL missiondone = 1 AND l > 84 AND l < 107 AND u < 60
        CLS
        PRINT "Mission Two:"
        PRINT
        PRINT "Now the fires of war are beginning"
        PRINT "to ignite and information of the"
        PRINT "crap has reached Jamie.  He's after"
        PRINT "you and the only way to escape is"
        PRINT "to keep away from him till he gets"
        PRINT "tired."
        getkey
        apartment
        l = 95
        u = 55
        jl = 130
        ju = 110
        direction = 4
        FOR i = 1 TO 500
                sockomoving
                jamiemoving
                IF speed = 1 THEN SOUND 0, 1
                LOCATE 21, 1: PRINT "Survive.  Jamie's energy: "; 500 - i
        NEXT i
        CLS
        PRINT "Mission Three:"
        PRINT
        PRINT "With Jamie tired, only Dad stands in"
        PRINT "your way.  Get to Dad's chair, grab"
        PRINT "the paper, and run into Dad's room to"
        PRINT "tear it into pieces."
        getkey
        apartment
        l = 40
        u = 80
        dl = 190
        du = 70
        missiondone = 0
        DO
                sockomoving
                dadmoving
                IF speed = 1 THEN SOUND 0, 1
                IF missiondone = 0 THEN
                        LINE (210, 70)-(215, 75), 15, BF
                        LINE (211, 71)-(214, 71), 16
                        LOCATE 21, 1: PRINT "Get the paper!"
                END IF
                IF l + 10 > 210 AND l - 2 < 215 AND u + 10 > 70 AND u - 2 < 75 THEN
                        missiondone = 1
                        LINE (210, 69)-(215, 76), 6, BF
                        LOCATE 21, 1: PRINT "Now get to Dad's room!"
                END IF
        LOOP UNTIL missiondone = 1 AND l < 70 AND u < 88
        CLS
        PRINT "Mission Four:"
        PRINT
        PRINT "There's a fly buzzing around the"
        PRINT "living room and making you angry."
        PRINT "Chase the fly, and eat it."
        getkey
        apartment
        l = 130
        u = 110
        fl = 190
        fu = 70
        DO
                sockomoving
                flymoving
                IF speed = 1 THEN SOUND 0, 1
                LOCATE 21, 1: PRINT "Get that fly!"
        LOOP UNTIL fl < l + 10 AND fl > l AND fu > u AND fu < u + 10
        CLS
        PRINT "Mission Five:"
        PRINT
        PRINT "No!  It's bathtime and you're"
        PRINT "cornered!  You've got one chance:"
        PRINT "going fast enough to escape Jamie,"
        PRINT "slip past Dad and pretend to eat"
        PRINT "for hours in the kitchen!"
        getkey
        apartment

        l = 95
        u = 55
        jl = 40
        ju = 80
        dl = 190
        du = 110
        DO
                LOCATE 21, 1: PRINT "Get to the kitchen!"
                sockomoving
                jamiemoving
                dadmoving
                IF speed = 1 THEN SOUND 0, 1
        LOOP UNTIL l > 259 AND u > 75
        CLS
        PRINT "Mission Six:"
        PRINT
        PRINT "How dare they make you bathe!"
        PRINT "You'll show that Dad what to"
        PRINT "clean - his diningroom carpet!"
        PRINT "Get to the livingroom, where"
        PRINT "Dad and Jamie will be waiting,"
        PRINT "take a pee, and then get back"
        PRINT "to the bathroom."
        PRINT "They won't come after you till"
        PRINT "you go, so be in and out!"
        getkey
        apartment
        l = 45
        u = 105
        direction = 3
        jl = 192
        ju = 70
        dl = 210
        du = 70
        missiondone = 0
        pl = -10
        pu = -10
        DO
                sockomoving
                IF missiondone = 1 THEN
                        CIRCLE (pl, pu), 3, 14
                        PAINT (pl, pu), 14, 14
                        jamiemoving
                        dadmoving
                        LOCATE 21, 1: PRINT "Quick, to the bathroom!"
                ELSEIF missiondone = 0 THEN
                        LOCATE 21, 1: PRINT "Pee in the diningroom."
                        PUT (jl, ju), Jamie, PSET
                        PUT (dl, du), dad, PSET
                END IF
                IF move$ = " " AND l > 259 AND u < 53 THEN
                        pl = l + 5
                        pu = u + 5
                        missiondone = 1
                END IF
                IF speed = 1 THEN SOUND 0, 1
        LOOP UNTIL missiondone = 1 AND l < 82 AND u > 99
        CLS
        PRINT "Mission Seven:"
        PRINT
        PRINT "NO!!!  Dad has arranged a"
        PRINT "fat cleaning lady to come"
        PRINT "over and she's rolling after"
        PRINT "you and calling you cutsie-"
        PRINT "wootsie!  She can crush objects"
        PRINT "in her path so hide behind a"
        PRINT "well inforced wall!"
        getkey
        apartment
        wl = 190
        wu = 100
        l = 190
        u = 70
        direction = 1
        FOR i = 1 TO 600
                LOCATE 21, 1: PRINT "Survive.  Fat Chick's energy: "; 600 - i
                sockomoving
                womanmoving
                IF speed = 1 THEN SOUND 0, 1
        NEXT i
        CLS
        ending
END SUB

SUB title
CLS
LINE (100, 55)-(90, 24), 8
LINE (90, 24)-(98, 14), 8
LINE (98, 14)-(109, 15), 8
LINE (109, 15)-(118, 20), 8
LINE (118, 20)-(128, 45), 8
LINE (128, 45)-(141, 43), 8
LINE (141, 43)-(157, 45), 8
LINE (157, 45)-(170, 21), 8
LINE (170, 21)-(180, 17), 8
LINE (180, 17)-(191, 25), 8
LINE (191, 25)-(177, 59), 8
LINE (177, 59)-(180, 77), 8
LINE (180, 77)-(176, 90), 8
LINE (176, 90)-(164, 92), 8
LINE (164, 92)-(149, 87), 8
LINE (149, 87)-(143, 81), 8
LINE (143, 81)-(143, 73), 8
LINE (143, 81)-(135, 88), 8
LINE (135, 88)-(121, 92), 8
LINE (121, 92)-(109, 85), 8
LINE (109, 85)-(102, 74), 8
LINE (102, 74)-(104, 57), 8
LINE (104, 57)-(100, 55), 8
LINE (126, 91)-(131, 94), 8
LINE (131, 94)-(143, 96), 8
LINE (143, 96)-(152, 94), 8
LINE (152, 94)-(158, 90), 8
LINE (136, 65)-(149, 65), 8
LINE (149, 65)-(149, 70), 8
LINE (149, 70)-(147, 70), 8
LINE (147, 70)-(145, 67), 8
LINE (145, 67)-(143, 70), 8
LINE (143, 70)-(140, 67), 8
LINE (140, 67)-(136, 70), 8
LINE (136, 70)-(136, 65), 8
LINE (120, 52)-(126, 52), 8
LINE (126, 52)-(130, 56), 8
LINE (130, 56)-(126, 59), 8
LINE (126, 59)-(119, 59), 8
LINE (119, 59)-(115, 55), 8
LINE (115, 55)-(120, 52), 8
LINE (160, 55)-(158, 52), 8
LINE (158, 52)-(153, 52), 8
LINE (153, 52)-(150, 56), 8
LINE (150, 56)-(155, 59), 8
LINE (155, 59)-(161, 59), 8
LINE (161, 59)-(160, 55), 8
LINE (142, 43)-(138, 65), 8
LINE (143, 44)-(148, 65), 8
LINE (148, 63)-(159, 69), 8
LINE (159, 69)-(166, 80), 8
LINE (166, 80)-(168, 91), 8
LINE (118, 91)-(121, 78), 8
LINE (121, 78)-(128, 68), 8
LINE (128, 68)-(136, 65), 8
LINE (107, 50)-(122, 45), 8
LINE (122, 45)-(104, 23), 8
LINE (104, 23)-(107, 50), 8
LINE (163, 47)-(173, 54), 8
LINE (173, 54)-(180, 25), 8
LINE (180, 25)-(163, 47), 8
PAINT (173, 42), 22, 8
PAINT (113, 42), 22, 8
PAINT (113, 42), 18, 0
PAINT (173, 42), 18, 0
LINE (104, 25)-(104, 23), 18
LINE (105, 24)-(105, 25), 18
LINE (180, 25)-(180, 28), 18
LINE (179, 28)-(179, 26), 18
LINE (121, 52)-(119, 56), 8
LINE (119, 56)-(121, 59), 8
LINE (125, 59)-(126, 56), 8
LINE (126, 56)-(124, 52), 8
LINE (155, 52)-(154, 56), 8
LINE (154, 56)-(156, 59), 8
LINE (159, 53)-(160, 56), 8
LINE (160, 56)-(159, 59), 8
PSET (160, 58), 0
PSET (159, 58), 8
PAINT (123, 55), 6, 8
PAINT (158, 55), 6, 8
LINE (123, 56)-(122, 55), 16, B
LINE (158, 56)-(157, 55), 16, B
PAINT (143, 56), 25, 8
PAINT (133, 76), 22, 8
LINE (143, 82)-(143, 71), 16
LINE (151, 75)-(165, 73), 26
LINE (165, 73)-(173, 74), 26
LINE (153, 79)-(167, 79), 26
LINE (167, 79)-(173, 80), 26
LINE (156, 84)-(173, 86), 26
LINE (136, 74)-(121, 73), 26
LINE (121, 73)-(114, 75), 26
LINE (134, 78)-(120, 78), 26
LINE (120, 78)-(114, 80), 26
LINE (114, 85)-(121, 83), 26
LINE (121, 83)-(133, 84), 26
LINE (81, 102)-(56, 97), 34, B
LINE (61, 112)-(56, 97), 34, B
LINE (81, 112)-(56, 107), 34, B
LINE (81, 122)-(76, 107), 34, B
LINE (56, 122)-(81, 117), 34, B
LINE (91, 122)-(86, 97), 34, B
LINE (101, 102)-(86, 97), 34, B
LINE (101, 122)-(96, 97), 34, B
LINE (101, 122)-(86, 117), 34, B
LINE (121, 102)-(106, 97), 34, B
LINE (111, 122)-(106, 97), 34, B
LINE (121, 122)-(106, 117), 34, B
LINE (131, 97)-(126, 122), 34, B
LINE (136, 112)-(126, 107), 34, B
LINE (141, 107)-(136, 102), 34, B
LINE (146, 102)-(141, 97), 34, B
LINE (141, 117)-(136, 112), 34, B
LINE (146, 122)-(141, 117), 34, B
LINE (161, 117)-(151, 122), 34, B
LINE (156, 97)-(151, 122), 34, B
LINE (166, 102)-(151, 97), 34, B
LINE (166, 122)-(161, 97), 34, B
LINE (181, 102)-(171, 97), 34, B
LINE (181, 107)-(176, 97), 34, B
LINE (186, 102)-(201, 97), 34, B
LINE (191, 112)-(186, 97), 34, B
LINE (201, 112)-(186, 107), 34, B
LINE (201, 122)-(196, 107), 34, B
LINE (201, 117)-(186, 122), 34, B
LINE (42, 164)-(57, 134), 37
LINE (57, 134)-(67, 164), 37
LINE (62, 149)-(49, 149), 37
LINE (74, 164)-(74, 134), 37
LINE (74, 134)-(84, 139), 37
LINE (84, 139)-(89, 154), 37
LINE (89, 154)-(74, 164), 37
LINE (94, 134)-(104, 164), 37
LINE (104, 164)-(109, 134), 37
LINE (114, 134)-(114, 164), 37
LINE (114, 134)-(124, 134), 37
LINE (114, 149)-(119, 149), 37
LINE (114, 164)-(124, 164), 37
LINE (129, 164)-(129, 134), 37
LINE (129, 134)-(144, 164), 37
LINE (144, 164)-(144, 134), 37
LINE (149, 134)-(164, 134), 37
LINE (157, 134)-(157, 164), 37
LINE (169, 134)-(169, 159), 37
LINE (169, 159)-(174, 164), 37
LINE (174, 164)-(179, 159), 37
LINE (179, 159)-(179, 134), 37
LINE (184, 134)-(184, 164), 37
LINE (184, 134)-(194, 139), 37
LINE (194, 139)-(184, 149), 37
LINE (184, 149)-(194, 164), 37
LINE (199, 164)-(199, 134), 37
LINE (199, 134)-(209, 134), 37
LINE (204, 149)-(199, 149), 37
LINE (199, 164)-(209, 164), 37
LINE (229, 134)-(214, 144), 37
LINE (214, 144)-(229, 154), 37
LINE (229, 154)-(214, 164), 37
LINE (51, 124)-(206, 124), 45
LINE (37, 166)-(237, 166), 45
LINE (242, 36)-(277, 46), 42
LINE (277, 46)-(274, 37), 42
LINE (274, 37)-(263, 30), 42
LINE (263, 30)-(250, 30), 42
LINE (250, 30)-(242, 36), 42
PAINT (252, 36), 42, 42
PAINT (238, 45), 42, 0
LINE (238, 45)-(273, 55), 42
LINE (273, 55)-(268, 61), 42
LINE (268, 61)-(248, 59), 42
LINE (248, 59)-(236, 50), 42
LINE (236, 50)-(238, 45), 42
PAINT (241, 49), 42, 42
LINE (235, 44)-(277, 56), 113
LINE (277, 56)-(279, 49), 113
LINE (279, 49)-(237, 37), 113
LINE (237, 37)-(235, 44), 113
PAINT (243, 43), 113, 113
LINE (238, 35)-(281, 47), 2
LINE (281, 47)-(276, 50), 2
LINE (276, 50)-(266, 46), 2
LINE (266, 46)-(257, 45), 2
LINE (257, 45)-(250, 41), 2
LINE (250, 41)-(242, 40), 2
LINE (242, 40)-(237, 35), 2
PAINT (244, 39), 2, 2
LINE (28, 38)-(43, 38), 8
LINE (43, 38)-(49, 41), 8
LINE (49, 41)-(44, 45), 8
LINE (44, 45)-(28, 45), 8
LINE (28, 45)-(24, 42), 8
LINE (24, 42)-(28, 38), 8
LINE (24, 42)-(24, 49), 8
LINE (24, 49)-(27, 52), 8
LINE (27, 52)-(44, 52), 8
LINE (44, 52)-(49, 48), 8
LINE (49, 48)-(49, 41), 8
LINE (269, 96)-(289, 101), 41
LINE (289, 101)-(274, 130), 41
LINE (274, 130)-(266, 134), 41
LINE (266, 134)-(262, 126), 41
LINE (262, 126)-(269, 96), 41
PAINT (274, 102), 41, 41
LINE (273, 96)-(285, 99), 2
LINE (285, 99)-(287, 89), 2
LINE (287, 89)-(272, 88), 2
LINE (272, 88)-(274, 96), 2
PAINT (278, 95), 2, 2
LINE (272, 105)-(275, 106), 15
LINE (275, 106)-(274, 103), 15
LINE (274, 103)-(271, 105), 15
PAINT (273, 105), 15, 15
LINE (278, 107)-(281, 108), 15
LINE (281, 108)-(280, 104), 15
LINE (280, 104)-(277, 107), 15
PAINT (280, 106), 15, 15
LINE (281, 108)-(280, 107), 16, B
LINE (275, 106)-(274, 105), 16, B
LINE (273, 109)-(275, 110), 16
LINE (271, 111)-(271, 111), 16
LINE (271, 112)-(273, 113), 16
LINE (273, 113)-(276, 112), 16
move$ = CHR$(0)
DO
        move$ = INKEY$
LOOP UNTIL move$ > CHR$(0)
speed = 1
mainmenu
END SUB

SUB womanmoving
        LINE (wl, wu)-(wl + 20, wu + 20), 6, BF
        IF wl < l THEN
                IF POINT(wl + 21, wu) = 6 AND POINT(wl + 21, wu + 10) = 6 AND POINT(wl + 21, wu + 20) = 6 THEN
                        wl = wl + 1
                END IF
        ELSEIF wl > l THEN
                IF POINT(wl - 1, wu) = 6 AND POINT(wl - 1, wu + 10) = 6 AND POINT(wl - 1, wu + 20) = 6 THEN
                        wl = wl - 1
                END IF
        END IF
        IF wu < u THEN
                IF POINT(wl, wu + 21) = 6 AND POINT(wl + 10, wu + 21) = 6 AND POINT(wl + 20, wu + 21) = 6 THEN
                        wu = wu + 1
                END IF
        ELSEIF wu > u THEN
                IF POINT(wl, wu - 1) = 6 AND POINT(wl + 10, wu - 1) = 6 AND POINT(wl + 20, wu - 1) = 6 THEN
                        wu = wu - 1
                END IF
        END IF
        PUT (wl, wu), woman, PSET
        IF l + 10 > wl AND l < wl + 20 AND u + 10 > wu AND u < wu + 20 THEN
                death
        END IF
END SUB

