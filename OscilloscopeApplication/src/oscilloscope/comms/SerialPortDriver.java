
package oscilloscope.comms;

import com.fazecast.jSerialComm.*;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

//------------------------------------------------------------------------------

final class SerialPortDriver implements Port {
    private final SerialPort comPort;
    private final PortInfo portInfo;
    private static final int BAUDRATE = 100000;
    
    public SerialPortDriver(PortInfo portInfo) {
        this.portInfo = portInfo;
        comPort = SerialPort.getCommPort(portInfo.getDescription());
        comPort.setBaudRate(BAUDRATE);
    }
    
    public static List<PortInfo> listPorts() {
        SerialPort[] ports = SerialPort.getCommPorts();
        List<PortInfo> resList = new ArrayList<>();
        for (SerialPort port : ports) {
            PortInfo deviceInfo = new PortInfo(port.getSystemPortName(),
                    port.getDescriptivePortName());
            resList.add(deviceInfo);
        }
        return resList;
    }
    
    
    @Override
    public boolean open() {
        return false;
    }
    
    @Override
    public void close() {
        comPort.closePort();
    }
    
    @Override
    public PortInfo getInfo() {
        return this.portInfo;
    }

    @Override
    public void send(Command cmd, int arg) {
        
    }

    @Override
    public void send(Command cmd) {
       
    }

    
    
    private void serialWrite(String s){
        comPort.setComPortTimeouts(SerialPort.TIMEOUT_SCANNER, 0, 0);
        PrintWriter pout = new PrintWriter(comPort.getOutputStream());
        pout.print(s);
        pout.flush();
    }
    
    private void serialWrite(char c){
        comPort.setComPortTimeouts(SerialPort.TIMEOUT_SCANNER, 0, 0);
        PrintWriter pout = new PrintWriter(comPort.getOutputStream());
        pout.write(c);
        pout.flush();
    }
    
    private String serialRead(int limit){
        comPort.setComPortTimeouts(SerialPort.TIMEOUT_READ_SEMI_BLOCKING, 10, 10);
        String out="";
        int count=0;
        Scanner in = new Scanner(comPort.getInputStream());
        try
        {
           while(in.hasNext()&&count<=limit){
              out += (in.next()+"\n");
              count++;
           }
                in.close();
        } catch (Exception e) { e.printStackTrace(); }
        return out;
    }
}

//------------------------------------------------------------------------------
