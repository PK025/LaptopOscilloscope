
package oscilloscope.comms;

import java.util.List;

//------------------------------------------------------------------------------

public final class PortManager {
    

    public PortManager() {
    }
    
    public List<PortInfo> listAviable() {
        return SerialPortDriver.listPorts();
    }
    
    public Port connect(PortInfo devInfo) {
        return new SerialPortDriver(devInfo);
    }
    
}

//------------------------------------------------------------------------------


