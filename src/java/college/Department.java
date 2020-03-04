/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package college;

/**
 *
 * @author MY PC
 */
public class Department {
    private String did;
    private String dname;
   
    
    public Department(){
        did="";
        dname="";
    }
    public Department(String did,String dname){
        this.did=did;
        this.dname=dname;
    }
    
    public void setdid(String did){
        this.did=did;
    }
    public void setdname(String dname){
        this.dname=dname;
    }
    public String getdid(){
        return this.did;
    }
    public String getdname(){
        return this.dname;
    }
}
