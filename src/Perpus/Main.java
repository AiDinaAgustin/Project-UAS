package Perpus;

import app.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        String name;
        String id;
        EmployeeDaoIntrf dao=new AnggotaDaoImpl();
        System.out.println("Welcome to Anggota management application");

        Scanner sc=new Scanner(System.in);
        do{
            System.out.println("1. Add Anggota\n" +
                    "2. Show All Anggota\n" +
                    "3. Show Anggota based on id \n" +
                    "4. Update the Anggota\n" +
                    "5. Delete the Anggota\n");

            System.out.println("Enter Choice: ");
            int ch=sc.nextInt();
            switch (ch){
                case 1:
                    Anggota emp=new Anggota();
                    System.out.println("Enter ID : ");
                    id=sc.next();
                    System.out.println("Enter name ");
                    name=sc.next();
                    System.out.println("Enter password :");
                    String password = sc.next();
                    System.out.println("Enter jk :");
                    String jk = sc.next();
                    System.out.println("Enter telp :");
                    String telp = sc.next();
                    System.out.println("Enter alamat :");
                    String alamat = sc.next();
                    System.out.println("Enter status :");
                    String status = sc.next();
                    emp.setId(id);
                    emp.setName(name);
                    emp.setPassword(password);
                    emp.setJk(jk);
                    emp.setTelp(telp);
                    emp.setAlamat(alamat);
                    emp.setStatus(status);
                    dao.createAnggota(emp);
                    break;
                case 2:
                    dao.showAllAnggota();
                    break;
                case 3:
                    System.out.println("Enter id to show the details ");
                    String empid=sc.next();
                    dao.showAnggotaBasedOnID(empid);
                    break;
                case 4:
                    System.out.println("Enter id to update the details");
                    String empid1=sc.next();
                    System.out.println("Enter the new name");
                     name=sc.next();
                    dao.updateAnggota(empid1,name);
                    break;
                case 5:
                    System.out.println("Enter the id to delete");
                    id=sc.next();
                    dao.deleteAnggota(id);
                    break;

                case 6:
                    System.out.println("Thank you for using our Application !!!");
                    System.exit(0);
                default:
                    System.out.println("Enter valid choice !");
                    break;


            }

        }while (true);

    }
}