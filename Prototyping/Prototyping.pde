int divW = 1920;
int divH = 1080;

int appWidth, appHeight;

void setup() {
  fullScreen();
  noLoop();
  
  appWidth = displayWidth;
  appHeight = displayHeight;
}

void draw() {
  background(128);

  // Images + X button
  rect(appWidth * (85.67f / divW), appHeight * (100.46f / divH), appWidth * (502.3f / divW), appHeight * (602.76f / divH));
  rect(appWidth * (135.90f / divW), appHeight * (150.69f / divH), appWidth * (401.84f / divW), appHeight * (492.25f / divH));
  rect(appWidth * (537f / divW), appHeight * (100.69f / divH), appWidth * (50.23f / divW), appHeight * (50.23f / divH)); // X button

  // Selection rectangles + X button
  rect(appWidth * (1250f / divW), appHeight * (250f / divH), appWidth * (650f / divW), appHeight * (420f / divH)); // outer rect
  rect(appWidth * (1300f / divW), appHeight * (300f / divH), appWidth * (550f / divW), appHeight * (330f / divH)); // inner rect
  rect(appWidth * (1850f / divW), appHeight * (250f / divH), appWidth * (50.23f / divW), appHeight * (50f / divH)); // X button

  // Music buttons + progress bar
  rect(appWidth * (58.5f / divW), appHeight * (900f / divH), appWidth * (1800f / divW), appHeight * (400f / divH)); // outer rect
  rect(appWidth * (85f / divW), appHeight * (930f / divH), appWidth * (1750f / divW), appHeight * (140f / divH)); // inner rect
  rect(appWidth * (1808f / divW), appHeight * (900f / divH), appWidth * (50.5f / divW), appHeight * (30f / divH)); // X button
  rect(appWidth * (95f / divW), appHeight * (950f / divH), appWidth * (1730f / divW), appHeight * (20f / divH)); // progress bar

  // Play button rectangle
  float playX = appWidth * (970f / divW);
  float playY = appHeight * (980f / divH);
  float btnW = appWidth * (90f / divW);
  float btnH = appHeight * (80f / divH);
  rect(playX, playY, btnW, btnH);

  float triX1 = playX + btnW * 1/4f;
  float triY1 = playY + btnH * 1/4f;
  float triX2 = playX + btnW * 3/4f;
  float triY2 = playY + btnH * 1/2f;
  float triX3 = playX + btnW * 1/4f;
  float triY3 = playY + btnH * 3/4;
  triangle(triX1, triY1, triX2, triY2, triX3, triY3);

float btnW = appWidth * (90f / divW);
float btnH = appHeight * (80f / divH);
float btnY = appHeight * (980f / divH);  // same vertical position as play button

// Position the fast forward button a bit to the right of play button
float ffwdX = appWidth * (1090f / divW);

// first triangle
float tri1X1 = ffwdX + btnW * 0.2f;
float tri1Y1 = btnY + btnH * 0.25f;

float tri1X2 = ffwdX + btnW * 0.5f;
float tri1Y2 = btnY + btnH * 0.5f;

float tri1X3 = ffwdX + btnW * 0.2f;
float tri1Y3 = btnY + btnH * 0.75f;

triangle(tri1X1, tri1Y1, tri1X2, tri1Y2, tri1X3, tri1Y3);

// second triangle (slightly to the right)
float tri2X1 = ffwdX + btnW * 0.5f;
float tri2Y1 = btnY + btnH * 0.25f;

float tri2X2 = ffwdX + btnW * 0.8f;
float tri2Y2 = btnY + btnH * 0.5f;

float tri2X3 = ffwdX + btnW * 0.5f;
float tri2Y3 = btnY + btnH * 0.75f;

  rect(appWidth * (1210f / divW), appHeight * (980f / divH), btnW, btnH); // next song
  rect(appWidth * (1090f / divW), appHeight * (980f / divH), btnW, btnH); // fast forward
  rect(appWidth * (850f / divW), appHeight * (980f / divH), btnW, btnH);  // pause
  rect(appWidth * (730f / divW), appHeight * (980f / divH), btnW, btnH);  // rewind
  rect(appWidth * (610f / divW), appHeight * (980f / divH), btnW, btnH);  // previous song
  rect(appWidth * (100f / divW), appHeight * (980f / divH), btnW, btnH);  // volume up
  rect(appWidth * (220f / divW), appHeight * (980f / divH), btnW, btnH);  // volume down

  rect(appWidth * (1350f / divW), appHeight * (85f / divH), appWidth * (420f / divW), appHeight * (130f / divH)); // title
  rect(appWidth * (1768f / divW), appHeight * (0f / divH), appWidth * (150f / divW), appHeight * (70f / divH)); // X button
}
