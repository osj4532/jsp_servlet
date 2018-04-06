package util01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		String name, jomin,jomin1, jomin2, id, pwd, mail1,mail2,mail,zip,addr1,addr2,addr,phone,job,chk_mail,interest[];
		name = request.getParameter("name");
		jomin1 = request.getParameter("jomin1");
		jomin2 = request.getParameter("jomin2");
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		mail1 = request.getParameter("mail1");
		mail2 = request.getParameter("mail2");
		zip = request.getParameter("zip");
		addr1 = request.getParameter("addr1");
		addr2 = request.getParameter("addr2");
		phone = request.getParameter("phone");
		job = request.getParameter("job");
		chk_mail = request.getParameter("chk_mail");
		interest = request.getParameterValues("interest");
		
		jomin = jomin1+"-"+jomin2;
		mail = mail1+"@"+mail2;
		addr = addr1 + addr2;
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("당신이 입력한 정보 입니다. <br>");
		out.println("이름 : ");
		out.println(name);
		out.println("<br>주민등록번호 : ");
		out.println(jomin);
		out.println("<br>아이디 : ");
		out.println(id);
		out.println("<br> 비밀번호 : ");
		out.println(pwd);
		out.println("<br>메일 : ");
		out.println(mail);
		out.println("<br> 우편번호 : ");
		out.println(zip);
		out.println("<br> 주소 : ");
		out.println(addr);
		out.println("<br> 핸드폰 번호 : ");
		out.println(phone);
		out.println("<br> 직업 : ");
		out.println(job);
		out.println("<br> 메일 수신 여부 : ");
		out.println(chk_mail);
		out.println("<br> 관심분야 : ");
		if(interest == null)
			out.println("관심 분야를 선택하지 않았습니다.");
		else {
			for(String inte : interest) {
				out.println(inte+" ");
			}
		}
		out.println("<br><br><br>");
		out.println("<a href='javascript:history.go(-1)'>다시</a>");
		out.println("</body></html>");
		
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
	}

}
