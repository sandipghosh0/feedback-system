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
public class teacher {
    private String tid;
    private String did;
    private String tname;
    private String tuname;
    private String tpw;

    public teacher()
    {
        tid="";
        did="";
        tname="";
        tuname="";
        tpw="";
    }
    public teacher(String tid,String did,String tname,String tuname,String tpw){
        this.tid=tid;
        this.did=did;
        this.tname=tname;
        this.tuname=tuname;
        this.tpw=tpw;
    }
     public void settid(String tid){
        this.tid=tid;
    }
    public String gettid(){
        return this.tid;
    }
     public void setdid(String did){
        this.did=did;
    }
    public String getdid(){
        return this.did;
    }
      public void settname(String tname){
        this.tname=tname;
    }
    public String gettname(){
        return this.tname;
    }
    
    public void settuname(String tuname){
        this.tuname=tuname;
    }
    public String gettuname(){
        return this.tuname;
    }
     public void settpw(String tpw){
        this.tpw=tpw;
    }
    public String gettpw(){
        return this.tpw;
    }
    
}
