import java.util.Random;

public class RandomNumb {
    /**
     * Ejecuta una función cada segundo un numero determinado de veces
     */
    public static void repeatEverySecond(Runnable action) {
        int count = 0;
        while (count < 5) {
            action.run();
            try {
                Thread.sleep(1000);
            } catch (InterruptedException _) {}
            count++;
        }
    }
     /**
     * Imprime un número aleatorio entre 0 y 99
     */
    public static void printRandomNumber() {
        Random r = new Random();
        System.out.println("Random number: " + r.nextInt(100));
    }
     /**
     * Metodo principal: pasa la función printRandomNumber como parametro
     */
    static void main() {
        repeatEverySecond(RandomNumb::printRandomNumber);
    }
}
