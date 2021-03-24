//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.comms;

//------------------------------------------------------------------------------

public final class PortInfo {
    
    private final String name;
    private final String description;

    public PortInfo(String name, String description) {
        this.name = name;
        this.description = description;
    }
    
    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }
    
    @Override
    public String toString(){
        return name + " : " + description;
    }
    
}

//------------------------------------------------------------------------------
