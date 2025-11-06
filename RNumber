import java.util.Random;

public class RandomPrinter {
    public static void repeatEverySecond(Runnable action) {
        int count = 0;
        while (count < 5) {
            action.run();
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {}
            count++;
        }
    }

    public static void printRandomNumber() {
        Random r = new Random();
        System.out.println("Random number: " + r.nextInt(100));
    }

    public static void main(String[] args) {
        repeatEverySecond(RandomPrinter::printRandomNumber);
    }
}
