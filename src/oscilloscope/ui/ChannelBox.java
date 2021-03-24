//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.ui;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.layout.GridPane;
import oscilloscope.logic.Channel;

//------------------------------------------------------------------------------

class ChannelBox extends GridPane {

    private final Channel channel;

    public ChannelBox(Channel channel) {

        this.channel = channel;

        setPadding(new Insets(4, 4, 4, 4));
        //setSpacing(2);

        setStyle("-fx-border-color: #666666;"
                +"-fx-background-color: #cccccc");

        setupComponents();
    }

    private void setupComponents() {

        this.add(new Label(channel.name), 0, 0, 3, 1);
        this.add(new Label("Offset: "), 0, 1);
        this.add(new Label("  Base:"), 0, 2);

        ObservableList<String> options = 
        FXCollections.observableArrayList(
            "  5V/div",
            "  2V/div",
            "  1V/div",
            "0.5V/div",
            "0.2V/div",
            "0.1V/div",
            "50mV/div",
            "20mV/div",
            "10mV/div"
        );
        ComboBox comboBox = new ComboBox(options);
        comboBox.setOnAction((Event event) -> {
            int tb = comboBox.getSelectionModel().getSelectedIndex();
            switch(tb) {
                case 0:
                    channel.vertBase = 5000;
                    break;
                case 1:
                    channel.vertBase = 2000;
                    break;
                case 2:
                    channel.vertBase = 1000;
                    break;
                case 3:
                    channel.vertBase = 500;
                    break;
                case 4:
                    channel.vertBase = 200;
                    break;
                case 5:
                    channel.vertBase = 100;
                    break;
                case 6:
                    channel.vertBase = 50;
                    break;
                case 7:
                    channel.vertBase = 20;
                    break;
                case 8:
                    channel.vertBase = 10;
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
