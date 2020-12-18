package chap20;


import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex2ServletContextListener
 *
 */
@WebListener
public class Ex2ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex2ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
        
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("우리 앱실행 Ex2");
         ServletContext application = sce.getServletContext();
         String val =application.getInitParameter("my-param1");
         String url =application.getInitParameter("jdbcUrl");
         String user =application.getInitParameter("jdbcUser");
         String password =application.getInitParameter("jdbcPassword");
        
        DBUtil.setUrl(url);
     	DBUtil.setUser(user);
     	DBUtil.setPassword(password);

         
        System.out.println(val);
     	System.out.println(url);
     	System.out.println(user);
     	System.out.println(password);

     	try 
     	(Connection con 
     			= DriverManager.getConnection(url, user, password);) {
     		System.out.println(con);
     	} catch (Exception e) {
     		e.printStackTrace();
 			}
         
    }
	
}
