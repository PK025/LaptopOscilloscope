//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.ui;

import javafx.animation.AnimationTimer;
import javafx.scene.layout.StackPane;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

class DftView  extends StackPane {
    
    private final OscilloscopeModel scope;
    
    private GraphCanvas mainCanvas;
    
    int count = 0;

    public DftView(OscilloscopeModel scope) {
        this.scope = scope;
        initComponents();
    }
    
    private void initComponents() {
        mainCanvas = new GraphCanvas(scope);
        mainCanvas.widthProperty().bind(this.widthProperty());
        mainCanvas.heightProperty().bind(this.heightProperty());
        this.getChildren().add(mainCanvas);
        
        AnimationTimer at = new AnimationTimer() {
            @Override
            public void handle(long now) {
                if(count>10) {
                    count = 0;
                    //Thread thread = new Thread(){
                    //    @Override
                    //    public void run(){
                            //devManager.aquireData();
                            mainCanvas.drawDft();
                    //    }
                    //};
                    //thread.start();
                }
                count++;
            }
        };
        at.start();
        
    }
}

//------------------------------------------------------------------------------
