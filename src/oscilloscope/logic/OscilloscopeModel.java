//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.logic;

import java.util.ArrayList;
import java.util.List;
import javafx.scene.paint.Color;
import oscilloscope.comms.Command;
import oscilloscope.comms.Port;

//------------------------------------------------------------------------------

public class OscilloscopeModel {
    
    private final Channel channel1;
    private final Channel channel2;
    private final Channel channelDft;
    private final List<Channel> softChannels;
    private Port port;
    
    private boolean isConnected = false;
    private double timeBase = 100000;

    public OscilloscopeModel() {
        channel1 = new Channel();
        channel1.name = "Channel 1";
        channel1.color = Color.GOLD;
        
        channel2 = new Channel();
        channel2.name = "Channel 2";
        channel2.color = Color.CYAN;
        
        channelDft = new Channel();
        channelDft.name = "Dft";
        channelDft.color = Color.LIGHTGRAY;
        
        
        
        softChannels = new ArrayList<>();
    }
    
//------------------------------------------------------------------------------
    
    public void setTimeBase(double timebase) {
        timeBase = timebase;
    }
    
    public void setVerticalBase(int vertbase) {
        
    }
    
    public void setTrigger(int channel, int level, Edge edge) {
        
    }
    
    public void aquire() {
        if(isConnected) {
            port.send(Command.AQUIRE);
        }
        channel1.waveform = new Waveform();
        channel2.waveform = Functions.integrate(channel1.waveform);
        channelDft.waveform = Functions.dft(channel1.waveform);
    }
    
//------------------------------------------------------------------------------
    
    public Channel getChannel1() {
        return channel1;
    }

    public Channel getChannel2() {
        return channel2;
    }
    
    public Channel getChannelDft() {
        return channelDft;
    }
    
    public Channel getSoftChannel(int index) {
        return softChannels.get(index);
    }
    
    public double getTimeBase() {
        return timeBase;
    }
    
    public boolean isConnected() {
        return isConnected;
    }
    
}

//------------------------------------------------------------------------------
