// CONTROLLER

class ControlFrame extends PApplet {

    int w, h;
    int posYCount;
    int posYCountLabel;
    int controlHeight;
    int controlWidth;
    int buttonWidth;
    int captionLabelWidth;

    int paddingX, paddingY, spacingY;
    PApplet parent;
    ControlP5 cp5;

    boolean toggleWindow;

    List<Textlabel> textLabelList;
    List<String> labelList;

    public ControlFrame(PApplet _parent, int _w, int _h, String _name) {
        super();
        parent = _parent;
        w = _w;
        h = _h;
        paddingX = 20;
        paddingY = 20;
        spacingY = 20;
        captionLabelWidth = 100;
        controlHeight = 16;
        controlWidth = _w - (2 * paddingX) - captionLabelWidth;
        buttonWidth = controlWidth/3;

        toggleWindow = true;

        labelList = new ArrayList();
        labelList.add("Background");
        labelList.add("Export Video");
        labelList.add("Export PDF");
        labelList.add("Label 1");
        labelList.add("Label 2");
        labelList.add("Label 3");
        labelList.add("Label 4");
        labelList.add("Label 5");
        labelList.add("Label 6");
        labelList.add("Label 7");
        labelList.add("Label 8");
        labelList.add("Label 9");
        labelList.add("Label 10");
        labelList.add("Label 11");
        labelList.add("Label 12");
        labelList.add("Label 13");
        labelList.add("Label 14");
        labelList.add("Label 15");

        textLabelList = Arrays.asList(new Textlabel[labelList.size()]);
        PApplet.runSketch(new String[] {this.getClass().getName()}, this);
    }

    public void settings() {
        size(w, h);
    }

    public void setup() {
        surface.setLocation(300, 300);
        surface.setTitle(projectName + " / CONTROLLER");
        surface.setAlwaysOnTop(true);
        cp5 = new ControlP5(this);

        // Add variables to the .plugTo method as follows.
        // .plugTo(parent, "Variable Name String")
        cp5.addToggle("toggleBackground")
        .setCaptionLabel("")
        .plugTo(parent, "bgWhite")
        .setValue(true)
        .setPosition(getX(), getY())
        .setSize(buttonWidth, controlHeight);

        cp5.addToggle("toggleVideo")
        .setCaptionLabel("")
        .plugTo(parent, "exportVideo")
        .setPosition(getX(), getY())
        .setSize(buttonWidth, controlHeight);

        cp5.addButton("buttonPDF")
        .setCaptionLabel("")
        .plugTo(parent, "exportPDF")
        .setPosition(getX(), getY())
        .setSize(buttonWidth, controlHeight);

        cp5.addToggle("toggleConnections")
        .setCaptionLabel("")
        .plugTo(parent, "agentConnected")
        .setValue(true)
        .setPosition(getX(), getY())
        .setSize(buttonWidth, controlHeight);

        cp5.addToggle("toggleNodes")
        .setCaptionLabel("")
        .plugTo(parent, "agentNodes")
        .setValue(true)
        .setPosition(getX(), getY())
        .setSize(buttonWidth, controlHeight);

        cp5.addBang("resetNetwork")
        .setCaptionLabel("")
        .plugTo(parent)
        .setPosition(getX(), getY())
        .setSize(buttonWidth, controlHeight);

        // Sliders

        cp5.addSlider("seperationSlider")
        .setCaptionLabel("")
        .plugTo(parent, "seperationCoeff")
        .setRange(0,100)
        .setValue(15)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("alignmentSlider")
        .setCaptionLabel("")
        .plugTo(parent, "alignmentCoeff")
        .setRange(0,10)
        .setValue(3)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("cohesionSlider")
        .setCaptionLabel("")
        .plugTo(parent, "cohesionCoeff")
        .setRange(0,10)
        .setValue(5)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("speedSlider")
        .setCaptionLabel("")
        .plugTo(parent, "maxSpeed")
        .setRange(0,10)
        .setValue(3)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("forceSlider")
        .setCaptionLabel("")
        .plugTo(parent, "maxForce")
        .setRange(0,1)
        .setValue(0.15)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("neightborDistSlider")
        .setCaptionLabel("")
        .plugTo(parent, "neighbordist")
        .setRange(0,100)
        .setValue(25)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("desiredSeparationSlider")
        .setCaptionLabel("")
        .plugTo(parent, "desiredseparation")
        .setRange(0,50)
        .setValue(10)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);


        cp5.addSlider("connectionLengthSlider")
        .setCaptionLabel("")
        .plugTo(parent, "connectionLength")
        .setRange(0,500)
        .setValue(50)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("connectionSizeSlider")
        .setCaptionLabel("")
        .plugTo(parent, "connectionSize")
        .setRange(0,5)
        .setValue(1)
        .setNumberOfTickMarks(11)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("nodeSizeSlider")
        .setCaptionLabel("")
        .plugTo(parent, "nodeSize")
        .setRange(0,10)
        .setValue(2)
        .setNumberOfTickMarks(11)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("netXSize")
        .setCaptionLabel("")
        .plugTo(parent, "netXSize")
        .setRange(0,200)
        .setValue(32)
        .setNumberOfTickMarks(200)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);

        cp5.addSlider("netYSize")
        .setCaptionLabel("")
        .plugTo(parent, "netYSize")
        .setRange(0,200)
        .setValue(32)
        .setNumberOfTickMarks(200)
        .setPosition(getX(), getY())
        .setSize(controlWidth, controlHeight);


        cp5.setColorCaptionLabel(#000000);
        cp5.setColorActive(#333333);
        cp5.setColorBackground(#CCCCCC);
        cp5.setColorForeground(#888888);

        // List<Slider> sliderList = cp5.getAll(Slider.class);
        // println("sliderList: "+sliderList);
        // for (Slider s:sliderList) {
        //     s.setPosition(getX(), getY());
        //     s.setSize(controlWidth - 50, controlHeight);
        // }

        for (String s:labelList) {

            Textlabel currTextLabel = textLabelList.get(labelList.indexOf(s));
            currTextLabel = cp5.addTextlabel(s)
                                .setText(s.toUpperCase())
                                .setPosition(getXLabel(), getYLabel())
                                .setColorValue(0xFF000000);
        }

    }
    int getX() {
        return paddingX + captionLabelWidth;
    }
    int getY() {
        int result = paddingY + (int)(posYCount * controlHeight*2);
        posYCount++;
        return result ;
    }

    int getXLabel() {
        return paddingX;
    }

    int getYLabel() {
        int result = paddingY + (int)(posYCountLabel * controlHeight*2);
        posYCountLabel++;
        return result ;
    }

    // void setControllerBackground() {
    //     List controllerList = cp5.getAll();
    //     for (int i = 0; i < controllerList.size(); i++) {
    //         controllerList.get(i).setBackground()
    //     }
    // }

    void draw() {
        background(#FFFFFF);
    }

    void toggleWindow() {
        surface.setVisible(toggleWindow);
        surface.setAlwaysOnTop(toggleWindow);
        toggleWindow = !toggleWindow;
        println("Controller Window Toggle");
    }

}
