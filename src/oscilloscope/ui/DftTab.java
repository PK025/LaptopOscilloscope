//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.ui;

import javafx.scene.control.Tab;
import javafx.scene.layout.BorderPane;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

class DftTab extends Tab {
    
    private final OscilloscopeModel scope;

    public DftTab(OscilloscopeModel scope) {
        super("DFT");
        
        this.scope = scope;
        
        setupComponents();
    }
    
    private void setupComponents() {
        
        BorderPane pane = new BorderPane();
        this.setContent(pane);

        DftView mainView = new DftView(scope);
        pane.setCenter(mainView);
    }
}

//------------------------------------------------------------------------------
