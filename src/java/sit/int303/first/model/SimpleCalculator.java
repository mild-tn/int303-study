package sit.int303.first.model;

public class SimpleCalculator {

    private int x;
    private int y;
    private String operator;

    public int getResult() {
        switch (operator) {
            case "/":
                return x / y;
            case "-":
                return x - y;
             case "+":
                return x + y;
            case "*":
                return x * y;
            default:return 0;
            //break ไม่ต้องมีเพราะมัน return ไปแล้ว
        }
    }


    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }
    
    @Override
    public String toString() {
        return String.format("<h1>x = %d,y = %d,%d %s %d=%f </h1>",x,y,x,operator,y,getResult());
    }

}
