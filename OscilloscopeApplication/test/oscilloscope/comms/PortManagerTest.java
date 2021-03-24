
package oscilloscope.comms;

import java.util.List;

//------------------------------------------------------------------------------

public class PortManagerTest {
    public static void main(String[] args) {
        System.out.println(" ~~~ DeviceManagerTest ~~~\n");
        
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
            Port dev = deviceManager.connect(di);
            System.out.println(" success.");
            System.out.print("Sending...");
            //dev.write("testytest");
            System.out.println(" done.");
            dev.close();
            
        });
        
    }
}

//------------------------------------------------------------------------------
