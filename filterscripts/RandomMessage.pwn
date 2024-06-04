                                                                                                                                                                    /*

     ______________________________________________________________________
    |                  _       _                  ________                 |
    |                (  \    (  \               (   _____ \                |
    |                |  |    |  |      ______   |  |     \ \               |
    |                |  |____|  |    (    ___\  |  |      \ \              |
    |                |   ____   |     \  \  (_) |  |       ) )             |
    |                |  |    |  |   _  \  \     |  |      / /              |
    |                |  )    |  ) (  )__\  \    |  |_____/ /               |
    |                |_/     |_/   \_______/    |_________/                |
    |                                                                      |
    |                       [HSD] High Speed Drivers                       |
    |                                                                      |
    |      [HSD] Company Clan of Programmers, Scripters, and Mappers       |
    |______________________________________________________________________|
                     http://forum.sa-mp.com/member.php?u=211939

                        Updated Date: 10/20/2013 (MM/DD/YYYY)

                       Visit Me on SA-MP Forum for More Updates

                                 Let the Credits !

• Super Fast System
• [0] Command(s)
• Fast Commands to Enable or Disable System
• http://forum.sa-mp.com/member.php?u=211939 | Visit Me on SA-MP Forum |.

~ Do: ~

- Must have Permission if you want to Share this on another Website.
- etc.

~ Do Not: ~

- Remove Credits.
- Change Author Name / Information.
- Stealing Filterscript.
- No Permission but Sharing on another Website.
- etc.

[ Information ] :-

Author: SAMProductions
FilterScript Name: Simple Random Messages System - v1.0
Updated Date: 10/20/2013 - (MM/DD/YYYY)

Thanks To:

SA-MP Team - a_samp

You - For Supporting and Downloading

and to Whoever i forgot to Mention

-: [ End Information ]

• Do not Remove the Credits.
• Do not Change the Author Name / Information.
• Do not Steal the Filterscript.

• Disrespecting Any of These, You will Die.
• Disrespecting Any of These, I'll Rape You.
• Disrespecting Any of These, I'll Report You.

• Thanks For Using, Enjoy :)



//----------------------------------------------------------------------------//                                                                                                                                                                                                                                    */

#include <a_samp> // Credits: SA-MP Team

#define COLOR_DISPATCH 		0xff4419ff
#define COLOR_WHITE 		0xFFFFFFFF
#define COLOR_SYNTAX        0xAFAFAFFF
#define COLOR_YELLOW    	0xFFFF00FF
#define COLOR_YELLOW2       0xF5DEB3FF
#define COLOR_LIGHTORANGE   0xF7A763FF
#define COLOR_AQUA        	0xCCFFFFFF
#define COLOR_GREEN         0x32CD32FF
#define COLOR_GREY          0xAFAFAFFF
#define	COLOR_GREY1    		0xE6E6E6FF
#define COLOR_GREY2 		0xC8C8C8FF
#define COLOR_GREY3 		0xAAAAAAFF
#define COLOR_GREY4 		0x8C8C8CFF
#define COLOR_GREY5 		0x6E6E6EFF
#define COLOR_LIGHTRED      0xFF6347FF
#define COLOR_ORANGE        0xFF9900FF
#define COLOR_RED           0xAA3333FF
#define COLOR_HUNT          0xFF42CFFF
#define COLOR_PURPLE        0xC2A2DAFF
#define COLOR_NEWBIE        0x7DAEFFFF
#define COLOR_BLUE          0x233EFAFF
#define COLOR_ROYALBLUE     0x9999FFFF
#define COLOR_DOCTOR        0xFF8282FF
#define COLOR_DARKGREEN     0x00AA00FF
#define COLOR_VIP           0x6a86b5FF
#define COLOR_WALKIETALKIE  0xB2EBE0FF
#define COLOR_GLOBAL 		0xB8FFBCFF
#define COLOR_STATS         0xFFFF91AA
#define COLOR_LIGHTGREEN    0x74AF7AFF
#define COLOR_ADMINCHAT     0xED6464FF
#define COLOR_FACTIONCHAT   0xBDF38BFF
#define COLOR_SAMP          0xA9C4E4FF
#define COLOR_GENERAL3		0x00D900C8
#define COLOR_TEAL 			0x00AAAAAA
#define COLOR_OFFWHITE 		0xF5DEB3AA
#define COLOR_DARKAQUA 		0x83BFBFAA
#define COLOR_REALRED       0xFF0000FF

new RandomMessagesToSend[][] =
{
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Want to donate in this Server? Contact {ff0000}Owner of Star City V1 {ffff00}for donation",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}To claim your newbie package just type [/scrpv1].",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}New in this Server, and Need Help?, /gethelp.",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Please Read the Server Rules Carefully, /rules",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Seen a Hacker/Dmer/Rulebreaker? Report on admin used the cmds[/report][/rdm]",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Want to get jobs?use the command [/locate /findsidejob /findjob >> Job Location] Soon to add more Jobs.",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Are you lost?buy GPS System in Any 7/11 and use the command[/locate]",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Star City Roleplay V1 ServerOwners= [JakongTv] ServerCoOwner=[Gerald].",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}Star City Roleplay V1 ServerDeveloper= [JIA].",
         "{7fff00}[SC:RPv1Notice]:{0xFF0000FF}to avoid in OOC Jail dont Breakrules."

};

public OnFilterScriptInit() // or OnGameModeInit (only if you put this on your Game Mode Script)
{
    print("<|---------------------------[Loaded]---------------------------|>");
    print(" | Simple Random Messages System By JIA |");
    print("<|---------------------------[Loaded]---------------------------|>");
    SetTimer("SendRandomMessageToAll",45000,1); // Timer: 30000 = 30 Seconds (Change This if you want)
    return 1;
}

public OnFilterScriptExit()
{
    print("<|--------------------------[UnLoaded]--------------------------|>");
    print(" | Simple Random Messages System by Hackuna |");
    print("<|--------------------------[UnLoaded]--------------------------|>");
    return 1;
}

forward SendRandomMessageToAll();
public SendRandomMessageToAll()
{
    SendClientMessageToAll(COLOR_YELLOW, RandomMessagesToSend[random(sizeof(RandomMessagesToSend))]);
    return 1;
}
