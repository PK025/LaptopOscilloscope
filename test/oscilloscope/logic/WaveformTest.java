//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.logic;

import java.util.List;
import oscilloscope.comms.PortInfo;
import oscilloscope.comms.PortManager;
import oscilloscope.comms.Port;

//------------------------------------------------------------------------------

public class WaveformTest {
    public static void main(String[] args) {
        System.out.println("   ~~~  Oscilloscope  ~~~\n");
        
        PortManager deviceManager = new PortManager();
        
        System.out.println("DeviceManager initialized.");
        System.out.println("\nListing aviable devices:");
        
        List<PortInfo> devices = deviceManager.listAviable();
        
        devices.stream().forEach((di) -> {
            System.out.println(" " + di);
        });
        
        System.out.println();
        
        devices.stream().filter(di -> di.getDescription().contains("USB-to-Serial"))
                .forEach((PortInfo di) -> {
            System.out.print("Connecting to: " + di.getName() + "...");
            Port dev = deviceManager.connect(di, 0);
            System.out.println(" success.");
            
            dev.write("3hs");
            
            Waveform wav = Waveform.deserialize(dev.read());
            
            System.out.println(wav);
            dev.close();
            
        });
        
    }
}

//------------------------------------------------------------------------------
