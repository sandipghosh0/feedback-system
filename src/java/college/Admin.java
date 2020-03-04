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
public class Admin {
    private String adid;
    private String aduname;
    private String adpw;

    public Admin()
    {
        adid="";
        aduname="";
        adpw="";
    }
    public Admin(String adid,String aduname,String adpw){
        this.adid=adid;
        this.aduname=aduname;
        this.adpw=adpw;
    }
     public void setadid(String adid){
        this.adid=adid;
    }
    public String getadid(){
        return this.adid;
    }
    
    public void setaduname(String aduname){
        this.aduname=aduname;
    }
    public String getaduname(){
        return this.aduname;
    }
     public void setadpw(String adpw){
        this.adpw=adpw;
    }
    public String getadpw(){
        return this.adpw;
    }
    
}
