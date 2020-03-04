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
public class subject {
    
    
    private String subid;
    private String tid;
    private String subname;
    
    

    public subject()
    {
        subid="";
        tid="";
        subname="";
      
    }
    public subject(String subid,String tid,String subname){
        this.subid=subid;
        this.tid=tid;
        this.subname=subname;
    }
     public void setsubid(String subid){
        this.subid=subid;
    }
    public String getsubid(){
        return this.subid;
    }
     public void settid(String tid){
        this.tid=tid;
    }
    public String gettid(){
        return this.tid;
    }
      public void setsubname(String subname){
        this.subname=subname;
    }
    public String getsubname(){
        return this.subname;
    }
    
  
}
