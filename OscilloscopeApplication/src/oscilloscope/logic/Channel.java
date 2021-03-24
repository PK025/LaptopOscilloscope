//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.logic;

import javafx.scene.paint.Color;

//------------------------------------------------------------------------------

public class Channel {
    
    public Waveform waveform;
        
    public int vertBase = 1000;     // Unit: [mV/div]
    public int vertOffset = 0;      // Unit: [mV]
    public boolean isDotMode = false;
    public boolean isVisible = true;
    public Color color;
    public String name = "New channel";

    public Channel() {

        waveform = new Waveform();
        color = Color.MAGENTA;
    }
}

//------------------------------------------------------------------------------
