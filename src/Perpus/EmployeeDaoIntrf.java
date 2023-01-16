package Perpus;

import app.*;

public interface EmployeeDaoIntrf {

    //create employee
    public void createAnggota(Anggota emp);
    //show all employee
    public void showAllAnggota();
    //show employee based on id
    public void showAnggotaBasedOnID(String id);
    //update employee
    public void updateAnggota(String id,String name);
    //delete employee
    public void deleteAnggota(String id);
}