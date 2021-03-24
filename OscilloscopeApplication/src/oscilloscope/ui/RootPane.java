
package oscilloscope.ui;

import javafx.scene.control.Menu;
import javafx.scene.control.MenuBar;
import javafx.scene.control.TabPane;
import javafx.scene.layout.BorderPane;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

class RootPane extends BorderPane {
    
    private TabPane tabPane;
    private final OscilloscopeModel scope;

    public RootPane(OscilloscopeModel scope) {
        
        this.scope = scope;
        
        setupComponents();
        
        this.setStyle("-fx-background-color: #808080;"
                    + "-fx-foreground-color: #ffffff;");
    }
    
    private void setupComponents() {
        
        MenuBar menuBar = new MenuBar();
        
        Menu fileMenu = new Menu("File");
        Menu devMenu = new Menu("Device");
        Menu editMenu = new Menu("Settings");
        Menu aboutMenu = new Menu("About");
        
        menuBar.getMenus().addAll(fileMenu, devMenu, editMenu, aboutMenu);
        
        this.setTop(menuBar);
        
        tabPane = new TabPane();
        tabPane.getTabs().add(new OscilloscopeTab(scope));
        tabPane.getTabs().add(new DftTab(scope));
        
        this.setCenter(tabPane);
    }
    
}

//------------------------------------------------------------------------------
