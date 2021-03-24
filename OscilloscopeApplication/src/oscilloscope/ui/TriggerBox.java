//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.ui;

import javafx.event.ActionEvent;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.GridPane;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

class TriggerBox extends GridPane {

    private final OscilloscopeModel scope;
    
    public TriggerBox(OscilloscopeModel scope) {
        
        this.scope = scope;
        
        setPadding(new Insets(4, 4, 4, 4));
        //setSpacing(2);

        setStyle("-fx-border-color: #666666;"
                +"-fx-background-color: #cccccc");

        setupComponents();
    }

    private void setupComponents() {
        this.add(new Label("Trigger"), 0, 0, 4, 1);
        this.add(new Label("               "), 0, 1);
        Button aquireButton = new Button("Manual Trigger");
        this.add(aquireButton, 1, 1);
        aquireButton.setOnAction((ActionEvent event) -> {
            scope.aquire();
        });
    }
}

//------------------------------------------------------------------------------
