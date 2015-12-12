// BUILD

// Project ID: GA.000
// http://panchal.io
// ----------------------------------------------------------------------------

void settings() {

    size(CANVAS_WIDTH, CANVAS_HEIGHT, FX2D);
}

void setup() {
    // Set window title
    surface.setTitle(projectName + " / " + CANVAS_WIDTH + " x " + CANVAS_HEIGHT);

    cf = new ControlFrame(this, 260, 640, "Controls");
    background(getRandomColor().get());
    pixelDensity(2);
    frameRate(24);
    noStroke();
    smooth();
}

void draw() {

    drawBegin(); // Call routine draw functions

    // Main Loop



    drawEnd(); // Call routine end draw functions
}
