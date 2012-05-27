'HICK FIGHTEN V2.5 BETA  Copyright (C) 1997 Smack Johnson
'The controls are Left and Right, Up is a special attack (does little
'damage, but has good range,) down is a punch, (lots of damage, limited
'range.)
'
'Have fun.  AND DON'T COPY MY CODE!!!!!!!!!!!!!!!!!!

'This program is actually made by Hacksoft.  I saw this one game,
'and thought, hmm, I could make a funnier, better version in 2 hours!
'Here it is.  Those of you that are weak at heart I recommend not
'running this program.  It's intended to only be a joke.
'If you can find a basic file anywhere called "fighten.bas", this
'would be the parody of it.  Enjoy!

'You can find wicked QBasic games from Hacksoft on the web at:

'http://members.aol.com/jeffereys/index.htm

DECLARE SUB eksoplintro ()
DECLARE SUB story ()
DECLARE SUB pickfighter ()
DECLARE SUB battleplan ()
DECLARE SUB yourstatus ()
DECLARE SUB enemystatus ()
DECLARE SUB billy ()
DECLARE SUB billymoving ()
DECLARE SUB harry ()
DECLARE SUB harrymoving ()
DECLARE SUB greta ()
DECLARE SUB gretamoving ()
DECLARE SUB eksopl ()
DECLARE SUB eksoplmoving ()
DECLARE SUB carl ()
DECLARE SUB carlmoving ()
DECLARE SUB sam ()
DECLARE SUB sammoving ()

DIM SHARED thename(600), whichguy, move$, health, ehealth, yourposition, enemyposition, where, l, u, el, eu, pl

CLS
COLOR 15, 4
PRINT "   Hick Fighten  v2.5  BETA                         (C)1996-1997 Smack Johnson  "
COLOR 7, 0
PRINT
PRINT "    **********************************************************"
PRINT "    * You MAY distribute this file as you wish freely,       *"
PRINT "    * as long as this file has NOT been altered in any way.  *"
PRINT "    * You MAY NOT, however, steal this program's game engine *"
PRINT "    * or use this program's code/engine as a base for other  *"
PRINT "    * programs or I will be forced to cry. +                 *"
PRINT "    **********************************************************"
SLEEP 8
eksoplintro
story
SCREEN 13
pickfighter
DO
        l = 100
        battleplan
DO
        IF whichguy = 1 THEN billymoving
        IF whichguy = 2 THEN harrymoving
        IF whichguy = 3 THEN gretamoving
        carlmoving
        SOUND 0, 2
        LINE (0, 100)-(320, 150), 0, BF
LOOP UNTIL health < 1 OR ehealth < 1
        CLS
        IF health < 1 THEN
                PRINT "The computer wins, try again."
        ELSEIF ehealth < 1 THEN
                PRINT "You win, now the next fight."
        END IF
        SLEEP 3
LOOP UNTIL ehealth < 1

DO
        l = 150
        battleplan
        DO
                IF whichguy = 1 THEN billymoving
                IF whichguy = 2 THEN harrymoving
                IF whichguy = 3 THEN gretamoving
                sammoving
                SOUND 0, 2
                LINE (0, 100)-(320, 150), 0, BF
        LOOP UNTIL health < 1 OR ehealth < 1
        CLS
        IF health < 1 THEN
                PRINT "You lost, try again."
        ELSEIF ehealth < 1 THEN
                PRINT "Good, now for Eksopl."
        END IF
LOOP UNTIL ehealth < 1

DO
        l = 200
        battleplan
        DO
                IF whichguy = 1 THEN billymoving
                IF whichguy = 2 THEN harrymoving
                IF whichguy = 3 THEN gretamoving
                eksoplmoving
                SOUND 0, 2
                LINE (0, 100)-(320, 150), 0, BF
        LOOP UNTIL health < 1 OR ehealth < 1
        CLS
        IF health < 1 THEN
                PRINT "You lost to Eksopl.  Try again."
        ELSEIF ehealth < 1 THEN
                PRINT "Cool, you won.  Now you get to "
                PRINT "see the crappy ending!"
        END IF
LOOP UNTIL ehealth < 1

CLS
SCREEN 9
LOCATE 8, 1
IF whichguy = 1 THEN
        COLOR 12
        PRINT "Being the winner you get the pig and you give it to Greta."
        PRINT "'Well,' you say, 'I got you that there piggie back.  What'cha"
        PRINT "think 'bouts me now?'  She pays no attention to you, and she"
        PRINT "says that she and the pig want to be alone.  'Why're you takin'"
        PRINT "that piece of pork over me?'  You ask.  'Cause he's my type.'"
        PRINT "She responds."
ELSEIF whichguy = 2 THEN
        COLOR 6
        PRINT "Beating up Eksopl, then looking around like a fool because you"
        PRINT "still don't know what's going on, someone offers you a pig."
        PRINT "'That'd look a lot better on a plate.'  You say, not knowing"
        PRINT "that everyone was trying to save the pig.  Billy Joe Bob"
        PRINT "catches you eating it and shoots you.  Luckily, the bullet "
        PRINT "bounces off your diaper and hits him in the head."
ELSEIF whichguy = 3 THEN
        COLOR 9
        PRINT "Getting the pig back from the tournament you take him to your"
        PRINT "mobile home and have your way with him.  Althroughout the night"
        PRINT "piggish squeals of enjoyment can be heard echoing throughout the"
        PRINT "state."
END IF
COLOR 15
LOCATE 20, 1: PRINT "Press a key."
SLEEP 20
CLS
COLOR 10
PRINT "                              Credits:"
PRINT
PRINT "Graphics                                 Smack Johnson"
PRINT "Code                                     Smack Johnson"
PRINT "Engine                                   Smack Johnson"
PRINT "Sound                                    Smack Johnson"
PRINT "Everything                               Smack Johnson"
PRINT
PRINT
PRINT "Thanks to Psycho BFG and 666 for their wicked Lucifer demo.  It may"
PRINT "have nothing to do with this game, but it ROCKS!"
PRINT
PRINT "                         Hope you liked it :-)"
PRINT
COLOR 15
PRINT "Press a key"
SLEEP 15

