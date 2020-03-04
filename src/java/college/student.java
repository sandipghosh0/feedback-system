/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package college;

/**
 *
 * @author sandi
 */
public class student {
    private String roll;
    private String did;
    private String sname;
    private String suname;
    private String spw;

    public student()
    {
        roll="";
        did="";
        sname="";
        suname="";
        spw="";
    }
    public student(String roll,String did,String sname,String suname,String spw){
        this.roll=roll;
        this.did=did;
        this.sname=sname;
        this.suname=suname;
        this.spw=spw;
    }
     public void setroll(String roll){
        this.roll=roll;
    }
    public String getroll(){
        return this.roll;
    }
     public void setdid(String did){
        this.did=did;
    }
    public String getdid(){
        return this.did;
    }
      public void setsname(String sname){
        this.sname=sname;
    }
    public String getsname(){
        return this.sname;
    }
    
    public void setsuname(String suname){
        this.suname=suname;
    }
    public String getsuname(){
        return this.suname;
    }
     public void setspw(String spw){
        this.spw=spw;
    }
    public String getspw(){
        return this.spw;
    }
    
}
