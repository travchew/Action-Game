text0 = "TESTING";
text1 = "GET TO THE EXIT!";
text2 = "PRESS [SPACE] TO DASH ATTACK";
text3 = "DASHING CONSUMES %"
text4 = "AT 100%, PRESS X TO UNLEASH HELL";
text5 = "";
text_list = [text0,text1,text2, text3, text4, text5];
my_text = text_list[textno];


shake_setup();
magx = .3;
magy = .3;


alarm[0] = duration;

x = oCam.x;
y = oCam.y - 50;

global.limit += 10;
