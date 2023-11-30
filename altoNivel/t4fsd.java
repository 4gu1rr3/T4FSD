package altoNivel;
public class t4fsd {
    public static int multiplicacao(int a, int b){
        int acumula = 0;
        int vezes = b;
        // se B eh negativo, troca o sinal
        if(b < 0)
        vezes = 0 - vezes;
        // acumula A, B vezes
        
        while(vezes!=0){
        acumula = acumula + a;
        vezes = vezes - 1;
        }
        // se B eh negativo, trocamos o sinal do resultado
        if(b < 0)
        acumula = 0 - acumula;
        return acumula;
    }
    public static void main(String args[]){
        int a[] = {1,-2,3,-4,5,6,-7,8};
        int b[] = {9,1,2,-3,4,-5,10,11};
        int c[] = new int[8];
        int d[] = new int[8];
        int somatorio = 0;
        int sm = 0;
        int maior = 0;
        for(int i=0; i<8; i++){
            c[i] = a[i] + b[i];
        }
        for(int i=0; i<8; i++){
            d[i] = a[i] - b[i];
        }
        for(int i=0; i<8; i++){
            somatorio = somatorio + c[i] + d[i];
        }
        for(int i=0; i<8; i++){
            if(c[i] > maior){
                maior = c[i];
            }
        }
        for(int i=0; i<8; i++){
            if(d[i] > maior){
                maior = d[i];
            }
        }
        sm = multiplicacao(somatorio,maior);
        System.out.println(sm);
    }
}
