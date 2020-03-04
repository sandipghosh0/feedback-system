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
public class feedback {
    private String rno;
    private String tid;
    private String did;
    private String subid;
    private String roll;
    private String comm;
    private String ability;
    private String present;
    private String teaching;
    private String interest;
    private String regular;
    private String discipline;
    private String attitude;
    

    public feedback()
    {
        rno="";
        tid="";
        did="";
        subid="";
        roll="";
        comm="";
        ability="";
        present="";
    teaching="";
    interest="";
    regular="";
    discipline="";
    attitude="";
    }
    public feedback(String rno,String tid,String did,String subid,String roll,String comm, String ability,String present, String teaching,String interest, String regular,String discipline,String attitude){
       this.rno=rno;
        this.tid=tid;
        this.did=did;
        this.subid=subid;
        this.roll=roll;
        this.comm=comm;
        this.ability=ability;
        this.present=present;
        this.teaching=teaching;
        this.interest=interest;
        this.regular=regular;
        this.discipline=discipline;
        this.attitude=attitude;
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
     public void setdid(String did){
        this.did=did;
    }
    public String getdid(){
        return this.did;
    }
  
      public void setsubid(String subid){
        this.subid=subid;
    }
    public String getsubid(){
        return this.subid;
    }
      public void setroll(String roll){
        this.roll=roll;
    }
    public String getroll(){
        return this.roll;
    }
    
   
     public void setcomm(String comm){
        this.comm=comm;
    }
    public String getcomm(){
        return this.comm;
    }
         public void setability(String ability){
        this.ability=ability;
    }
    public String getability(){
        return this.ability;
    }
     public void setpresent(String present){
        this.present=present;
    }
    public String getpresent(){
        return this.present;
    }
      public void setteaching(String teaching){
        this.teaching=teaching;
    }
    public String getteaching(){
        return this.teaching;
    }
    
    public void setinterest(String interest){
        this.interest=interest;
    }
    public String getinterest(){
        return this.interest;
    }
     public void setregular(String regular){
        this.regular=regular;
    }
    public String getregular(){
        return this.regular;
    }
      public void setdiscipline(String discipline){
        this.discipline=discipline;
    }
    public String getdiscipline(){
        return this.discipline;
    }
     public void setattitude(String attitude){
        this.attitude=attitude;
    }
    public String getattitude(){
        return this.attitude;
    }
}
