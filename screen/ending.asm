.INCLUDE "constants/ending_charmap.asm"

	.BYTE 5 ;string 1 total line(s)

ending_string_1:
	.BYTE @line_1_end - @line_1_start
	leftscreencoord 8, 18

@line_1_start:
	.BYTE "MEGAMAN HAS ENDED"
@line_1_end:

	.BYTE @line_2_end - @line_2_start
	leftscreencoord 7, 20

@line_2_start:
	.BYTE "THE EVIL DOMINATION"
@line_2_end:

	.BYTE @line_3_end - @line_3_start
	leftscreencoord 12, 22

@line_3_start:
	.BYTE "OF D", $7B, "WILY"
@line_3_end:

	.BYTE @line_4_end - @line_4_start
	leftscreencoord 10, 24

@line_4_start:
	.BYTE "AND RESTORED"
@line_4_end:

	.BYTE @line_5_end - @line_5_start
	leftscreencoord 8, 26

@line_5_start:
	.BYTE "THE WORLD TO PEACE"
@line_5_end:

	.BYTE 4 ;string 2 total line(s)

ending_string_2:
	.BYTE @line_1_end - @line_1_start
	leftscreencoord 4, 18

@line_1_start:
	.BYTE "HOWEVER,THE NEVER ENDING"
@line_1_end:

	.BYTE @line_2_end - @line_2_start
	leftscreencoord 8, 20

@line_2_start:
	.BYTE "BATTLE CONTINUES"
@line_2_end:

	.BYTE @line_3_end - @line_3_start
	leftscreencoord 2, 22

@line_3_start:
	.BYTE "UNTIL ALL DESTRUCTIVE FORCES"
@line_3_end:

	.BYTE @line_4_end - @line_4_start
	leftscreencoord 10, 24

@line_4_start:
	.BYTE "ARE DEFEATED."
@line_4_end:

	.BYTE 2 ;string 3 total line(s)

ending_string_3:
	.BYTE @line_1_end - @line_1_start
	leftscreencoord 9, 20

@line_1_start:
	.BYTE "FIGHT,MEGAMAN!"
@line_1_end:

	.BYTE @line_2_end - @line_2_start
	leftscreencoord 5, 22

@line_2_start:
	.BYTE "FOR EVERLASTING PEACE!"
@line_2_end:

	.BYTE $FF

ending_string_4:
	.BYTE @end - @start
	rightscreencoord 14, 20

@start:
	.BYTE "STAFF"
@end:

ending_string_5:
	.BYTE @end - @start
	leftscreencoord 13, 20

@start:
	.BYTE "PLANNER"
@end:

ending_string_6:
	.BYTE @end - @start
	leftscreencoord 15, 23

@start:
	.BYTE "A.K"
@end:

ending_string_7:
	.BYTE @end - @start
	rightscreencoord 7, 20

@start:
	.BYTE "CHARACTER DESIGNER"
@end:

ending_string_8:
	.BYTE @end - @start
	rightscreencoord 12, 23

@start:
	.BYTE "YASUKICHI"
@end:

ending_string_9:
	.BYTE @end - @start
	leftscreencoord 7, 20

@start:
	.BYTE "CHARACTER DESIGNER"
@end:

ending_string_10:
	.BYTE @end - @start
	leftscreencoord 13, 23

@start:
	.BYTE "TOM PON"
@end:

	.BYTE $FF

ending_string_11:
	.BYTE @end - @start
	rightscreencoord 12, 23

@start:
	.BYTE "INAFKING "
@end:

	.BYTE $FF

ending_string_12:
	.BYTE @end - @start
	leftscreencoord 13, 23

@start:
	.BYTE "  A.K  "
@end:

ending_string_13:
	.BYTE @end - @start
	rightscreencoord 7, 20

@start:
	.BYTE "    PROGRAMMER    "
@end:

ending_string_14:
	.BYTE @end - @start
	rightscreencoord 12, 23

@start:
	.BYTE " H.M.D.  "
@end:

ending_string_15:
	.BYTE @end - @start
	leftscreencoord 7, 20

@start:
	.BYTE " SOUND PROGRAMMER "
@end:

ending_string_16:
	.BYTE @end - @start
	leftscreencoord 7, 23

@start:
	.BYTE "CHANCHACORIN MANAMI"
@end:

ending_string_17:
	.BYTE @end - @start
	rightscreencoord 8, 20

@start:
	.BYTE "SOUND PROGRAMMER"
@end:

ending_string_18:
	.BYTE @end - @start
	rightscreencoord 8, 23

@start:
	.BYTE "YUUKICHAN'S PAPA"
@end:

ending_string_19:
	.BYTE @end - @start
	leftscreencoord 8, 20

@start:
	.BYTE "                "
@end:

ending_string_20:
	.BYTE @end - @start
	leftscreencoord 7, 23

@start:
	.BYTE "                   "
@end:

ending_string_21:
	.BYTE @end - @start
	leftscreencoord 10, 20

@start:
	.BYTE "PRESENTED BY"
@end:

ending_string_22:
	.BYTE @end - @start
	leftscreencoord 10, 23

@start:
	.BYTE "CAPCOM U.S.A.,"
@end:
