
package oscilloscope.ui;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import oscilloscope.logic.OscilloscopeModel;

//------------------------------------------------------------------------------

class TimebaseBox extends GridPane {

    private final OscilloscopeModel scope;
    
    public TimebaseBox(OscilloscopeModel scope) {
        
        this.scope = scope;

        setPadding(new Insets(4, 4, 4, 4));
        //setSpacing(2);

        setStyle("-fx-border-color: #666666;"
                +"-fx-background-color: #cccccc");

        setupComponents();
    }

    private void setupComponents() {

        this.add(new Label("Timebase"), 0, 0, 4, 1);
        this.add(new Label("Offset: "), 0, 1);
        this.add(new Label("  Base:"), 0, 2);

        TextField offseTextField = new TextField("0");
        offseTextField.setPrefWidth(60);
        this.add(offseTextField, 1, 1);

        ObservableList<String> options = 
        FXCollections.observableArrayList(
            "   1s/div",
            " 0.5s/div",
            " 0.2s/div",
            " 0.1s/div",
            " 50ms/div",
            " 20ms/div",
            " 10ms/div",
            "  5ms/div",
            "  2ms/div",
            "  1ms/div",
            "0.5ms/div",
            "0.2ms/div",
            "0.1ms/div"
        );
        ComboBox comboBox = new ComboBox(options);
        comboBox.setOnAction((Event event) -> {
            int tb = comboBox.getSelectionModel().getSelectedIndex();
            switch(tb) {
                case 0:
                    scope.setTimeBase(1000000);
                    break;
                case 1:
                    scope.setTimeBase(500000);
                    break;
                case 2:
                    scope.setTimeBase(200000);
                    break;
                case 3:
                    scope.setTimeBase(100000);
                    break;
                case 4:
                    scope.setTimeBase(50000);
                    break;
                case 5:
                    scope.setTimeBase(20000);
                    break;
                case 6:
                    scope.setTimeBase(10000);
                    break;
                case 7:
                    scope.setTimeBase(5000);
                    break;
                case 8:
                    scope.setTimeBase(2000);
                    break;
                case 9:
                    scope.setTimeBase(1000);
                    break;
                case 10:
                    scope.setTimeBase(500);
                    break;
                case 11:
                    scope.setTimeBase(200);
                    break;
                case 12:
                    scope.setTimeBase(100);
                    break;
                default:
            }
        });
        this.add(comboBox, 1, 2);
        comboBox.getSelectionModel().selectFirst();
        comboBox.getSelectionModel().selectNext();
        comboBox.getSelectionModel().selectPrevious();

        Button upButton = new Button("<");
        upButton.setOnAction((ActionEvent event) -> {
            comboBox.getSelectionModel().selectPrevious();
        });
        this.add(upButton, 2, 2);

        Button downButton = new Button(">");
        downButton.setOnAction((ActionEvent event) -> {
            comboBox.getSelectionModel().selectNext();
        });
        this.add(downButton, 3, 2);

    }

}

//------------------------------------------------------------------------------
