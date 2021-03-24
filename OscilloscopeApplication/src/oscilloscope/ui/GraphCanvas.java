
package oscilloscope.ui;

import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.paint.Color;
import oscilloscope.logic.Channel;
import oscilloscope.logic.OscilloscopeModel;
import oscilloscope.logic.Waveform;

//------------------------------------------------------------------------------

public class GraphCanvas extends Canvas {

    private final GraphicsContext gc;
    
    private final OscilloscopeModel scope;

    private static final int TOP = 50;
    private static final int BOTTOM = 30;
    private static final int LEFT = 50;
    private static final int RIGHT = 20;


    public GraphCanvas(OscilloscopeModel scope) {
        this.scope = scope;
        gc = getGraphicsContext2D();
    }

    @Override
    public double prefWidth(double height) {
        return 0;
    }

    @Override
    public double prefHeight(double width) {
    return 0;
    }

    public boolean isResizeble() {
        return true;
    }

    void drawGraticule() {

        double gridWidth = getWidth()-RIGHT-LEFT;
        double gridHeight = getHeight()-TOP-BOTTOM;


        // background
        gc.setFill(Color.BLACK);
        gc.fillRect(0, 0, getWidth(), getHeight());

        // grid

        // - inner lines
        gc.setStroke(Color.gray(0.2));
        gc.setLineWidth(2);
        gc.setLineDashes(0.1, 4);

        for(int i=1; i<10; i++) {
            gc.strokeLine(LEFT, TOP+gridHeight*(i/10.0), 
                          getWidth()-RIGHT, TOP+gridHeight*(i/10.0));
        }
        for(int i=1; i<10; i++) {
            gc.strokeLine(LEFT+gridWidth*(i/10.0), TOP,
                          LEFT+gridWidth*(i/10.0), getHeight()-BOTTOM);
        }

        // - center lines
        gc.setStroke(Color.gray(0.3));
        gc.setLineWidth(2);
        gc.setLineDashes(0.1, 4);

        gc.strokeLine(LEFT, TOP+gridHeight*(0.5), 
                          getWidth()-RIGHT, TOP+gridHeight*(0.5));
        gc.strokeLine(LEFT+gridWidth*(0.5), TOP,
                          LEFT+gridWidth*(0.5), getHeight()-BOTTOM);


        // - labels
        gc.setStroke(Color.gray(0.6));
        gc.setLineWidth(1);
        gc.setLineDashes(0);

        double maxV = scope.getChannel1().vertBase*0.005;

        if(maxV>=0.5) {
            gc.strokeText(" [V]", LEFT - 40, TOP-20);
            gc.strokeText(" " + maxV, LEFT - 40, TOP+gridHeight*(0.0)+5);
            gc.strokeText(" 0.0", LEFT - 40, TOP+gridHeight*(0.5)+5);
            gc.strokeText("" + -maxV, LEFT - 40, TOP+gridHeight*(1.0)+5);

            gc.setLineWidth(0);
            gc.setStroke(Color.gray(0.4));
            gc.strokeText(" " + maxV*0.8, LEFT - 40, TOP+gridHeight*(0.1)+5);
            gc.strokeText(" " + maxV*0.6, LEFT - 40, TOP+gridHeight*(0.2)+5);
            gc.strokeText(" " + maxV*0.4, LEFT - 40, TOP+gridHeight*(0.3)+5);
            gc.strokeText(" " + maxV*0.2, LEFT - 40, TOP+gridHeight*(0.4)+5);

            gc.strokeText("" + -maxV*0.2, LEFT - 40, TOP+gridHeight*(0.6)+5);
            gc.strokeText("" + -maxV*0.4, LEFT - 40, TOP+gridHeight*(0.7)+5);
            gc.strokeText("" + -maxV*0.6, LEFT - 40, TOP+gridHeight*(0.8)+5);
            gc.strokeText("" + -maxV*0.8, LEFT - 40, TOP+gridHeight*(0.9)+5);

        } else {
            maxV = (int)(maxV*1000);
            gc.strokeText("[mV]", LEFT - 40, TOP-20);

            gc.strokeText(" " + (int)(maxV), LEFT - 40, TOP+gridHeight*(0.0)+5);
            gc.strokeText(" 0.0", LEFT - 40, TOP+gridHeight*(0.5)+5);
            gc.strokeText("" + (int)(-maxV), LEFT - 40, TOP+gridHeight*(1.0)+5);

            gc.setLineWidth(0);
            gc.setStroke(Color.gray(0.4));
            gc.strokeText(" " + (int)(maxV*0.8), LEFT - 40, TOP+gridHeight*(0.1)+5);
            gc.strokeText(" " + (int)(maxV*0.6), LEFT - 40, TOP+gridHeight*(0.2)+5);
            gc.strokeText(" " + (int)(maxV*0.4), LEFT - 40, TOP+gridHeight*(0.3)+5);
            gc.strokeText(" " + (int)(maxV*0.2), LEFT - 40, TOP+gridHeight*(0.4)+5);

            gc.strokeText("" + -(int)(maxV*0.2), LEFT - 40, TOP+gridHeight*(0.6)+5);
            gc.strokeText("" + -(int)(maxV*0.4), LEFT - 40, TOP+gridHeight*(0.7)+5);
            gc.strokeText("" + -(int)(maxV*0.6), LEFT - 40, TOP+gridHeight*(0.8)+5);
            gc.strokeText("" + -(int)(maxV*0.8), LEFT - 40, TOP+gridHeight*(0.9)+5);
        }


        // channels
        drawChannel(scope.getChannel2(), scope.getTimeBase());
        drawChannel(scope.getChannel1(), scope.getTimeBase());

        // - borders
        gc.setStroke(Color.gray(0.3));
        gc.setLineWidth(2);
        gc.setLineDashes(0);

        gc.strokeLine(LEFT, TOP, getWidth()-RIGHT, TOP);
        gc.strokeLine(LEFT, TOP+gridHeight, 
                          getWidth()-RIGHT, TOP+gridHeight);
        gc.strokeLine(LEFT, TOP, LEFT, getHeight()-BOTTOM);
        gc.strokeLine(LEFT+gridWidth, TOP,
                          LEFT+gridWidth, getHeight()-BOTTOM);
    }
    
//------------------------------------------------------------------------------
    
