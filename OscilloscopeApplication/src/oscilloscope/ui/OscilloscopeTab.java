
package oscilloscope.ui;

import javafx.scene.control.Tab;
import javafx.scene.layout.BorderPane;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

public class OscilloscopeTab extends Tab {
    
    private final OscilloscopeModel scope;

    public OscilloscopeTab(OscilloscopeModel scope) {
        super("Oscilloscope");
        
        this.scope = scope;
        
        setupComponents();
    }
    
    private void setupComponents() {
        
        BorderPane pane = new BorderPane();
        this.setContent(pane);

        GraticuleView mainView = new GraticuleView(scope);
        OscilloscopeControls channelControls = new OscilloscopeControls(scope);
        pane.setCenter(mainView);
        pane.setRight(channelControls);
    }
    
}

//------------------------------------------------------------------------------
