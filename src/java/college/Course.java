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
public class Course {
    private String rno;
    private String tid;
    private String subid;
   
    private String intrst;
    private String chnge;
    private String relevant;
  

    

    public Course()
    {
           rno="";
        tid="";
        subid="";
    
        intrst="";
        chnge="";
        relevant="";
       
    
    }
    public Course(String rno,String tid,String subid,String intrst,String chnge, String relevant){
        this.rno=rno;
        this.tid=tid;
        this.subid=subid;
        
        this.intrst=intrst;
        this.chnge=chnge;
        this.relevant=relevant;
       
    }
      public void setrno(String rno){
        this.rno=rno;
    }
    public String getrno(){
        return this.rno;
    }
     public void settid(String tid){
        this.tid=tid;
    }
    public String gettid(){
        return this.tid;
    }
    
      public void setsubid(String subid){
        this.subid=subid;
    }
    public String getsubid(){
        return this.subid;
    }
    
   
     public void setintrst(String intrst){
        this.intrst=intrst;
    }
    public String getintrst(){
        return this.intrst;
    }
         public void setchnge(String chnge){
        this.chnge=chnge;
    }
    public String getchnge(){
        return this.chnge;
    }
     public void setrelevant(String relevant){
        this.relevant=relevant;
    }
    public String getrelevant(){
        return this.relevant;
    }
      
    
    
}
