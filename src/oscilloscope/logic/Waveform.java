//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.logic;

//------------------------------------------------------------------------------

public class Waveform {
    
    public static final int SAMPLES = 800;
 
    private double[] data;
    
    private int resolution;
    private double dt = 12500;       // [ms] - time step between samples

    public Waveform() {
        data = new double[SAMPLES];
        
        //debug
        for(int i=0; i<data.length; i++) {
            data[i] = Math.random()*200 - 100;
            data[i] += Math.sin(i*0.99)*1000;
            data[i] += Math.sin(i*0.5)*1000;
            data[i] += Math.sin(i*0.4)*1000;
            data[i] += Math.sin(i*0.6)*1000;
        }
    }
 
//------------------------------------------------------------------------------
    
    public static Waveform deserialize(String data) {
        return new Waveform();
    }
    
    public int getSamples() {
        return SAMPLES;
    }

    public int getResolution() {
        return resolution;
    }

    public void setData(double[] data) {
        this.data = data;
    }

    public double getDataAt(int index) {
        return data[index];
    }
    
    public double getDt() {
        return dt;
    }
    
    public Waveform copy() {
        Waveform newWaveform = new Waveform();
        
        newWaveform.dt = dt;
        
        System.arraycopy(data, 0, newWaveform.data, 0, SAMPLES);
        
        return newWaveform;
    }
}

//------------------------------------------------------------------------------
