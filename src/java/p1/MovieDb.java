package p1;

import java.sql.*;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MovieDb 
{
    String phone;
    int nota,dates,movie,show,tid;
    String username,address,emailid,password,question,answer,fulldate,moviename,showname;
    Connection db;
    PreparedStatement ps,ps1;
    ResultSet rs;
    public MovieDb()
    {
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            db=DriverManager.getConnection("jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ=G:/My projects/Moviezone/Movie.accdb");
            username=address=emailid=password=question=answer=null;
            phone=null;
        }
        catch(Exception e1)
        {
            System.out.println(e1.toString());
        }
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getDates() {
        return dates;
    }

    public void setDates(int dates) {
        this.dates = dates;
    }

    public int getMovie() {
        return movie;
    }

    public void setMovie(int movie) {
        this.movie = movie;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    public int getShow() {
        return show;
    }

    public void setShow(int show) {
        this.show = show;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public String getFulldate() {
        return fulldate;
    }

    public void setFulldate(String fulldate) {
        this.fulldate = fulldate;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    public String getShowname() {
        return showname;
    }

    public void setShowname(String showname) {
        this.showname = showname;
    }
    
    
    public int insert()
    {
        int r=0;
        try
        {
            String str= "insert into signup values(?,?,?,?,?,?,?,?)";
            ps=db.prepareStatement(str);
            ps.setString(1, username);
            ps.setString(2, emailid);
            ps.setString(3, phone);
            ps.setString(4, password);
            ps.setString(5, question);
            ps.setString(6, answer);
            ps.setString(7, address);
            ps.setString(8, "N/A");
            r=ps.executeUpdate();
        }
        catch(Exception e2)
        {
            System.out.println(e2.toString());
        }
        return r;
    }
    ResultSet calNota(int date,String mve,int sh)
    {
            try
            {
                ps=db.prepareStatement("select nota from dates where dates=? and movie=? and show=?");
                ps.setInt(1, date);
                ps.setString(2, mve);
                ps.setInt(3, sh);
                rs=ps.executeQuery();
                
            }catch(Exception e8){ System.out.println(e8.toString());}
            return rs;
    }
 
    int srch(String email,String pass)
    {
        try{
            ps=db.prepareStatement("select * from signup where em=?");
            ps.setString(1,email);
            rs=ps.executeQuery();
            rs.next();
            if((rs.getString(4).equals(pass)))
            {
                return 1;
            }
        }catch(Exception e3){}
        return 0;
    }
    String srchun(String un)
    {
        String user=null;
        try
        {
            ps=db.prepareStatement("select un from signup where em=?");
            ps.setString(1, un);
            rs=ps.executeQuery();
            rs.next();
            user=rs.getString(1);
        }catch(Exception e4){}
        return user;
    }
    void updateticks(int date,String movie,int show,int not)
    {
        try{
            ps=db.prepareStatement("select nota from dates where dates=? and movie=? and show=?");
            ps.setInt(1, date);
            ps.setString(2, movie);
            ps.setInt(3, show);
            rs=ps.executeQuery();
            rs.next();
            int oldtick=Integer.parseInt(rs.getString(1));
            int newtick=oldtick-not;
            String nt=String.valueOf(newtick);
            ps=db.prepareStatement("update dates set nota=? where dates=? and movie=? and show=?");
            ps.setString(1, nt);
            ps.setInt(2, date);
            ps.setString(3, movie);
            ps.setInt(4, show);
            int r=ps.executeUpdate();
        }catch(Exception rx){
            System.out.println(rx);}
    }
    void inserttid(int tid,String em,String mn,String tm,String dt,String loc,String seatno,int notb,int tc)
    {
        try{
             ps=db.prepareStatement("select city from signup where em=?");
        ps.setString(1, em);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(1);
        String strtc=""+tc;
            ps=db.prepareStatement("insert into tid values(?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1,tid);
            ps.setString(2,em);
            ps.setString(3, mn);
            ps.setString(4,city);
            ps.setString(5, loc);
            ps.setString(6, tm);
            ps.setString(7, seatno);
            ps.setInt(8, notb);
            ps.setString(9, dt);
            ps.setString(10, strtc);
            int r=ps.executeUpdate();
        }catch(Exception ex2){}
    }
    void insertId(String id,String ui,String user)
    {
        try {
            ps=db.prepareStatement("insert into SESSIONID values(?,?,?)");
            ps.setString(1,id);
            ps.setString(2, ui);
            ps.setString(3,user);
            int r=ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MovieDb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    void delId(String id)
    {
        try {
            ps=db.prepareStatement("delete from sessionId where sesid=?");
            ps.setString(1,id);
            int r=ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MovieDb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    void insertLocDet(String email,String loc)
    {
        int r=0;
        try{
            ps=db.prepareStatement("update signup set Location=? where em=?");
            ps.setString(1, loc);
            ps.setString(2, email);
            r=ps.executeUpdate();
    }catch(Exception e){}
    }

    String getShowTime(String mn,String curloc,String email) 
    {
     try{
         ps=db.prepareStatement("select city from signup where em=?");
        ps.setString(1, email);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(1);
         ps=db.prepareStatement("select show_time from theater_details where city=? and theater_name=? and movie_name=?");
         ps.setString(1, city.trim());
         ps.setString(2, curloc.trim());
         ps.setString(3, mn.trim());
         rs=ps.executeQuery();
         rs.next();
         String str=rs.getString(1);
         return str;
    }catch(Exception e){}
    return null;
    }
    
    public String getLocations(String email)
    {
        String prevloc="",str1="";
        try{   
        ps=db.prepareStatement("select city from signup where em=?");
        ps.setString(1, email);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(1);
        ps=db.prepareStatement("select distinct theater_name from theater_details where city=?");
        ps.setString(1, city);
        rs=ps.executeQuery();
        /*outer : while(rs.next())
        {
            String str=rs.getString(1);
            if(prevloc.equalsIgnoreCase(str))
            {
                continue outer;
            }
            prevloc=str;
            str1+=str+",";
        }*/
        while(rs.next())
        {
            str1+=rs.getString(1)+",";
        }
        }catch(Exception e){}   
       return str1;
    }
    
    public ResultSet getMovies(String email,String curloc)
    {
        try{   
        ps=db.prepareStatement("select city from signup where em=?");
        ps.setString(1, email);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(1);
        System.out.println(city);
        ps=db.prepareStatement("select movie_name from theater_details where city=? and theater_name=?");
        ps.setString(1,city.trim());
        ps.setString(2,curloc.trim());
        rs=ps.executeQuery();
        }catch(Exception e){}
        return rs;
    }
    
    public String getSeatStatus(String mn,String ln,String tm,String dt,String email )
    {
        try{
             ps=db.prepareStatement("select city from signup where em=?");
        ps.setString(1, email);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(1);
        ps=db.prepareStatement("select seats from tid where movie=? and city=? and location=? and show=? and dt=?");
        ps.setString(1, mn);
        ps.setString(2, city);
        ps.setString(3, ln);
        ps.setString(4, tm);
        ps.setString(5, dt);
        rs=ps.executeQuery();
        String res="";
        while(rs.next())
        {
            res+=rs.getString(1);
        }
          return res;
    }catch(Exception e){} 
      return null;
    }
    
    void insertMovie(String mn,String city,String tn,String st)
    {
        try{
            ps=db.prepareStatement("select show_time from theater_details where city=? and theater_name=? and movie_name=?");
            ps.setString(1, city);
            ps.setString(2, tn);
            ps.setString(3, mn);
            rs=ps.executeQuery();
            boolean b=rs.next();
            if(b==true)
            {
               String res=rs.getString(1);
               res+=st+",";
               ps=db.prepareStatement("update theater_details set show_time=? where city=? and theater_name=? and movie_name=?");
               ps.setString(1, res);
               ps.setString(2, city);
               ps.setString(3, tn);
               ps.setString(4, mn);
               int r=ps.executeUpdate();
            }
            else
            {    
                ps=db.prepareStatement("insert into theater_details values(?,?,?,?)");
                ps.setString(1, city);
                ps.setString(2, tn);
                ps.setString(3, mn);
                ps.setString(4, st);
                int r=ps.executeUpdate();
            }
        }catch(Exception e){}
    }
    
    void delMovie(String mn,String tn,String st,String city)
    {
        String show="",tempshow="";
        try{
            ps=db.prepareStatement("select show_time from theater_details where theater_name=? and movie_name=? and city=?");
                    ps.setString(1, tn);
                    ps.setString(2, mn);
                    ps.setString(3, city);
                    rs=ps.executeQuery();
                    rs.next();
                    String res=rs.getString(1);
                    for(int i=0;i<res.length();i++)
                    {
                        if(res.charAt(i)==',')
                        {
                            if(tempshow.equals(st))
                            {
                                tempshow="";
                                continue;
                            }
                            else
                            {
                                show+=tempshow+",";
                                tempshow="";
                                continue;
                            }
                        }
                        tempshow+=res.charAt(i);
                    }
          ps=db.prepareStatement("update theater_details set show_time=? where movie_name=? and theater_name=? and city=?");
            ps.setString(1, show);
            ps.setString(2, mn);
            ps.setString(3, tn);
            ps.setString(4, city);
            int r=ps.executeUpdate();
        }catch(Exception e){}
    }
    
    public ResultSet getFeed()
    {
        try{
            ps=db.prepareStatement("select * from fback");
            rs=ps.executeQuery();
            return rs;
        }catch(Exception e){}
        return null;
    }
    
    ResultSet getDetails(int tid)
    {
        try{
            ps=db.prepareStatement("select * from tid where tid=?");
            ps.setInt(1,tid);
            rs=ps.executeQuery();
            return rs;
        }catch(Exception e){}
        return null;
    }
    
   public ResultSet getAboutUs(String loc,String email)
     {
        try{
            ps=db.prepareStatement("select city from signup where em=?");
        ps.setString(1, email);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(1);
        ps=db.prepareStatement("select * from aboutus where theater_name=? and city=?");
        ps.setString(1, loc);
        ps.setString(2, city);
        rs=ps.executeQuery();
        return rs;
        }catch(Exception e){}
        return null;
    }
   
   void editAboutUs(String tn, String city,String phone,String em)
   {
       try{
           ps=db.prepareStatement("update aboutus set email_id=? and phone=? where city=? and theater_name=?");
           ps.setString(1, em);
           ps.setString(2, phone);
           ps.setString(3, city);
           ps.setString(4, tn);
           int r=ps.executeUpdate();
       }catch(Exception e){}
   }
   
   ResultSet cancelTicks(int tid,String em)
   {
       try{
           ps=db.prepareStatement("select * from tid where tid=? and em=?");
           ps.setInt(1,tid);
           ps.setString(2, em);
           rs=ps.executeQuery();
           ps=db.prepareStatement("delete from tid where tid=? and em=?");
           ps.setInt(1,tid);
           ps.setString(2, em);
           int r=ps.executeUpdate();
           return rs;
       }catch(Exception e){}
       return null;
   }
   
   void insertPdfDet(int tid, String em,String mn,String tm,String dt,String loc,String tc)
   {
       try{
           ps=db.prepareStatement("select un,city from signup where em=?");
        ps.setString(1, em);
        rs=ps.executeQuery();
        rs.next();
        String city=rs.getString(2);
        String un=rs.getString(1);
        ps=db.prepareStatement("insert into pdf values(?,?,?,?,?,?,?,?)");
        ps.setString(1, un);
        ps.setString(2, loc);
        ps.setString(3, mn);
        ps.setString(4, city);
        ps.setString(5, dt);
        ps.setString(6, tm);
        ps.setInt(7, tid);
        ps.setString(8, tc);
        int r=ps.executeUpdate();   
       }catch(Exception e){}
   }
}
