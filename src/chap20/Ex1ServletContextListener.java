package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex1ServletContextListener
 *
 */
@WebListener
public class Ex1ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex1ServletContextListener() {
      
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("우리 앱이 종료되었습니다.");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("우리 앱이 실행되었습니다.");
    	//웹 어플리케이션을 초기화할때 호출한다.
    	

    	// jdbc driver class loading
    	try {
  			Class.forName("oracle.jdbc.driver.OracleDriver");
  		} catch (ClassNotFoundException e1) {
  			e1.printStackTrace();
  		}
    }

}