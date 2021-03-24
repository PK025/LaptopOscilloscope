//------------------------------------------------------------------------------
/*
 *  Unauthorized copying of this file, via any medium is strictly prohibited.
 *  Proprietary and confidential.
 */
//------------------------------------------------------------------------------

package oscilloscope.logic;

//------------------------------------------------------------------------------

public class Functions {
    
    public static Waveform integrate(Waveform input) {
        Waveform newWaveform = input.copy();
        double res[] = new double[Waveform.SAMPLES];
        double a;
        
        res[0] = 0;
        
        for(int i=1; i<Waveform.SAMPLES; i++) {
            res[i] = res[i-1] + (input.getDataAt(i));
        }
        
        a = res[Waveform.SAMPLES-1]/Waveform.SAMPLES;
        res[0] = 0;
        
        for(int i=1; i<Waveform.SAMPLES; i++) {
            res[i] *= 0.01;
        }
        
        newWaveform.setData(res);
        
        return newWaveform;
    }
    
    public static Waveform integrateWithNormalization(Waveform input) {
        Waveform resWaveform = new Waveform();
        double res[] = new double[Waveform.SAMPLES];
        double a;
        
        res[0] = 0;
        
        for(int i=1; i<Waveform.SAMPLES; i++) {
            res[i] = res[i-1] + (input.getDataAt(i));
        }
        
        a = res[Waveform.SAMPLES-1]/Waveform.SAMPLES;
        res[0] = 0;
        
        for(int i=1; i<Waveform.SAMPLES; i++) {
            res[i] = res[i-1] + (input.getDataAt(i)-a);
        }
        
        for(int i=1; i<Waveform.SAMPLES; i++) {
            res[i] *= 0.01;
        }
        
        resWaveform.setData(res);
        
        return resWaveform;
    }
    
    public static Waveform differentiate(Waveform input) {
        Waveform resWaveform = new Waveform();
        double res[] = new double[Waveform.SAMPLES];
        
        res[0] = 0;
        
        for(int i=1; i<Waveform.SAMPLES; i++) {
            res[i] = (input.getDataAt(i)-input.getDataAt(i-1));
        }
        
        resWaveform.setData(res);
        
        return resWaveform;
    }
    
    public static Waveform dft(Waveform input) {
        Waveform resWaveform = new Waveform();
        double res[] = new double[Waveform.SAMPLES];
        double re;
        double im;
        double arg;
        
        
        for(int i=0; i<Waveform.SAMPLES/2; i++) {
            re = 0;
            im = 0;
            for(int j=0; j<Waveform.SAMPLES; j++) {
                
                arg = 2.0*Math.PI*(double)(i)*(double)(j)/(double)(Waveform.SAMPLES);
                re+=input.getDataAt(j)*Math.cos(arg);
                im+=input.getDataAt(j)*Math.sin(arg);
            }
            res[i] = (re*re + im*im)/Waveform.SAMPLES; // missing sqrt
        }
        for(int i=0; i<Waveform.SAMPLES; i++) {
                res[i] = Math.log(res[i]+1)*100;
        }
        
        resWaveform.setData(res);
        
        return resWaveform;
    }
    
}

//------------------------------------------------------------------------------
