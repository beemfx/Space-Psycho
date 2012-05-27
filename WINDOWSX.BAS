'''Windows X

'Created by Hacksoft.  It's a neat little program, our own OS, with
'a few neat things here and there.  Have a look!

'You can find Hacksoft on the web for wicked QBasic games at:

'http://members.aol.com/jeffereys/index.htm

DECLARE SUB guess ()
DECLARE SUB graphicsload ()
DECLARE SUB mainmenu ()
DECLARE SUB ponggame ()
DECLARE SUB cursormenu ()
DECLARE SUB calculator ()
DECLARE SUB osx ()
DECLARE SUB help ()
DECLARE SUB screensaver ()
DECLARE SUB freenet ()
DECLARE SUB about ()

DIM SHARED cursorpic(100), cursorpic2(100), l, u, cursort, move$
DIM SHARED l(200), u(200), udir(200), ldir(200), cl(200), stars

graphicsload

SUB about
        CLS
        COLOR 14
        PRINT "About Windows X"
        PRINT
        COLOR 15
        PRINT "Windows X was created by Jamie"
        PRINT "McCrae of Hacksoft.  Windows X"
        PRINT "took only 5 hours of computer"
        PRINT "time to complete.  It is pretty"
        PRINT "versatile, because it has its"
        PRINT "own OS, games, and utilities."
        PRINT "Enjoy!"
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        CLS
        mainmenu
END SUB

SUB calculator
DO
        SCREEN 2
        CLS
        PRINT "Enter your formula type."
        PRINT "1)  Addition"
        PRINT "2)  Subtraction"
        PRINT "3)  Multiplication"
        PRINT "4)  Division"
        PRINT "5)  Powers"
        PRINT "6)  Quit"
        INPUT formula$
        num = 0
        num2 = 0
        IF formula$ = "1" THEN
                CLS
                PRINT "Enter a number."
                INPUT num
                DO
                num = num + num2
                PRINT "Enter next number.  Type -50000 for final answer."
                INPUT num2
                LOOP UNTIL num2 = -50000
                PRINT "The answer is"; num; "."
        ELSEIF formula$ = "2" THEN
                CLS
                PRINT "Enter the number to be subtracted."
                INPUT num
                DO
                num = num - num2
                PRINT "Enter the number to subtract.  Type -50000 for final answer."
                INPUT num2
                LOOP UNTIL num2 = -50000
                PRINT "The answer is"; num; "."
        ELSEIF formula$ = "3" THEN
                CLS
                PRINT "Enter first number."
                INPUT num
                PRINT "Enter second number."
                INPUT num2
                PRINT "The answer is"; num * num2; "."
        ELSEIF formula$ = "4" THEN
                CLS
                PRINT "Enter number to be divided."
                INPUT num
                PRINT "Enter the divisor."
                INPUT num2
                PRINT "The answer is "; num / num2; "."
        ELSEIF formula$ = "5" THEN
                CLS
                PRINT "Enter the number."
                INPUT num
                PRINT "What power is the number?"
                INPUT num2
                PRINT "The answer is"; num ^ num2; "."
        ELSEIF formula$ = "6" THEN
                EXIT DO
        END IF
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
LOOP
mainmenu
END SUB

SUB cursormenu
        CLS
        PRINT "This is the cursor menu."
        PRINT "There are two cursor types."
        PRINT "To select the left cursor,"
        PRINT "press 1.  For the one on the"
        PRINT "right, press 2."
        PUT (100, 120), cursorpic, PSET
        PUT (220, 120), cursorpic2, PSET
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ = "1" OR move$ = "2"
        IF move$ = "1" THEN cursort = 1
        IF move$ = "2" THEN cursort = 2
        CLS
        mainmenu
END SUB

SUB freenet
        CLS
        COLOR 9: PRINT "Free Internet Connect -"
        COLOR 13: PRINT "Press a key to commence."
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        CLS
        COLOR 10: PRINT "Pssh, like you'd really get"
        PRINT "the Internet for free using"
        PRINT "this program!"
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        mainmenu
END SUB

SUB graphicsload
        SCREEN 13
        LINE (100, 100)-(105, 105), 15
        LINE (105, 105)-(100, 107), 15
        LINE (100, 107)-(100, 100), 15
        PAINT (101, 103), 15, 15
        LINE (100, 100)-(105, 110), 15
        GET (100, 100)-(110, 110), cursorpic
        CIRCLE (155, 155), 5, 15
        PSET (155, 155), 15
        LINE (150, 155)-(152, 155), 15
        LINE (158, 155)-(160, 155), 15
        LINE (155, 150)-(155, 152), 15
        LINE (155, 158)-(155, 160), 15
        GET (150, 150)-(160, 160), cursorpic2
        CLS
        l = 200
        u = 100
        cursort = 1
        mainmenu
END SUB

SUB guess
        SCREEN 12
        CLS
        COLOR 9
        PRINT "Guess!"
        PRINT
        PRINT "Guess the number between 1 and 100."
        PRINT "Enter your guess."
        RANDOMIZE TIMER
        number = INT(RND * 100) + 1
        guesses = 10
        DO
                PRINT "You have"; guesses; "guesses."
                INPUT tryme
                IF tryme < number THEN
                        PRINT "Try higher!"
                ELSEIF tryme > number THEN
                        PRINT "Try lower!"
                END IF
                guesses = guesses - 1
        LOOP UNTIL tryme = number OR guesses = 0
        IF tryme = number THEN
                PRINT "You got the number!"
        ELSE
                PRINT "You didn't get the number in the time given."
        END IF
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        mainmenu
END SUB

SUB help
        SCREEN 12
        DO
        CLS
        COLOR 14
        PRINT "Help Screen - Main Menu"
        PRINT
        PRINT "1)  Help on Calculator"
        PRINT "2)  Help on Pong"
        PRINT "3)  Help on Help"
        PRINT "4)  Help on OSX"
        PRINT "5)  Help on Main Menu"
        PRINT "6)  Help on About"
        PRINT "7)  Help on Selecting a Cursor"
        PRINT "8)  Help on Free Net (hee hee)"
        PRINT "9)  Help on Guess"
        PRINT "10)  Exit Help"
        INPUT choice$
        IF choice$ = "1" THEN
                PRINT "The calculator is easy.  Simply follow the on-screen"
                PRINT "instructions by pressing the number that corresponds"
                PRINT "with the action."
        ELSEIF choice$ = "2" THEN
                PRINT "The point of Pong is to avoid the ball getting past"
                PRINT "your paddle, (the one on the left.)  To reflect the"
                PRINT "the ball off your paddle, use the up and down arrow"
                PRINT "keys to get the paddle in the ball's flight path."
                PRINT "First to 5 wins the game."
        ELSEIF choice$ = "3" THEN
                PRINT "You just used help!  All you have to do is keep doing"
                PRINT "what you just did, only with the other numbers."
        ELSEIF choice$ = "4" THEN
                PRINT "OSX is basically DOS, it supports all DOS commands,"
                PRINT "and has extra utilities like color, its own help,"
                PRINT "and a reference screen which can be accessed from "
                PRINT "the prompt.  For those of you that don't know how"
                PRINT "to use DOS, OSX will be useless to you."
        ELSEIF choice$ = "5" THEN
                PRINT "In the main menu, there are green boxes, called 'icons'"
                PRINT "and have purple writing beneath them to tell what they"
                PRINT "do.  To access them, use the cursor, (either an arrow"
                PRINT "or targeting recticle,) move it over an icon, (it must"
                PRINT "be in the center,) by using the arrow keys and select"
                PRINT "it with SPACEBAR."
        ELSEIF choice$ = "6" THEN
                PRINT "About is just one screen.  When you're done reading,"
                PRINT "press any key."
        ELSEIF choice$ = "7" THEN
                PRINT "To select a cursor in the cursor main menu, simply"
                PRINT "read the on-screen instructions and press the number"
                PRINT "that corresponds with the action.  (It's just like"
                PRINT "one of those recorded messages on the telephone.)"
        ELSEIF choice$ = "8" THEN
                PRINT "Free Net is very complex, you'll have to access"
                PRINT "it and follow the on-screen instructions.  :)"
        ELSEIF choice$ = "9" THEN
                PRINT "You must have had to come across a game like this!"
                PRINT "It's the traditional game of guess the number,"
                PRINT "which is between 1 and 100.  Just type your guess"
                PRINT "and press enter and you'll be told if it was too"
                PRINT "low, high or if you got the number."
        ELSEIF choice$ = "10" THEN
                mainmenu
        END IF
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        LOOP
END SUB

SUB mainmenu
SCREEN 13
CLS
LINE (220, 70)-(210, 60), 10, B
LINE (212, 62)-(212, 64), 15
LINE (215, 63)-(216, 63), 15
LINE (216, 63)-(216, 65), 15
LINE (216, 65)-(215, 65), 15
LINE (215, 65)-(215, 67), 15
LINE (215, 67)-(216, 67), 15
LINE (211, 66)-(212, 66), 15
LINE (213, 66)-(213, 69), 15
LINE (213, 68)-(211, 68), 15
LINE (211, 68)-(211, 66), 15
LINE (218, 62)-(219, 62), 15
LINE (219, 62)-(219, 66), 15
LINE (217, 68)-(217, 69), 15
LINE (219, 68)-(219, 69), 15
LINE (215, 61)-(214, 61), 15
LINE (210, 72)-(207, 72), 5
LINE (207, 72)-(207, 76), 5
LINE (207, 76)-(210, 76), 5
LINE (210, 76)-(210, 74), 5
LINE (210, 74)-(209, 74), 5
LINE (213, 72)-(213, 76), 5
LINE (213, 76)-(216, 76), 5
LINE (216, 76)-(216, 72), 5
LINE (218, 72)-(218, 76), 5
LINE (218, 76)-(220, 76), 5
LINE (220, 74)-(218, 74), 5
LINE (218, 72)-(220, 72), 5
LINE (222, 72)-(224, 72), 5
LINE (222, 72)-(222, 74), 5
LINE (222, 74)-(224, 74), 5
LINE (224, 74)-(224, 76), 5
LINE (224, 76)-(222, 76), 5
LINE (226, 76)-(228, 76), 5
LINE (228, 76)-(228, 74), 5
LINE (228, 74)-(226, 74), 5
LINE (226, 74)-(226, 72), 5
LINE (226, 72)-(228, 72), 5
'guess21060
LINE (110, 5)-(110, 10), 38
LINE (110, 10)-(115, 5), 38
LINE (115, 5)-(120, 10), 38
LINE (120, 10)-(120, 5), 38
LINE (125, 5)-(125, 10), 38
LINE (130, 10)-(130, 5), 38
LINE (130, 5)-(135, 10), 38
LINE (135, 10)-(135, 5), 38
LINE (140, 5)-(140, 10), 38
LINE (140, 10)-(145, 8), 38
LINE (145, 8)-(140, 5), 38
LINE (150, 5)-(150, 10), 38
LINE (150, 10)-(155, 10), 38
LINE (155, 10)-(155, 5), 38
LINE (155, 5)-(150, 5), 38
LINE (160, 5)-(160, 10), 38
LINE (160, 10)-(165, 5), 38
LINE (165, 5)-(170, 10), 38
LINE (170, 10)-(170, 5), 38
LINE (175, 5)-(180, 5), 38
LINE (175, 5)-(175, 8), 38
LINE (175, 8)-(180, 8), 38
LINE (180, 8)-(180, 10), 38
LINE (180, 10)-(175, 10), 38
LINE (125, 15)-(135, 15), 38
LINE (135, 15)-(145, 25), 38
LINE (145, 25)-(155, 15), 38
LINE (155, 15)-(165, 15), 38
LINE (165, 15)-(145, 25), 38
LINE (145, 25)-(125, 15), 38
LINE (145, 25)-(135, 35), 38
LINE (135, 35)-(125, 35), 38
LINE (125, 35)-(145, 25), 38
LINE (145, 25)-(155, 35), 38
LINE (155, 35)-(165, 35), 38
LINE (165, 35)-(145, 25), 38
PAINT (134, 33), 39, 38
PAINT (134, 18), 39, 38
PAINT (154, 18), 39, 38
PAINT (154, 33), 39, 38
LINE (116, 38)-(116, 44), 10
LINE (116, 44)-(116, 38), 10
LINE (116, 38)-(120, 42), 10
LINE (120, 42)-(124, 38), 10
LINE (124, 38)-(124, 44), 10
LINE (127, 44)-(127, 38), 10
LINE (127, 38)-(132, 38), 10
LINE (132, 38)-(132, 44), 10
LINE (132, 41)-(128, 41), 10
LINE (135, 44)-(135, 38), 10
LINE (138, 38)-(138, 44), 10
LINE (138, 38)-(143, 44), 10
LINE (143, 44)-(143, 38), 10
LINE (150, 44)-(150, 38), 10
LINE (150, 38)-(154, 41), 10
LINE (154, 41)-(157, 38), 10
LINE (157, 38)-(157, 44), 10
LINE (160, 44)-(160, 38), 10
LINE (160, 38)-(164, 38), 10
LINE (161, 41)-(162, 41), 10
LINE (161, 44)-(164, 44), 10
LINE (167, 44)-(167, 38), 10
LINE (167, 38)-(172, 44), 10
LINE (172, 44)-(172, 38), 10
LINE (175, 38)-(175, 44), 10
LINE (175, 44)-(179, 44), 10
LINE (179, 44)-(179, 38), 10
LINE (182, 47)-(112, 47), 9
'calc3060
LINE (40, 70)-(30, 60), 10, B
LINE (38, 61)-(32, 69), 12, B
PAINT (34, 63), 4, 12
LINE (34, 63)-(36, 63), 0
PSET (33, 65), 0
PSET (33, 67), 0
PSET (33, 68), 0
PSET (34, 65), 0
PSET (36, 65), 0
PSET (37, 66), 0
PSET (35, 66), 0
PSET (34, 67), 0
PSET (36, 67), 0
PSET (37, 68), 0
PSET (35, 68), 0
PSET (33, 68), 0
LINE (22, 72)-(22, 76), 5
LINE (22, 72)-(24, 72), 5
LINE (22, 76)-(24, 76), 5
LINE (26, 76)-(26, 72), 5
LINE (26, 72)-(29, 72), 5
LINE (29, 72)-(29, 76), 5
LINE (29, 74)-(26, 74), 5
LINE (31, 72)-(31, 76), 5
LINE (31, 76)-(33, 76), 5
LINE (35, 76)-(35, 72), 5
LINE (35, 72)-(37, 72), 5
LINE (36, 76)-(37, 76), 5
LINE (39, 72)-(39, 76), 5
LINE (39, 76)-(41, 76), 5
LINE (41, 76)-(41, 72), 5
LINE (43, 72)-(43, 76), 5
LINE (43, 76)-(46, 76), 5
LINE (48, 76)-(48, 72), 5
LINE (48, 72)-(51, 72), 5
LINE (51, 72)-(51, 76), 5
LINE (51, 74)-(49, 74), 5
LINE (53, 72)-(56, 72), 5
LINE (54, 72)-(54, 76), 5
LINE (58, 76)-(58, 72), 5
LINE (58, 72)-(61, 72), 5
LINE (61, 72)-(61, 76), 5
LINE (61, 76)-(58, 76), 5
LINE (63, 76)-(63, 72), 5
LINE (63, 72)-(66, 72), 5
LINE (66, 72)-(66, 75), 5
LINE (66, 75)-(63, 75), 5
LINE (63, 75)-(66, 76), 5
PSET (64, 76), 0
PSET (65, 76), 0
PSET (66, 74), 0
PSET (66, 75), 0
PSET (66, 74), 5
'help3090
LINE (40, 100)-(30, 90), 10, B
LINE (33, 93)-(34, 92), 14
LINE (34, 92)-(38, 92), 14
LINE (38, 92)-(38, 95), 14
LINE (38, 95)-(35, 95), 14
LINE (35, 95)-(35, 96), 14
PSET (35, 98), 14
LINE (25, 102)-(25, 106), 5
LINE (25, 104)-(27, 104), 5
LINE (27, 102)-(27, 106), 5
LINE (29, 106)-(29, 102), 5
LINE (29, 102)-(32, 102), 5
LINE (32, 104)-(29, 104), 5
LINE (29, 106)-(32, 106), 5
LINE (34, 106)-(34, 102), 5
LINE (34, 106)-(37, 106), 5
LINE (39, 106)-(39, 103), 5
LINE (39, 102)-(41, 102), 5
LINE (41, 102)-(41, 104), 5
LINE (41, 104)-(39, 104), 5
LINE (40, 130)-(30, 120), 10, B
LINE (37, 122)-(32, 129), 6, B
PAINT (34, 124), 6, 6
PSET (36, 125), 14
LINE (28, 132)-(30, 132), 5
LINE (31, 132)-(31, 136), 5
LINE (31, 136)-(28, 136), 5
LINE (28, 136)-(28, 132), 5
LINE (30, 135)-(32, 137), 5
LINE (34, 132)-(34, 136), 5
LINE (34, 136)-(37, 136), 5
LINE (37, 136)-(37, 132), 5
LINE (39, 132)-(39, 136), 5
LINE (41, 132)-(44, 132), 5
LINE (42, 132)-(42, 136), 5
'quitwas30120
'pong9060
LINE (100, 70)-(90, 60), 10, B
LINE (90, 74)-(88, 72), 5, B
LINE (88, 76)-(88, 74), 5, B
LINE (94, 72)-(92, 76), 5, B
LINE (96, 76)-(96, 72), 5, B
LINE (96, 72)-(99, 76), 5
LINE (99, 76)-(99, 72), 5
LINE (104, 72)-(101, 72), 5
LINE (101, 72)-(101, 76), 5
LINE (101, 76)-(104, 76), 5
LINE (104, 76)-(104, 74), 5
LINE (104, 74)-(103, 74), 5
LINE (92, 63)-(92, 66), 15
LINE (98, 65)-(98, 68), 15
LINE (95, 63)-(95, 63), 15
'cursor9090
LINE (100, 100)-(90, 90), 10, B
LINE (88, 102)-(86, 102), 5, B
LINE (86, 106)-(86, 102), 5, B
LINE (88, 106)-(86, 106), 5, B
LINE (90, 106)-(90, 102), 5, B
LINE (92, 106)-(90, 106), 5, B
LINE (92, 102)-(92, 106), 5, B
LINE (94, 106)-(94, 102), 5, B
LINE (96, 104)-(94, 102), 5, B
LINE (94, 104)-(96, 106), 5
LINE (100, 102)-(98, 102), 5
LINE (98, 102)-(98, 104), 5
LINE (98, 104)-(100, 104), 5
LINE (100, 104)-(100, 106), 5
LINE (100, 106)-(98, 106), 5
LINE (104, 102)-(102, 106), 5, B
LINE (106, 102)-(106, 106), 5
LINE (106, 104)-(108, 106), 5
LINE (108, 104)-(106, 102), 5, B
LINE (93, 93)-(97, 95), 15
LINE (93, 93)-(93, 97), 15
LINE (93, 97)-(97, 95), 15
LINE (95, 95)-(94, 95), 15
LINE (95, 96)-(97, 98), 15
'net90120
LINE (100, 130)-(90, 120), 10, B
LINE (94, 122)-(96, 122), 1
LINE (93, 123)-(97, 123), 1
LINE (92, 124)-(98, 124), 1
LINE (92, 125)-(98, 125), 1
LINE (97, 126)-(93, 126), 1
LINE (94, 127)-(96, 127), 1
LINE (94, 123)-(96, 123), 2
LINE (94, 124)-(96, 124), 2
LINE (94, 125)-(95, 126), 2
LINE (95, 126)-(96, 126), 2
LINE (96, 127)-(95, 127), 2
LINE (85, 132)-(85, 136), 5
LINE (85, 132)-(87, 132), 5
LINE (86, 134)-(86, 134), 5
LINE (89, 132)-(89, 136), 5
LINE (91, 134)-(89, 132), 5, B
LINE (89, 134)-(91, 136), 5
LINE (93, 136)-(93, 132), 5
LINE (93, 132)-(95, 132), 5
LINE (94, 134)-(94, 134), 5
LINE (94, 136)-(95, 136), 5
LINE (97, 136)-(97, 132), 5
LINE (97, 132)-(99, 132), 5
LINE (98, 134)-(98, 134), 5
LINE (98, 136)-(100, 136), 5
LINE (103, 136)-(103, 132), 5
LINE (103, 132)-(106, 136), 5
LINE (106, 136)-(106, 132), 5
LINE (108, 132)-(108, 136), 5
LINE (108, 132)-(110, 132), 5
LINE (110, 132)-(109, 132), 5
LINE (109, 134)-(109, 134), 5
LINE (109, 136)-(110, 136), 5
LINE (112, 132)-(114, 132), 5
LINE (113, 132)-(113, 136), 5
'aboutx15060
LINE (160, 70)-(150, 60), 10, B
LINE (152, 62)-(157, 67), 38
LINE (152, 67)-(157, 62), 38
LINE (153, 62)-(153, 62), 38
LINE (153, 67)-(153, 67), 38
LINE (157, 67)-(157, 67), 38
LINE (156, 62)-(156, 62), 38
LINE (156, 67)-(156, 67), 38
LINE (145, 72)-(145, 76), 5
LINE (145, 72)-(147, 72), 5
LINE (147, 72)-(147, 76), 5
LINE (147, 74)-(145, 74), 5
LINE (151, 74)-(149, 72), 5, B
LINE (152, 76)-(149, 74), 5, B
LINE (156, 76)-(154, 72), 5, B
LINE (158, 76)-(158, 72), 5, B
LINE (160, 76)-(158, 76), 5, B
LINE (160, 72)-(160, 76), 5, B
LINE (164, 72)-(162, 72), 5, B
LINE (163, 76)-(163, 72), 5, B
'screen15090
LINE (160, 100)-(150, 90), 10, B
PSET (153, 93), 15
PSET (154, 96), 15
PSET (153, 97), 15
PSET (155, 97), 15
PSET (157, 98), 15
PSET (158, 96), 15
PSET (155, 95), 15
PSET (158, 93), 15
PSET (156, 92), 15
PSET (155, 93), 15
PSET (157, 94), 15
PSET (152, 95), 15
LINE (134, 102)-(136, 102), 5
LINE (134, 102)-(134, 104), 5
LINE (134, 104)-(136, 104), 5
LINE (136, 104)-(136, 106), 5
LINE (136, 106)-(134, 106), 5
LINE (138, 106)-(138, 102), 5
LINE (138, 102)-(140, 102), 5
LINE (140, 106)-(138, 106), 5
LINE (142, 106)-(142, 102), 5
LINE (144, 104)-(142, 102), 5, B
LINE (142, 104)-(144, 106), 5
LINE (146, 106)-(146, 102), 5
LINE (146, 102)-(149, 102), 5
LINE (148, 104)-(147, 104), 5
LINE (147, 106)-(149, 106), 5
LINE (151, 106)-(151, 102), 5
LINE (151, 102)-(153, 102), 5
LINE (153, 104)-(151, 104), 5
LINE (151, 106)-(153, 106), 5
LINE (155, 106)-(155, 102), 5
LINE (155, 102)-(158, 106), 5
LINE (158, 106)-(158, 102), 5
LINE (147, 108)-(149, 108), 5
LINE (147, 108)-(147, 110), 5
LINE (147, 110)-(149, 110), 5
LINE (149, 110)-(149, 112), 5
LINE (149, 112)-(147, 112), 5
LINE (151, 112)-(151, 108), 5
LINE (151, 108)-(153, 108), 5
LINE (153, 108)-(153, 112), 5
LINE (153, 110)-(151, 110), 5
LINE (155, 108)-(156, 112), 5
LINE (156, 112)-(158, 108), 5
LINE (160, 108)-(160, 112), 5
LINE (160, 112)-(162, 112), 5
LINE (162, 110)-(160, 110), 5
LINE (160, 108)-(162, 108), 5
LINE (164, 108)-(164, 112), 5
LINE (164, 110)-(166, 112), 5
LINE (166, 110)-(164, 108), 5, B
'
'os-x150120
LINE (160, 130)-(150, 120), 10, B
PSET (153, 129), 15
PSET (152, 128), 15
PSET (151, 127), 15
PSET (152, 126), 15
PSET (154, 128), 15
PSET (154, 125), 15
PSET (156, 127), 15
PSET (156, 124), 15
PSET (157, 124), 15
PSET (158, 124), 15
PSET (157, 121), 15
PSET (158, 121), 15
PSET (159, 121), 15
PSET (159, 122), 15
LINE (149, 136)-(147, 132), 5, B
LINE (153, 132)-(151, 132), 5, B
LINE (151, 134)-(151, 132), 5, B
LINE (153, 134)-(151, 134), 5, B
LINE (153, 136)-(153, 134), 5, B
LINE (153, 136)-(153, 136), 5, B
LINE (153, 136)-(151, 136), 5, B
LINE (157, 134)-(155, 134), 5, B
LINE (159, 136)-(163, 132), 5
LINE (159, 132)-(163, 136), 5
DO
        IF cursort = 1 THEN
                PUT (l, u), cursorpic, XOR
        ELSEIF cursort = 2 THEN
                PUT (l - 5, u - 5), cursorpic2, XOR
        END IF
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        IF cursort = 1 THEN
                PUT (l, u), cursorpic, XOR
        ELSEIF cursort = 2 THEN
                PUT (l - 5, u - 5), cursorpic2, XOR
        END IF
        IF move$ = CHR$(0) + "K" AND l > 0 THEN
                l = l - 5
        ELSEIF move$ = CHR$(0) + "M" AND l < 305 THEN
                l = l + 5
        ELSEIF move$ = CHR$(0) + "H" AND u > 0 THEN
                u = u - 5
        ELSEIF move$ = CHR$(0) + "P" AND u < 185 THEN
                u = u + 5
        END IF
LOOP UNTIL move$ = " "
IF l = 35 AND u = 65 THEN
        calculator
ELSEIF l = 35 AND u = 125 THEN
        END
ELSEIF l = 95 AND u = 65 THEN
        ponggame
ELSEIF l = 95 AND u = 95 THEN
        cursormenu
ELSEIF l = 155 AND u = 95 THEN
        screensaver
ELSEIF l = 155 AND u = 125 THEN
        osx
ELSEIF l = 95 AND u = 125 THEN
        freenet
ELSEIF l = 155 AND u = 65 THEN
        about
ELSEIF l = 35 AND u = 95 THEN
        help
ELSEIF l = 215 AND u = 65 THEN
        guess
END IF
END SUB

SUB osx
        CLS
        SCREEN 12
        PRINT "Operating System X"
        PRINT
        thedrive = 1
        COLOR 7
        DO
                IF thedrive = 1 THEN INPUT "C:\>", move$
                IF thedrive = 2 THEN INPUT "A:\>", move$
                IF move$ = "a:" OR move$ = "A:" THEN
                        thedrive = 2
                ELSEIF move$ = "c:" OR move$ = "C:" THEN
                        thedrive = 1
                ELSEIF move$ = "help" THEN
                        PRINT "OSX is amazingly easy, it's basically DOS."
                        PRINT "Type 'reference' to get all the extra commands."
                        PRINT "That's all you really need to know."
                ELSEIF move$ = "reference" THEN
                        PRINT "Reference Thing:"
                        PRINT
                        PRINT "help             - the help screen"
                        PRINT "reference        - this screen"
                        PRINT "color 1         - changes text color (numbers 1-15 can be used)"
                        PRINT "quit             - leave OSX and go to main menu"
                ELSEIF move$ = "color 1" THEN
                        COLOR 1
                ELSEIF move$ = "color 2" THEN
                        COLOR 2
                ELSEIF move$ = "color 3" THEN
                        COLOR 3
                ELSEIF move$ = "color 4" THEN
                        COLOR 4
                ELSEIF move$ = "color 5" THEN
                        COLOR 5
                ELSEIF move$ = "color 6" THEN
                        COLOR 6
                ELSEIF move$ = "color 7" THEN
                        COLOR 7
                ELSEIF move$ = "color 8" THEN
                        COLOR 8
                ELSEIF move$ = "color 9" THEN
                        COLOR 9
                ELSEIF move$ = "color 10" THEN
                        COLOR 10
                ELSEIF move$ = "color 11" THEN
                        COLOR 11
                ELSEIF move$ = "color 12" THEN
                        COLOR 12
                ELSEIF move$ = "color 13" THEN
                        COLOR 13
                ELSEIF move$ = "color 14" THEN
                        COLOR 14
                ELSEIF move$ = "color 15" THEN
                        COLOR 15
                ELSE
                        SHELL move$
                END IF
        LOOP UNTIL move$ = "quit"
        mainmenu
END SUB

SUB ponggame
        CLS
        LOCATE 8, 8: COLOR 15: PRINT "Hackman Software Pong"
        SLEEP 2
        yourscore = 0
        enemyscore = 0
        DO
        CLS
        PRINT "Scores:"
        PRINT
        PRINT "You have: "; yourscore; " wins."
        PRINT "The computer has: "; enemyscore; " wins."
        PRINT
        PRINT "First to five wins!"
        SLEEP 5
        RANDOMIZE TIMER
        way = INT(RND * 2)
        IF way = 0 THEN bdirection = 2
        IF way = 1 THEN bdirection = 4
        bl = 160
        bu = 110
        u = 50
        eu = 50
        CLS
        DO
                IF yourscore = 1 THEN
                        LINE (100, 50)-(100, 150), 15
                        LINE (90, 150)-(110, 150), 15
                        LINE (100, 50)-(90, 60), 15
                ELSEIF yourscore = 0 THEN
                        LINE (80, 50)-(120, 150), 15, B
                ELSEIF yourscore = 2 THEN
                        LINE (80, 50)-(120, 100), 15
                        LINE (120, 100)-(80, 150), 15
                        LINE (80, 150)-(120, 150), 15
                ELSEIF yourscore = 3 THEN
                        LINE (80, 50)-(120, 75), 15
                        LINE (120, 75)-(80, 100), 15
                        LINE (80, 100)-(120, 125), 15
                        LINE (120, 125)-(80, 150), 15
                ELSEIF yourscore = 4 THEN
                        LINE (80, 50)-(80, 100), 15
                        LINE (80, 100)-(120, 100), 15
                        LINE (120, 50)-(120, 150), 15
                END IF
                IF enemyscore = 1 THEN
                        LINE (200, 50)-(200, 150), 15
                        LINE (190, 150)-(210, 150), 15
                        LINE (200, 50)-(190, 60), 15
                ELSEIF enemyscore = 0 THEN
                        LINE (180, 50)-(220, 150), 15, B
                ELSEIF enemyscore = 2 THEN
                        LINE (180, 50)-(220, 100), 15
                        LINE (220, 100)-(180, 150), 15
                        LINE (180, 150)-(220, 150), 15
                ELSEIF enemyscore = 3 THEN
                        LINE (180, 50)-(220, 75), 15
                        LINE (220, 75)-(180, 100), 15
                        LINE (180, 100)-(220, 125), 15
                        LINE (220, 125)-(180, 150), 15
                ELSEIF enemyscore = 4 THEN
                        LINE (180, 50)-(180, 100), 15
                        LINE (180, 100)-(220, 100), 15
                        LINE (220, 50)-(220, 150), 15
                END IF
                LINE (0, 0)-(319, 199), 15, B
                LINE (160, 0)-(160, 200), 15
                LINE (0, u)-(10, u + 50), 15, BF
                LINE (310, eu)-(320, eu + 50), 15, BF
                LINE (bl, bu)-(bl + 10, bu + 10), 15, BF
                SOUND 0, 1
                move$ = INKEY$
                IF move$ = CHR$(0) + "H" AND u > 0 THEN
                        LINE (0, u)-(10, u + 50), 0, BF
                        u = u - 10
                ELSEIF move$ = CHR$(0) + "P" AND u < 150 THEN
                        LINE (0, u)-(10, u + 50), 0, BF
                        u = u + 10
                END IF
                LINE (bl, bu)-(bl + 10, bu + 10), 0, BF
                IF bdirection = 1 AND bu = 0 THEN
                        bdirection = 3
                        SOUND 300, 1
                ELSEIF bdirection = 1 AND bl = 10 AND bu >= u AND bu < u + 50 THEN
                        bdirection = 2
                        SOUND 300, 1
                END IF
                IF bdirection = 2 AND bu = 0 THEN
                        bdirection = 4
                        SOUND 300, 1
                ELSEIF bdirection = 2 AND bl = 300 AND bu >= eu AND bu <= eu + 50 THEN
                        bdirection = 1
                        SOUND 300, 1
                END IF
                IF bdirection = 3 AND bu = 190 THEN
                        bdirection = 1
                        SOUND 300, 1
                ELSEIF bdirection = 3 AND bl = 10 AND bu >= u AND bu < u + 50 THEN
                        bdirection = 4
                        SOUND 300, 1
                END IF
                IF bdirection = 4 AND bu = 190 THEN
                        bdirection = 2
                        SOUND 300, 1
                ELSEIF bdirection = 4 AND bl = 300 AND bu >= eu AND bu <= eu + 50 THEN
                        bdirection = 3
                        SOUND 300, 1
                END IF
                IF bdirection = 1 THEN
                        bl = bl - 10
                        bu = bu - 10
                ELSEIF bdirection = 2 THEN
                        bl = bl + 10
                        bu = bu - 10
                ELSEIF bdirection = 3 THEN
                        bl = bl - 10
                        bu = bu + 10
                ELSEIF bdirection = 4 THEN
                        bl = bl + 10
                        bu = bu + 10
                END IF
                IF bdirection = 2 OR bdirection = 4 THEN
                        moving = INT(RND * 14)
                        IF moving < 13 THEN
                                LINE (310, eu)-(319, eu + 50), 0, BF
                                IF bu > eu + 20 THEN
                                        eu = eu + 10
                                ELSEIF bu < eu THEN
                                        eu = eu - 10
                                END IF
                        END IF
                END IF
        LOOP UNTIL bl = -10 OR bl = 320
        IF bl = -10 THEN
                enemyscore = enemyscore + 1
        ELSEIF bl = 320 THEN
                yourscore = yourscore + 1
        END IF
        LOOP UNTIL enemyscore = 5 OR yourscore = 5
        CLS
        IF enemyscore = 5 THEN
                PRINT "The computer beat you pretty"
                PRINT "easily."
        ELSEIF yourscore = 5 THEN
                PRINT "You won, but the computer will"
                PRINT "get you next time!"
        END IF
        move$ = CHR$(0)
        DO
                move$ = INKEY$
        LOOP UNTIL move$ > CHR$(0)
        u = 65
        mainmenu
END SUB

SUB screensaver
SCREEN 13
CLS
FOR i = 1 TO 200
        l(i) = -10
NEXT i

CLS

DO
        PRINT "Enter number of stars.  Maximum= 100."
        INPUT stars
LOOP UNTIL stars <= 100

CLS
init = stars

DO
        FOR i = 1 TO stars - init
                PSET (l(i), u(i)), 0
                IF l(i) < 0 OR l(i) > 319 OR u(i) < 0 OR u(i) > 200 THEN
                        l(i) = 160
                        u(i) = 100
                        udir(i) = INT(RND * 40) - 20
                        udir(i) = udir(i) / 10
                        ldir(i) = INT(RND * 40) - 20
                        ldir(i) = ldir(i) / 10
                        cl(i) = INT(RND * 3)
                        IF cl(i) = 0 THEN cl(i) = 7
                        IF cl(i) = 1 THEN cl(i) = 8
                        IF cl(i) = 2 THEN cl(i) = 15
                END IF
                l(i) = l(i) + ldir(i)
                u(i) = u(i) + udir(i)
                PSET (l(i), u(i)), cl(i)
                udir(i) = udir(i) + udir(i) / 5
                ldir(i) = ldir(i) + ldir(i) / 5
        NEXT i
        IF init > 0 THEN init = init - 1
LOOP UNTIL INKEY$ <> ""
CLS
mainmenu

END SUB

