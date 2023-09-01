package calculos;

// @author camil
public class Calculos {
    
    private int canPG,canPM,canPP,horG,horM,horP;
    private double cosT;

    public Calculos(int canPG, int canPM, int canPP, int horG, int horM, int horP) {
        this.canPG = canPG;
        this.canPM = canPM;
        this.canPP = canPP;
        this.horG = horG;
        this.horM = horM;
        this.horP = horP;
    }
    
    public void calcularCosT(){
        cosT=(horG*10000)+(horM*5000)+(horP*3000);
    }
    
    public void calcularDescuento(){
        cosT-=(cosT*10)/100;
    }

    public double getCosT() {
        return cosT;
    }
    
}