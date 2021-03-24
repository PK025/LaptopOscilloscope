
package oscilloscope.comms;

//------------------------------------------------------------------------------

public interface Port {
    
    public PortInfo getInfo();
    
    public boolean open();
    public void close();
    
    
    public void send(Command cmd, int arg);
    public void send(Command cmd);
    
    
}

//------------------------------------------------------------------------------
