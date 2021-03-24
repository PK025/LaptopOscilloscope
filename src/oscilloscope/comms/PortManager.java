//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

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


