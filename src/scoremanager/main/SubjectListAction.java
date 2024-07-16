package scoremanager.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Subject;
import bean.Teacher;
import dao.SubjectDao;
import tool.Action;

public class SubjectListAction extends Action{
	
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception {

		HttpSession session = req.getSession(); // セッションの開始
		Teacher teacher = (Teacher)session.getAttribute("user"); // セッションから何のuserでログインしているかを判別

		List<Subject> Subjects = null; //
		SubjectDao jDao = new SubjectDao(); // Dao内のプログラムを使用する為（初期化する）

		Subjects = jDao.filter(teacher.getSchool()); 

		req.setAttribute("subjects", Subjects); // Subjectsの中に入っているデータをEL"subjects"に渡す
		req.getRequestDispatcher("subject_list.jsp").forward(req, res);
	}
}