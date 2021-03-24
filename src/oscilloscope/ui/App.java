//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.ui;

import oscilloscope.comms.PortManager;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

public class App extends Application{
    
    public PortManager portManager;
    public OscilloscopeModel oscilloscope;

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        
        primaryStage.setTitle("Oscilloscope");
        
        portManager = new PortManager();
        oscilloscope = new OscilloscopeModel();
        
        primaryStage.setScene(new Scene(new RootPane(oscilloscope), 800, 600));
        primaryStage.setMinHeight(600);
        primaryStage.setMinWidth(800);
        primaryStage.show();
        
        
    }

}

//------------------------------------------------------------------------------
