package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleServlet
 */
@WebServlet("/SampleServlet")
public class SampleServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SampleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      List<String> lists = new ArrayList<String>();
      String last_name = request.getParameter("last-name");
      String first_name = request.getParameter("first-name");

      String gender = request.getParameter("gender");
      String hobbys[] = request.getParameterValues("hobby");

      lists.add(last_name);
      lists.add(first_name);
      lists.add(gender);
      for(String hobby: hobbys) {
        lists.add(hobby);
      }

      // 遷移先で、listsを使えるように
      request.setAttribute("lists", lists);

      // sample.jspへ
      getServletConfig().getServletContext()
                     .getRequestDispatcher("/index.jsp")
                     .forward(request, response);

  }
}
