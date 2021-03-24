
package oscilloscope.ui;

import javafx.geometry.Insets;
import javafx.scene.layout.VBox;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

class OscilloscopeControls extends VBox{
    
    private final OscilloscopeModel scope;
    
    boolean flag = false;
    
    private static final int WIDTH = 260;

    public OscilloscopeControls(OscilloscopeModel scope) {
        this.scope = scope;
        
        this.setPrefWidth(WIDTH);
        
        setPadding(new Insets(3, 3, 3, 3));
        setSpacing(3);
        
        this.setStyle("-fx-border-color: #aaaaaa");
        
        this.getChildren().add(new TriggerBox(scope));
        this.getChildren().add(new TimebaseBox(scope));
        this.getChildren().add(new ChannelBox(scope.getChannel1()));
        this.getChildren().add(new ChannelBox(scope.getChannel2()));
        
    }
}

//------------------------------------------------------------------------------
