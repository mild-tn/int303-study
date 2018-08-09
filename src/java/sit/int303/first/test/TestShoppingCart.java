/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.test;

import java.util.List;
import sit.int303.first.model.LineItem;
import sit.int303.first.model.ShoppingCart;
import sit.int303.mockup.model.Product;

/**
 *
 * @author INT303
 */
public class TestShoppingCart {
    public static void main(String[] args) {
        ShoppingCart cart = new ShoppingCart();
        Product p = new Product();
        p.setProductCode("S10_001");
        p.setProductName("Haley");
        p.setMsrp(100.00);
        
        cart.add(p);
        cart.add(p);
        
        p = new Product();
        p.setProductCode("S10_002");
        p.setProductName("Honda");
        p.setMsrp(15.00);
        
        cart.add(p);
        cart.add(p);
        cart.add(p);
        
        List<LineItem> lines = cart.getLineItems();
        for (LineItem line : lines) {
            System.out.printf("%-8s %-15s %8.2f %2d %10.2f\n",line.getProduct().getProductCode(),
                    line.getProduct().getProductName(),line.getSalePrice(),line.getQuantity(),line.getTotalPrice()
            ); //%-8s กันเนื้อที่ไว้ 8 ที่ // %8.2f กัน 8 ที่พิมพ์ทศนิยม 2 รวม . ด้วยแสดงตัวเลข 5 ที่
        }
        
        System.out.println("Total Price "+cart.getTotalPrice());
        System.out.println("Total Qauntity "+cart.getTotalQuantity());
        System.out.println("--------------------------------------------------");
        
        cart.remove("S10_001");
        
        System.out.println("Total Price "+cart.getTotalPrice());
        System.out.println("Total Qauntity "+cart.getTotalQuantity());
        System.out.println("--------------------------------------------------");
        
        cart.remove(p);
        
        System.out.println("Total Price "+cart.getTotalPrice());
        System.out.println("Total Qauntity "+cart.getTotalQuantity());
    }
}