SUB battleplan
        CLS
        SCREEN 13
        COLOR 15
        LOCATE 1, 1: PRINT "The Tournament Setup:"
        LOCATE 2, 1
        IF l = 100 THEN PRINT "Opponent: Cutlery Carl"
        IF l = 150 THEN PRINT "Opponent: Slippery Sam"
        IF l = 200 THEN PRINT "Opponent: Eksopl"
        el = 100
        eu = 50
        enemyposition = 1
        yourposition = 1
        carl
        el = 150
        sam
        el = 200
        eksopl
        u = 102
        IF whichguy = 1 THEN billy
        IF whichguy = 2 THEN harry
        IF whichguy = 3 THEN greta
        SLEEP 4
        CLS
        health = 100
        l = 50
        u = 100
        el = 250
        eu = 100
        ehealth = 100
END SUB

SUB billy
        IF yourposition = 1 OR yourposition = 11 OR yourposition = 111 THEN
                CIRCLE (25 + l, 5 + u), 5, 12
                LINE (15 + l, 10 + u)-(35 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(25 + l, 25 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 10 + u), 12
                LINE (25 + l, 25 + u)-(15 + l, 50 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 50 + u), 12
                LINE (35 + l, 10 + u)-(40 + l, 30 + u), 12
                LINE (40 + l, 30 + u)-(45 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(10 + l, 25 + u), 12
                LINE (10 + l, 25 + u)-(10 + l, 10 + u), 12
                LINE (5 + l, 12 + u)-(10 + l, 10 + u), 8, B
                LINE (10 + l, 12 + u)-(12 + l, 4 + u), 8, B
                IF yourposition = 1 THEN LINE (45 + l, 10 + u)-(49 + l, 5 + u), 12
                IF yourposition = 11 THEN LINE (45 + l, 10 + u)-(47 + l, 5 + u), 12
                IF yourposition = 111 THEN LINE (45 + l, 10 + u)-(45 + l, 5 + u), 12
        ELSEIF yourposition = 5 THEN
                CIRCLE (25 + l, 5 + u), 5, 12
                LINE (15 + l, 10 + u)-(35 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(25 + l, 25 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 10 + u), 12
                LINE (25 + l, 25 + u)-(15 + l, 50 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 50 + u), 12
                LINE (15 + l, 10 + u)-(10 + l, 25 + u), 12
                LINE (10 + l, 25 + u)-(10 + l, 10 + u), 12
                LINE (5 + l, 12 + u)-(10 + l, 10 + u), 8, B
                LINE (10 + l, 12 + u)-(12 + l, 4 + u), 8, B
                LINE (35 + l, 10 + u)-(75 + l, 5 + u), 12
        ELSEIF yourposition = 4 OR yourposition = 6 THEN
                CIRCLE (25 + l, 5 + u), 5, 12
                LINE (15 + l, 10 + u)-(35 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(25 + l, 25 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 10 + u), 12
                LINE (25 + l, 25 + u)-(20 + l, 50 + u), 12
                LINE (25 + l, 25 + u)-(30 + l, 50 + u), 12
                LINE (35 + l, 10 + u)-(40 + l, 30 + u), 12
                LINE (40 + l, 30 + u)-(45 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(10 + l, 25 + u), 12
                LINE (10 + l, 25 + u)-(10 + l, 10 + u), 12
                LINE (5 + l, 12 + u)-(10 + l, 10 + u), 8, B
                LINE (10 + l, 12 + u)-(12 + l, 4 + u), 8, B
        ELSEIF yourposition = 7 THEN
                CIRCLE (20 + l, 5 + u), 5, 12
                LINE (15 + l, 10 + u)-(35 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(25 + l, 25 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 10 + u), 12
                LINE (25 + l, 25 + u)-(20 + l, 50 + u), 12
                LINE (25 + l, 25 + u)-(30 + l, 50 + u), 12
                LINE (35 + l, 10 + u)-(40 + l, 30 + u), 12
                LINE (40 + l, 30 + u)-(45 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(10 + l, 25 + u), 12
                LINE (10 + l, 25 + u)-(10 + l, 10 + u), 12
                LINE (5 + l, 12 + u)-(10 + l, 10 + u), 8, B
                LINE (10 + l, 12 + u)-(12 + l, 4 + u), 8, B
        ELSEIF yourposition = 2 THEN
                CIRCLE (25 + l, 5 + u), 5, 12
                LINE (15 + l, 10 + u)-(35 + l, 10 + u), 12
                LINE (15 + l, 10 + u)-(25 + l, 25 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 10 + u), 12
                LINE (25 + l, 25 + u)-(15 + l, 50 + u), 12
                LINE (25 + l, 25 + u)-(35 + l, 50 + u), 12
                LINE (15 + l, 10 + u)-(52 + l, 15 + u), 12
                LINE (35 + l, 10 + u)-(52 + l, 15 + u), 12
                LINE (50 + l, 20 + u)-(52 + l, 10 + u), 8, B
                LINE (50 + l, 12 + u)-(65 + l, 10 + u), 8, B
        END IF
END SUB

SUB billymoving
        move$ = "d"
        billy
        IF yourposition = 1 OR yourposition = 11 OR yourposition = 111 THEN
                IF yourposition = 1 THEN
                        yourstatus
                        yourposition = 11
                ELSEIF yourposition = 11 THEN
                        yourposition = 111
                ELSEIF yourposition = 111 THEN
                        yourposition = 1
                END IF
                move$ = INKEY$
                IF move$ = CHR$(0) + "K" THEN yourposition = 4
                IF move$ = CHR$(0) + "M" THEN yourposition = 6
                IF move$ = CHR$(0) + "H" THEN yourposition = 2
                IF move$ = CHR$(0) + "P" THEN yourposition = 5
        ELSEIF yourposition = 2 THEN
                IF el < l + 120 THEN
                LINE (l + 65, u + 11)-(el + 25, eu + 10), 38
                SOUND 200, 1
                ehealth = ehealth - 2
                END IF
                yourposition = 1
        ELSEIF yourposition = 4 THEN
                IF l > 0 THEN l = l - 10
                yourposition = 1
        ELSEIF yourposition = 5 THEN
                IF el < l + 80 THEN enemyposition = 7: ehealth = ehealth - 7
                yourposition = 1
        ELSEIF yourposition = 6 THEN
                IF l + 50 < el THEN l = l + 10
                yourposition = 1
                yourstatus
        ELSEIF yourposition = 7 THEN
                yourposition = 1
                IF l > 0 THEN l = l - 10
        END IF
        IF l + 50 > el THEN l = l - 10
END SUB

SUB carl
        IF enemyposition = 1 OR enemyposition = 11 OR enemyposition = 111 THEN
                CIRCLE (25 + el, 5 + eu), 5, 4
                LINE (15 + el, 30 + eu)-(35 + el, 10 + eu), 4, B
                LINE (20 + el, 30 + eu)-(15 + el, 50 + eu), 4
                LINE (30 + el, 30 + eu)-(35 + el, 50 + eu), 4
                LINE (35 + el, 10 + eu)-(45 + el, 20 + eu), 4
                LINE (45 + el, 20 + eu)-(45 + el, 5 + eu), 4
                IF enemyposition = 1 THEN LINE (13 + el, 30 + eu)-(10 + el, 29 + eu), 6, B: LINE (el, 30 + eu)-(10 + el, 30 + eu), 8: LINE (el, 30 + eu)-(10 + el, 29 + eu), 8: LINE (10 + el, 30 + eu)-(15 + el, 10 + eu), 4
                IF enemyposition = 11 THEN LINE (11 + el, 30 + eu)-(8 + el, 29 + eu), 6, B: LINE (-2 + el, 30 + eu)-(8 + el, 30 + eu), 8: LINE (-2 + el, 30 + eu)-(8 + el, 29 + eu), 8: LINE (8 + el, 30 + eu)-(15 + el, 10 + eu), 4
                IF enemyposition = 111 THEN LINE (9 + el, 30 + eu)-(6 + el, 29 + eu), 6, B: LINE (-4 + el, 30 + eu)-(6 + el, 30 + eu), 8: LINE (-4 + el, 30 + eu)-(6 + el, 29 + eu), 8: LINE (6 + el, 30 + eu)-(15 + el, 10 + eu), 4
        ELSEIF enemyposition = 2 THEN
                CIRCLE (25 + el, 5 + eu), 5, 4
                LINE (15 + el, 30 + eu)-(35 + el, 10 + eu), 4, B
                LINE (20 + el, 30 + eu)-(15 + el, 50 + eu), 4
                LINE (30 + el, 30 + eu)-(35 + el, 50 + eu), 4
                LINE (35 + el, 10 + eu)-(45 + el, 20 + eu), 4
                LINE (45 + el, 20 + eu)-(45 + el, 5 + eu), 4
                LINE (15 + el, 10 + eu)-(5 + el, 10 + eu), 4
                LINE (5 + el, 10 + eu)-(-5 + el, 5 + eu), 4
        ELSEIF enemyposition = 4 OR enemyposition = 6 THEN
                CIRCLE (25 + el, 5 + eu), 5, 4
                LINE (15 + el, 30 + eu)-(35 + el, 10 + eu), 4, B
                LINE (20 + el, 30 + eu)-(19 + el, 50 + eu), 4
                LINE (30 + el, 30 + eu)-(31 + el, 50 + eu), 4
                LINE (35 + el, 10 + eu)-(45 + el, 20 + eu), 4
                LINE (45 + el, 20 + eu)-(45 + el, 5 + eu), 4
                LINE (13 + el, 30 + eu)-(10 + el, 29 + eu), 6, B
                LINE (el, 30 + eu)-(10 + el, 30 + eu), 8
                LINE (el, 30 + eu)-(10 + el, 29 + eu), 8
        ELSEIF enemyposition = 5 THEN
                CIRCLE (25 + el, 5 + eu), 5, 4
                LINE (15 + el, 30 + eu)-(35 + el, 10 + eu), 4, B
                LINE (20 + el, 30 + eu)-(15 + el, 50 + eu), 4
                LINE (30 + el, 30 + eu)-(35 + el, 50 + eu), 4
                LINE (35 + el, 10 + eu)-(45 + el, 20 + eu), 4
                LINE (45 + el, 20 + eu)-(45 + el, 5 + eu), 4
                LINE (15 + el, 10 + eu)-(-15 + el, 5 + eu), 4
                LINE (-15 + el, 5 + eu)-(-12 + el, 4 + eu), 6, B
                LINE (-20 + el, 5 + eu)-(-15 + el, 5 + eu), 8
                LINE (-20 + el, 5 + eu)-(-15 + el, 4 + eu), 8
        ELSEIF enemyposition = 7 THEN
                CIRCLE (30 + el, 5 + eu), 5, 4
                LINE (15 + el, 30 + eu)-(35 + el, 10 + eu), 4, B
                LINE (20 + el, 30 + eu)-(15 + el, 50 + eu), 4
                LINE (30 + el, 30 + eu)-(35 + el, 50 + eu), 4
                LINE (35 + el, 10 + eu)-(45 + el, 20 + eu), 4
                LINE (45 + el, 20 + eu)-(45 + el, 5 + eu), 4
                LINE (13 + el, 30 + eu)-(10 + el, 29 + eu), 6, B
                LINE (el, 30 + eu)-(10 + el, 30 + eu), 8
                LINE (el, 30 + eu)-(10 + el, 29 + eu), 8
        END IF
END SUB

SUB carlmoving
        carl
        IF enemyposition = 1 OR enemyposition = 11 OR enemyposition = 111 THEN
                IF enemyposition = 1 THEN
                        enemyposition = 11
                        enemystatus
                        COLOR 4
                        LOCATE 4, 23: PRINT "Cutlery Carl"
                ELSEIF enemyposition = 11 THEN
                        enemyposition = 111
                ELSEIF enemyposition = 111 THEN
                        enemyposition = 1
                END IF
                IF enemyposition = 1 THEN
                        movement = INT(RND * 5)
                        IF movement = 1 THEN enemyposition = 4
                        IF movement = 2 THEN enemyposition = 2: pl = el - 10
                        IF movement = 3 THEN enemyposition = 5
                        IF movement = 4 THEN enemyposition = 6
                END IF
        ELSEIF enemyposition = 2 THEN
                IF pl > l + 40 THEN pl = pl - 15
                LINE (pl, eu + 10)-(pl + 3, eu + 9), 6, B
                LINE (-10 + pl, eu + 10)-(pl, eu + 10), 8
                LINE (-10 + pl, eu + 10)-(pl, eu + 9), 8
                IF pl <= l + 40 THEN
                        yourposition = 7
                        health = health - 4
                        enemyposition = 1
                END IF
        ELSEIF enemyposition = 4 THEN
                IF el > l + 50 THEN el = el - 10
                enemyposition = 1
        ELSEIF enemyposition = 5 THEN
                IF l + 50 > el - 20 THEN
                        health = health - 9
                        yourposition = 7
                END IF
                enemyposition = 1
        ELSEIF enemyposition = 6 OR enemyposition = 7 THEN
                IF el + 50 < 320 THEN el = el + 10
                enemyposition = 1
        END IF
        IF el < l + 50 THEN el = el + 10
END SUB

SUB eksopl
        IF enemyposition = 1 OR enemyposition = 11 OR enemyposition = 111 THEN
                CIRCLE (25 + el, 5 + eu), 5, 8
                LINE (25 + el, 10 + eu)-(25 + el, 40 + eu), 8
                LINE (25 + el, 10 + eu)-(15 + el, 20 + eu), 8
                LINE (15 + el, 20 + eu)-(10 + el, 10 + eu), 8
                LINE (25 + el, 10 + eu)-(35 + el, 20 + eu), 8
                LINE (35 + el, 20 + eu)-(30 + el, 30 + eu), 8
                LINE (25 + el, 30 + eu)-(15 + el, 35 + eu), 8
                LINE (15 + el, 35 + eu)-(15 + el, 50 + eu), 8
                LINE (25 + el, 40 + eu)-(35 + el, 50 + eu), 8
                IF enemyposition = 1 THEN CIRCLE (10 + el, 10 + eu), 0, 9: CIRCLE (30 + el, 30 + eu), 0, 9
                IF enemyposition = 11 THEN CIRCLE (10 + el, 10 + eu), 1, 9: CIRCLE (30 + el, 30 + eu), 1, 9
                IF enemyposition = 111 THEN CIRCLE (10 + el, 10 + eu), 2, 9: CIRCLE (30 + el, 30 + eu), 2, 9
        ELSEIF enemyposition = 2 THEN
                CIRCLE (25 + el, 5 + eu), 5, 8
                LINE (25 + el, 10 + eu)-(25 + el, 40 + eu), 8
                LINE (25 + el, 10 + eu)-(el, 10 + eu), 8
                CIRCLE (30 + el, 30 + eu), 2, 9
                LINE (25 + el, 10 + eu)-(35 + el, 20 + eu), 8
                LINE (35 + el, 20 + eu)-(30 + el, 30 + eu), 8
                LINE (25 + el, 30 + eu)-(15 + el, 35 + eu), 8
                LINE (15 + el, 35 + eu)-(15 + el, 50 + eu), 8
                LINE (25 + el, 40 + eu)-(35 + el, 50 + eu), 8
        ELSEIF enemyposition = 4 OR enemyposition = 6 THEN
                CIRCLE (25 + el, 5 + eu), 5, 8
                LINE (25 + el, 10 + eu)-(25 + el, 40 + eu), 8
                LINE (25 + el, 10 + eu)-(15 + el, 20 + eu), 8
                LINE (15 + el, 20 + eu)-(10 + el, 10 + eu), 8
                LINE (25 + el, 10 + eu)-(35 + el, 20 + eu), 8
                LINE (35 + el, 20 + eu)-(30 + el, 30 + eu), 8
                LINE (25 + el, 40 + eu)-(28 + el, 50 + eu), 8
                LINE (25 + el, 30 + eu)-(15 + el, 35 + eu), 8
                LINE (15 + el, 35 + eu)-(20 + el, 50 + eu), 8
                CIRCLE (10 + el, 10 + eu), 1, 9
                CIRCLE (30 + el, 30 + eu), 1, 9
        ELSEIF enemyposition = 5 THEN
                CIRCLE (25 + el, 5 + eu), 5, 8
                LINE (25 + el, 10 + eu)-(25 + el, 40 + eu), 8
                LINE (25 + el, 10 + eu)-(-15 + el, 5 + eu), 8
                CIRCLE (-15 + el, 5 + eu), 2, 9
                LINE (25 + el, 10 + eu)-(35 + el, 20 + eu), 8
                LINE (35 + el, 20 + eu)-(30 + el, 30 + eu), 8
                LINE (25 + el, 30 + eu)-(15 + el, 35 + eu), 8
                LINE (15 + el, 35 + eu)-(15 + el, 50 + eu), 8
                LINE (25 + el, 40 + eu)-(35 + el, 50 + eu), 8
        ELSEIF enemyposition = 7 THEN
                CIRCLE (35 + el, 5 + eu), 5, 8
                LINE (25 + el, 10 + eu)-(25 + el, 40 + eu), 8
                LINE (25 + el, 10 + eu)-(15 + el, 20 + eu), 8
                LINE (15 + el, 20 + eu)-(10 + el, 10 + eu), 8
                LINE (25 + el, 10 + eu)-(35 + el, 20 + eu), 8
                LINE (35 + el, 20 + eu)-(30 + el, 30 + eu), 8
                LINE (25 + el, 30 + eu)-(15 + el, 35 + eu), 8
                LINE (15 + el, 35 + eu)-(15 + el, 50 + eu), 8
                LINE (25 + el, 40 + eu)-(35 + el, 50 + eu), 8
        END IF
END SUB

SUB eksoplintro
        CLS
        COLOR 0, 4
        LOCATE 9, 26: PRINT "Hick Fighten"
        PLAY "o0l1c;l2;cc;l1;c"
        CLS
        SCREEN 13
        COLOR 15
        LOCATE 1, 1: PRINT "Made By:"
        SLEEP 2
        CLS
        COLOR 14: LOCATE 1, 1: PRINT "Smack Johnson"
        GET (0, 0)-(110, 15), thename
        LOCATE 1, 1: PRINT "               "
        LINE (20, 140)-(40, 140), 10
        LINE (20, 140)-(20, 180), 10
        LINE (20, 160)-(40, 160), 10
        LINE (20, 180)-(40, 180), 10
        LINE (50, 140)-(50, 180), 10
        LINE (50, 160)-(70, 140), 10
        LINE (50, 160)-(70, 180), 10
        LINE (110, 140)-(90, 140), 10
        LINE (90, 140)-(90, 160), 10
        LINE (90, 160)-(110, 160), 10
        LINE (110, 160)-(110, 180), 10
        LINE (110, 180)-(90, 180), 10
        CIRCLE (140, 160), 20, 14
        LINE (170, 180)-(170, 140), 10
        LINE (170, 160)-(190, 140), 10, B
        LINE (200, 140)-(200, 180), 10
        LINE (200, 180)-(220, 180), 10
        CIRCLE (130, 150), 3, 14
        LINE (147, 150)-(153, 150), 14
        CIRCLE (140, 170), 5, 14
        COLOR 15
        LOCATE 10, 16: PRINT "aka"
        lr = 10
        l = 120
        r = 40
        FOR i = 1 TO 110
                PUT (l, r), thename
                SOUND 0, 1
                LINE (l, r)-(l + 110, r + 15), 0, BF
                l = l + lr
                IF l < 120 THEN lr = lr + 1
                IF l > 120 THEN lr = lr - 1
        NEXT i
        CLS
        SCREEN 13
        CIRCLE (80, 80), 20, 8
        LINE (80, 100)-(80, 150), 8
        LINE (80, 150)-(60, 190), 8
        LINE (80, 150)-(100, 190), 8
        LINE (80, 100)-(60, 130), 8
        LINE (60, 130)-(100, 140), 8
        LINE (80, 100)-(110, 130), 8
        LINE (110, 130)-(120, 80), 8
        COLOR 8
        LOCATE 4, 6: PRINT "EKSOPL LIVES..."
        LOCATE 7, 6: PRINT CHR$(34); "Don't eat green snow."; CHR$(34)
        SLEEP 2
END SUB

SUB eksoplmoving
        eksopl
        IF enemyposition = 1 OR enemyposition = 11 OR enemyposition = 111 THEN
                IF enemyposition = 1 THEN
                        enemyposition = 11
                        enemystatus
                        COLOR 8
                        LOCATE 4, 23: PRINT "Eksopl"
                ELSEIF enemyposition = 11 THEN
                        enemyposition = 111
                ELSEIF enemyposition = 111 THEN
                        enemyposition = 1
                END IF
                IF enemyposition = 1 THEN
                        movement = INT(RND * 5)
                        IF movement = 1 THEN enemyposition = 4
                        IF movement = 2 THEN enemyposition = 2: pl = el - 10
                        IF movement = 3 THEN enemyposition = 5
                        IF movement = 4 THEN enemyposition = 6
                END IF
        ELSEIF enemyposition = 2 THEN
                IF pl > l + 40 THEN pl = pl - 20
                CIRCLE (pl, eu + 10), 3, 9
                IF pl <= l + 40 THEN
                        yourposition = 7
                        health = health - 6
                        enemyposition = 1
                END IF
        ELSEIF enemyposition = 4 THEN
                IF el > l + 60 THEN el = el - 20
                enemyposition = 1
        ELSEIF enemyposition = 5 THEN
                IF l + 50 >= el - 20 THEN
                        yourposition = 7
                        health = health - 14
                END IF
                enemyposition = 1
        ELSEIF enemyposition = 6 THEN
                IF el + 60 < 320 THEN
                        el = el + 20
                END IF
                enemyposition = 11
        ELSEIF enemyposition = 7 THEN
                enemystatus
                COLOR 8
                LOCATE 4, 23: PRINT "Eksopl"
                enemyposition = 111
        END IF
        IF el < l + 50 THEN l = l + 20
END SUB

SUB enemystatus
        LINE (175, 10)-(275, 20), 4, BF
        LINE (175, 10)-(175 + ehealth, 20), 2, BF
        LINE (174, 9)-(276, 21), 7, B
        LINE (174, 21)-(276, 21), 8
        LINE (276, 21)-(276, 9), 8
END SUB

SUB greta
        IF yourposition = 1 OR yourposition = 11 OR yourposition = 111 THEN
                CIRCLE (30 + l, 5 + u), 5, 9
                CIRCLE (25 + l, 24 + u), 16, 9
                LINE (30 + l, 10 + u)-(10 + l, 10 + u), 9
                LINE (30 + l, 10 + u)-(45 + l, 20 + u), 9
                LINE (45 + l, 20 + u)-(50 + l, 5 + u), 9
                IF yourposition = 1 THEN LINE (15 + l, 35 + u)-(10 + l, 50 + u), 9: LINE (10 + l, 10 + u)-(5 + l, 25 + u), 9
                IF yourposition = 1 THEN LINE (35 + l, 35 + u)-(40 + l, 50 + u), 9
                IF yourposition = 11 THEN LINE (15 + l, 35 + u)-(12 + l, 50 + u), 9: LINE (10 + l, 10 + u)-(7 + l, 25 + u), 9
                IF yourposition = 11 THEN LINE (35 + l, 35 + u)-(38 + l, 50 + u), 9
                IF yourposition = 111 THEN LINE (15 + l, 35 + u)-(14 + l, 50 + u), 9: LINE (10 + l, 10 + u)-(9 + l, 25 + u), 9
                IF yourposition = 111 THEN LINE (35 + l, 35 + u)-(36 + l, 50 + u), 9
        ELSEIF yourposition = 5 THEN
                CIRCLE (30 + l, 5 + u), 5, 9
                CIRCLE (25 + l, 25 + u), 15, 9
                LINE (30 + l, 10 + u)-(10 + l, 10 + u), 9
                LINE (10 + l, 10 + u)-(5 + l, 25 + u), 9
                LINE (30 + l, 10 + u)-(75 + l, 5 + u), 9
                LINE (15 + l, 35 + u)-(10 + l, 50 + u), 9
                LINE (35 + l, 35 + u)-(40 + l, 50 + u), 9
        ELSEIF yourposition = 2 OR yourposition = 3 THEN
                CIRCLE (30 + l, 5 + u), 5, 9
                CIRCLE (25 + l, 25 + u), 15, 9
                LINE (30 + l, 10 + u)-(75 + l, 5 + u), 9
                LINE (30 + l, 10 + u)-(75 + l, 11 + u), 9
                LINE (15 + l, 35 + u)-(10 + l, 50 + u), 9
                LINE (35 + l, 35 + u)-(40 + l, 50 + u), 9
        ELSEIF yourposition = 4 OR yourposition = 6 THEN
                CIRCLE (30 + l, 5 + u), 5, 9
                CIRCLE (25 + l, 25 + u), 15, 9
                LINE (30 + l, 10 + u)-(10 + l, 10 + u), 9
                LINE (10 + l, 10 + u)-(5 + l, 25 + u), 9
                LINE (30 + l, 10 + u)-(45 + l, 20 + u), 9
                LINE (45 + l, 20 + u)-(50 + l, 5 + u), 9
                LINE (15 + l, 35 + u)-(17 + l, 50 + u), 9
                LINE (35 + l, 35 + u)-(33 + l, 50 + u), 9
        ELSEIF yourposition = 7 THEN
                CIRCLE (20 + l, 5 + u), 5, 9
                CIRCLE (25 + l, 25 + u), 15, 9
                LINE (30 + l, 10 + u)-(10 + l, 10 + u), 9
                LINE (10 + l, 10 + u)-(5 + l, 25 + u), 9
                LINE (30 + l, 10 + u)-(45 + l, 20 + u), 9
                LINE (45 + l, 20 + u)-(50 + l, 5 + u), 9
                LINE (15 + l, 35 + u)-(10 + l, 50 + u), 9
                LINE (35 + l, 35 + u)-(40 + l, 50 + u), 9
        END IF
END SUB

SUB gretamoving
        move$ = "d"
        greta
        IF yourposition = 1 OR yourposition = 11 OR yourposition = 111 THEN
                IF yourposition = 1 THEN
                        yourstatus
                        yourposition = 11
                ELSEIF yourposition = 11 THEN
                        yourposition = 111
                ELSEIF yourposition = 111 THEN
                        yourposition = 1
                END IF
                move$ = INKEY$
                IF move$ = CHR$(0) + "H" THEN yourposition = 2
                IF move$ = CHR$(0) + "P" THEN yourposition = 5
                IF move$ = CHR$(0) + "K" THEN yourposition = 4
                IF move$ = CHR$(0) + "M" THEN yourposition = 6
        ELSEIF yourposition = 2 THEN
                IF l + 50 < el THEN l = l + 10
                IF l + 50 >= el THEN
                        yourposition = 3
                        enemyposition = 7
                END IF
        ELSEIF yourposition = 3 THEN
                el = l + 20
                ehealth = ehealth - 3
                enemyposition = 7
                SOUND 80, 2
                el = l + 60
                yourposition = 1
        ELSEIF yourposition = 4 THEN
                IF l > 0 THEN l = l - 10
                yourposition = 1
        ELSEIF yourposition = 5 THEN
                IF el < l + 80 THEN
                        ehealth = ehealth - 8
                        enemyposition = 7
                END IF
                yourposition = 1
        ELSEIF yourposition = 6 THEN
                IF l + 50 < el THEN
                        l = l + 10
                END IF
                yourposition = 1
        ELSEIF yourposition = 7 THEN
                IF l > 0 THEN l = l - 10
                yourposition = 1
                yourstatus
        END IF
        IF l + 50 > el THEN l = l - 10
END SUB

SUB harry
        IF yourposition = 1 OR yourposition = 11 OR yourposition = 111 THEN
                LINE (25 + l, 10 + u)-(20 + l, 30 + u), 6
                LINE (20 + l, 30 + u)-(15 + l, 50 + u), 6
                LINE (20 + l, 30 + u)-(25 + l, 50 + u), 6
                LINE (25 + l, 10 + u)-(27 + l, 25 + u), 6
                LINE (27 + l, 25 + u)-(30 + l, 10 + u), 6
                LINE (25 + l, 10 + u)-(30 + l, 25 + u), 6
                LINE (30 + l, 25 + u)-(35 + l, 10 + u), 6
                IF yourposition = 1 THEN CIRCLE (10 + l, 30 + u), 10, 6: CIRCLE (26 + l, 5 + u), 5, 6
                IF yourposition = 11 THEN CIRCLE (11 + l, 30 + u), 9, 6: CIRCLE (25 + l, 5 + u), 5, 6
                IF yourposition = 111 THEN CIRCLE (12 + l, 30 + u), 8, 6: CIRCLE (24 + l, 5 + u), 5, 6
        ELSEIF yourposition = 5 THEN
                CIRCLE (25 + l, 5 + u), 5, 6
                LINE (25 + l, 10 + u)-(20 + l, 30 + u), 6
                CIRCLE (10 + l, 30 + u), 10, 6
                LINE (20 + l, 30 + u)-(15 + l, 50 + u), 6
                LINE (20 + l, 30 + u)-(25 + l, 50 + u), 6
                LINE (25 + l, 10 + u)-(27 + l, 25 + u), 6
                LINE (27 + l, 25 + u)-(30 + l, 10 + u), 6
                LINE (25 + l, 10 + u)-(65 + l, 5 + u), 6
        ELSEIF yourposition = 4 OR yourposition = 6 THEN
                CIRCLE (25 + l, 5 + u), 5, 6
                LINE (25 + l, 10 + u)-(20 + l, 30 + u), 6
                LINE (20 + l, 30 + u)-(18 + l, 50 + u), 6
                LINE (20 + l, 30 + u)-(22 + l, 50 + u), 6
                LINE (25 + l, 10 + u)-(27 + l, 25 + u), 6
                LINE (27 + l, 25 + u)-(30 + l, 10 + u), 6
                LINE (25 + l, 10 + u)-(30 + l, 25 + u), 6
                LINE (30 + l, 25 + u)-(35 + l, 10 + u), 6
                CIRCLE (10 + l, 30 + u), 10, 6
        ELSEIF yourposition = 7 THEN
                CIRCLE (20 + l, 5 + u), 5, 6
                LINE (25 + l, 10 + u)-(20 + l, 30 + u), 6
                LINE (20 + l, 30 + u)-(15 + l, 50 + u), 6
                LINE (20 + l, 30 + u)-(25 + l, 50 + u), 6
                LINE (25 + l, 10 + u)-(27 + l, 25 + u), 6
                LINE (27 + l, 25 + u)-(30 + l, 10 + u), 6
                LINE (25 + l, 10 + u)-(30 + l, 25 + u), 6
                LINE (30 + l, 25 + u)-(35 + l, 10 + u), 6
                CIRCLE (10 + l, 30 + u), 10, 6
        ELSEIF yourposition = 2 THEN
                CIRCLE (50 + l, 20 + u), 10, 6
                CIRCLE (5 + l, 5 + u), 5, 6
                LINE (5 + l, 10 + u)-(40 + l, 20 + u), 6
                LINE (40 + l, 20 + u)-(35 + l, 50 + u), 6
                LINE (40 + l, 20 + u)-(45 + l, 50 + u), 6
                LINE (5 + l, 10 + u)-(10 + l, 30 + u), 6
                LINE (10 + l, 30 + u)-(l, 30 + u), 6
        END IF
END SUB

SUB harrymoving
        move$ = "d"
        harry
        IF yourposition = 1 OR yourposition = 11 OR yourposition = 111 THEN
                IF yourposition = 1 THEN
                        yourstatus
                        yourposition = 11
                ELSEIF yourposition = 11 THEN
                        yourposition = 111
                ELSEIF yourposition = 111 THEN
                        yourposition = 1
                END IF
                move$ = INKEY$
                IF move$ = CHR$(0) + "H" THEN yourposition = 2
                IF move$ = CHR$(0) + "P" THEN yourposition = 5
                IF move$ = CHR$(0) + "M" THEN yourposition = 6
                IF move$ = CHR$(0) + "K" THEN yourposition = 4
        ELSEIF yourposition = 2 THEN
                IF l + 50 < el THEN l = l + 10
                IF l + 50 >= el THEN
                        enemyposition = 7
                        ehealth = ehealth - 3
                        yourposition = 1
                        el = el + 10
                END IF
        ELSEIF yourposition = 4 THEN
                IF l > 0 THEN l = l - 10
                yourposition = 1
        ELSEIF yourposition = 5 THEN
                IF el <= l + 70 THEN
                        ehealth = ehealth - 8
                        enemyposition = 7
                END IF
                yourposition = 1
        ELSEIF yourposition = 6 THEN
                IF l + 50 < el THEN l = l + 10
                yourposition = 1
        ELSEIF yourposition = 7 THEN
                IF l > 0 THEN l = l - 10
                yourposition = 1
                yourstatus
        END IF
        IF l + 50 > el THEN l = l - 10
END SUB

SUB pickfighter
        CLS
        whichguy = 1
        COLOR 15
        LOCATE 1, 1: PRINT "Choose your redneck:"
        COLOR 12
        LOCATE 14, 6: PRINT "Billy Joe Bob"
        COLOR 6
        LOCATE 15, 6: PRINT "Fat Bunged Harry"
        COLOR 9
        LOCATE 16, 6: PRINT "Greasy Pig Greta"
        flashie = 1
        FOR i = 1 TO 50
                move$ = INKEY$
        NEXT i
        DO
                move$ = CHR$(0)
                DO
                        move$ = INKEY$
                        IF flashie = 1 THEN
                                COLOR 15
                                flashie = 2
                        ELSEIF flashie = 2 THEN
                                COLOR 0
                                flashie = 1
                        END IF
                        IF whichguy = 1 THEN LOCATE 14, 4: PRINT "*"
                        IF whichguy = 2 THEN LOCATE 15, 4: PRINT "*"
                        IF whichguy = 3 THEN LOCATE 16, 4: PRINT "*"
                LOOP UNTIL move$ > CHR$(0)
                LOCATE 14, 4: PRINT " "
                LOCATE 15, 4: PRINT " "
                LOCATE 16, 4: PRINT " "
                IF move$ = CHR$(0) + "H" THEN whichguy = whichguy - 1
                IF whichguy = 0 THEN whichguy = 3
                IF move$ = CHR$(0) + "P" THEN whichguy = whichguy + 1
                IF whichguy = 4 THEN whichguy = 1
        LOOP UNTIL move$ = " " OR move$ = CHR$(0) + "K" OR move$ = CHR$(0) + "M"
        CLS
        SCREEN 13
        l = 0
        u = 0
        yourposition = 1
        LOCATE 8, 1
        IF whichguy = 1 THEN
                billy
                COLOR 12
                PRINT "Armed with a short range pistol,"
                PRINT "Billy Joe Bob thinks he gots what it"
                PRINT "takes to get that li'l pig back.  "
                PRINT "And when he does, he hopes Greta'll"
                PRINT "be impressed.  (hint hint)"
        ELSEIF whichguy = 2 THEN
                harry
                COLOR 6
                PRINT "Although related to a redneck family"
                PRINT "tree, (one that goes in a circle,) he"
                PRINT "is too old to realize what the heck is"
                PRINT "going on.  With powerful fists and a"
                PRINT "fogie diaper full-o-crap at his"
                PRINT "disposal, he unknowingly enters the"
                PRINT "tournament. "
        ELSEIF whichguy = 3 THEN
                greta
                COLOR 9
                PRINT "She entered the tournament the second "
                PRINT "she heard her boyfriend's name, Smookie."
                PRINT "With her father's beer belly and armpits"
                PRINT "greasy as a burger from Wendy's, she"
                PRINT "enters the tournament in search of him."
        END IF
        LOCATE 16, 1: PRINT "Press a key"
        SLEEP 20
        move$ = INKEY$
END SUB

SUB sam
        IF enemyposition = 1 OR enemyposition = 11 OR enemyposition = 111 THEN
                LINE (20 + el, 0 + eu)-(30 + el, 10 + eu), 2, B
                LINE (10 + el, 10 + eu)-(40 + el, 20 + eu), 2, B
                LINE (15 + el, 20 + eu)-(35 + el, 30 + eu), 2, B
                LINE (15 + el, 50 + eu)-(20 + el, 30 + eu), 2
                LINE (35 + el, 50 + eu)-(30 + el, 30 + eu), 2
                LINE (10 + el, 10 + eu)-(5 + el, 20 + eu), 2
                LINE (40 + el, 10 + eu)-(45 + el, 30 + eu), 2
                IF enemyposition = 1 THEN LINE (5 + el, 20 + eu)-(5 + el, 5 + eu), 2
                IF enemyposition = 11 THEN LINE (5 + el, 20 + eu)-(3 + el, 5 + eu), 2
                IF enemyposition = 111 THEN LINE (5 + el, 20 + eu)-(1 + el, 5 + eu), 2
        ELSEIF enemyposition = 2 THEN
                LINE (20 + el, 0 + eu)-(30 + el, 10 + eu), 2, B
                LINE (10 + el, 10 + eu)-(40 + el, 20 + eu), 2, B
                LINE (15 + el, 20 + eu)-(35 + el, 30 + eu), 2, B
                LINE (15 + el, 50 + eu)-(20 + el, 30 + eu), 2
                LINE (35 + el, 50 + eu)-(30 + el, 30 + eu), 2
                LINE (40 + el, 10 + eu)-(45 + el, 30 + eu), 2
                LINE (10 + el, 10 + eu)-(5 + el, 20 + eu), 2
                LINE (5 + el, 20 + eu)-(el, 10 + eu), 2
                LINE (40 + el, 10 + eu)-(50 + el, 30 + eu), 2
        ELSEIF enemyposition = 4 OR enemyposition = 6 THEN
                LINE (20 + el, 0 + eu)-(30 + el, 10 + eu), 2, B
                LINE (10 + el, 10 + eu)-(40 + el, 20 + eu), 2, B
                LINE (15 + el, 20 + eu)-(35 + el, 30 + eu), 2, B
                LINE (20 + el, 50 + eu)-(20 + el, 30 + eu), 2
                LINE (30 + el, 50 + eu)-(30 + el, 30 + eu), 2
                LINE (10 + el, 10 + eu)-(5 + el, 20 + eu), 2
                LINE (40 + el, 10 + eu)-(45 + el, 30 + eu), 2
                LINE (5 + el, 20 + eu)-(5 + el, 5 + eu), 2
        ELSEIF enemyposition = 5 THEN
                LINE (20 + el, 0 + eu)-(30 + el, 10 + eu), 2, B
                LINE (10 + el, 10 + eu)-(40 + el, 20 + eu), 2, B
                LINE (15 + el, 20 + eu)-(35 + el, 30 + eu), 2, B
                LINE (15 + el, 50 + eu)-(20 + el, 30 + eu), 2
                LINE (35 + el, 50 + eu)-(30 + el, 30 + eu), 2
                LINE (40 + el, 10 + eu)-(45 + el, 30 + eu), 2
                LINE (10 + el, 10 + eu)-(-15 + el, 10 + eu), 2
        ELSEIF enemyposition = 7 THEN
                LINE (25 + el, 0 + eu)-(35 + el, 10 + eu), 2, B
                LINE (10 + el, 10 + eu)-(40 + el, 20 + eu), 2, B
                LINE (15 + el, 20 + eu)-(35 + el, 30 + eu), 2, B
                LINE (15 + el, 50 + eu)-(20 + el, 30 + eu), 2
                LINE (35 + el, 50 + eu)-(30 + el, 30 + eu), 2
                LINE (40 + el, 10 + eu)-(45 + el, 30 + eu), 2
                LINE (10 + el, 10 + eu)-(12 + el, 30 + eu), 2
        END IF
END SUB

SUB sammoving
        sam
        IF enemyposition = 1 OR enemyposition = 11 OR enemyposition = 111 THEN
                IF enemyposition = 1 THEN
                        enemyposition = 11
                        enemystatus
                        COLOR 2
                        LOCATE 4, 23: PRINT "Slippery Sam"
                ELSEIF enemyposition = 11 THEN
                        enemyposition = 111
                ELSEIF enemyposition = 111 THEN
                        enemyposition = 1
                END IF
                IF enemyposition = 1 THEN
                        movement = INT(RND * 5)
                        IF movement = 1 THEN enemyposition = 2: pl = el
                        IF movement = 2 THEN enemyposition = 4
                        IF movement = 3 THEN enemyposition = 5
                        IF movement = 4 THEN enemyposition = 6
                END IF
        ELSEIF enemyposition = 2 THEN
                IF pl > l + 30 THEN pl = pl - 10
                LINE (pl + 20, eu)-(pl + 30, eu + 10), 8, B
                LINE (pl + 10, eu + 10)-(pl + 40, eu + 20), 8, B
                LINE (pl + 15, eu + 20)-(pl + 35, eu + 30), 8, B
                LINE (20 + pl, 30 + eu)-(15 + pl, 50 + eu), 8
                LINE (30 + pl, 30 + eu)-(35 + pl, 50 + eu), 8
                LINE (40 + pl, 10 + eu)-(50 + pl, 30 + eu), 8
                LINE (10 + pl, 10 + eu)-(pl, 20 + eu), 8
                LINE (pl, 20 + eu)-(-10 + pl, 10 + eu), 8
                IF pl <= l + 30 THEN
                        yourposition = 7
                        health = health - 3
                        enemyposition = 1
                END IF
        ELSEIF enemyposition = 4 THEN
                IF el > l + 50 THEN el = el - 10
                enemyposition = 1
        ELSEIF enemyposition = 5 THEN
                IF l + 50 > el - 20 THEN
                        health = health - 9
                        yourposition = 7
                END IF
                enemyposition = 1
        ELSEIF enemyposition = 6 THEN
                IF el + 50 < 320 THEN el = el + 10
                enemyposition = 1
        ELSEIF enemyposition = 7 THEN
                IF el + 50 < 320 THEN el = el + 10
                enemystatus
                COLOR 2
                LOCATE 4, 23: PRINT "Slippery Sam"
                enemyposition = 1
        END IF
END SUB

SUB story
        CLS
        SCREEN 9
        COLOR 4
        PRINT " Story:"
        SLEEP 1
        PRINT
        PRINT "5000 years ago a guy named Eksopl decided to start a tournament."
        PRINT "He was the guy who had everything under his rule.  The only people"
        PRINT "that were available to fight were a bunch of Hicks."
        SLEEP 8
        PRINT
        PRINT "Figuring that he would only fight one because they'd beat each"
        PRINT "other out, he needed a way to lure them to battle against one"
        PRINT "another."
        SLEEP 8
        PRINT
        PRINT "In the middle of the night, Eksopl stole their prize pig, Smookie,"
        PRINT "and locked him in the dungeon and he left the whole hick family"
        PRINT "a note saying, fight each other or the pig dies, then fight me, etc."
        SLEEP 8
        PRINT
        PRINT "Then the Hick Fighten' began..."
        SLEEP 3
END SUB

SUB yourstatus
        LINE (25, 10)-(125, 20), 4, BF
        LINE (25, 10)-(25 + health, 20), 2, BF
        LINE (24, 9)-(126, 21), 7, B
        LINE (24, 21)-(126, 21), 8
        LINE (126, 21)-(126, 9), 8
        LOCATE 4, 4
        IF whichguy = 1 THEN
                COLOR 12
                PRINT "Billy Joe Bob"
        ELSEIF whichguy = 2 THEN
                COLOR 6
                PRINT "Fat Bunged Harry"
        ELSEIF whichguy = 3 THEN
                COLOR 9
                PRINT "Greasy Pig Greta"
        END IF
END SUB