    void drawDft() {

        double gridWidth = getWidth()-RIGHT-LEFT;
        double gridHeight = getHeight()-TOP-BOTTOM;


        // background
        gc.setFill(Color.BLACK);
        gc.fillRect(0, 0, getWidth(), getHeight());

        // grid

        // - inner lines
        gc.setStroke(Color.gray(0.2));
        gc.setLineWidth(2);
        gc.setLineDashes(0.1, 4);

        for(int i=1; i<10; i++) {
            gc.strokeLine(LEFT, TOP+gridHeight*(i/10.0), 
                          getWidth()-RIGHT, TOP+gridHeight*(i/10.0));
        }
        for(int i=1; i<10; i++) {
            gc.strokeLine(LEFT+gridWidth*(i/10.0), TOP,
                          LEFT+gridWidth*(i/10.0), getHeight()-BOTTOM);
        }

        // - center lines
        gc.setStroke(Color.gray(0.3));
        gc.setLineWidth(2);
        gc.setLineDashes(0.1, 4);

        gc.strokeLine(LEFT, TOP+gridHeight*(0.5), 
                          getWidth()-RIGHT, TOP+gridHeight*(0.5));
        gc.strokeLine(LEFT+gridWidth*(0.5), TOP,
                          LEFT+gridWidth*(0.5), getHeight()-BOTTOM);


        // - labels
        gc.setStroke(Color.gray(0.6));
        gc.setLineWidth(1);
        gc.setLineDashes(0);

        gc.strokeText(" [dB]", LEFT - 40, TOP-20);

        // channels
        drawChannel(scope.getChannelDft(), 100000);

        // - borders
        gc.setStroke(Color.gray(0.3));
        gc.setLineWidth(2);
        gc.setLineDashes(0);

        gc.strokeLine(LEFT, TOP, getWidth()-RIGHT, TOP);
        gc.strokeLine(LEFT, TOP+gridHeight, 
                          getWidth()-RIGHT, TOP+gridHeight);
        gc.strokeLine(LEFT, TOP, LEFT, getHeight()-BOTTOM);
        gc.strokeLine(LEFT+gridWidth, TOP,
                          LEFT+gridWidth, getHeight()-BOTTOM);
    }    
    
//------------------------------------------------------------------------------

    private void drawChannel(Channel channel, double timebase) {
        if(!channel.isVisible) {
            return;
        }

        double gridWidth = getWidth()-RIGHT-LEFT;
        double gridHeight = getHeight()-TOP-BOTTOM;

        double delta = gridWidth/
                (100*timebase/channel.waveform.getDt());
        int startPoint = (int)(LEFT + gridWidth/2 - delta*Waveform.SAMPLES/2);
        gc.setLineWidth(1);
        gc.setLineDashes(0);
        gc.setStroke(channel.color);
        gc.setLineWidth(0);
        for(int i=1; i<Waveform.SAMPLES; i++) {
            if(startPoint + delta*(i-1)>= LEFT
               && startPoint + delta*i<=LEFT+gridWidth)
            {
                double v1 = channel.waveform.getDataAt(i-1);
                double v2 = channel.waveform.getDataAt(i);
                v1 = v1/(channel.vertBase*10.0);
                v2 = v2/(channel.vertBase*10.0);

                gc.strokeLine(startPoint + delta*(i-1), 
                        getHeight()-BOTTOM-(v1+0.5)*gridHeight,
                        startPoint + delta*i,
                        getHeight()-BOTTOM-(v2+0.5)*gridHeight);
            }
        }
    }
}

//------------------------------------------------------------------------------
