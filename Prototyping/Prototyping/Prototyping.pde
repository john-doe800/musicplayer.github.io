fullScreen();
noLoop();
background(235, 232, 185); //rgb

rect(85.67,100.46,502.3,602.76);
rect(135.90,150.69,401.84,492.25);
// images 

rect(1250,250,650,420); // outer rectangle
rect(1300,300,550,330); // inner rectangle
// selection


// music buttons + progress bar
rect(58.5,900,1800,200); // outer rectangle
rect(85,930,1750,140); // inner rectangle
rect(95,950,1730,20); // progress bar

rect(1210,980,110,80); // next song
triangle(1210,980,1210,1060,1250,1020);
rect(1250,980,30,80);

rect(1090,980,110,80); // fast forwards button
triangle(1090,980,1090,1060,1130,1020); //first triangle
triangle(1130,980,1130,1060,1170,1020); // second triangle

rect(970,980,110,80); // play button
triangle(970,980,970,1060,1040,1020);

//triangle(x1,y1,x2,y2,x3,y3);
//rect(x,y,w,h);

rect(850,980,110,80); // pause button
rect(860,980,30,80); 
rect(900,980,30,80);

rect(730,980,110,80); // rewind button
triangle(770,980,770,1060,730,1020);
triangle(810,980,810,1060,770,1020);

rect(610,980,110,80); // previous song
rect(620,980,30,80);
triangle(690,980,690,1060,650,1020);

rect(100,980,110,80); // volume up
triangle(110,1050,190,1050,150,1000);

rect(220,980,110,80); // volume down 
triangle(230,1000,310,1000,270,1050);


rect(1350,85,420,130); // title

rect(1768,0,150,70); // x button
