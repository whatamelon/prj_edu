package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dto.UserDTO;
import poly.service.IUserService;

@Controller
public class UserController {
	private Logger log = Logger.getLogger(this.getClass());
	

	
	//--------------------------------------------------회원가입 시작----------------------------------------------------------------------------------------
	
@Autowired
		private IUserService userService;


	@RequestMapping(value="/user/createaccount")
	public String createAccount (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String birthdate = request.getParameter("birthdate");
		
		UserDTO udto = new UserDTO();
		udto.setId(id);
		udto.setPwd(pwd);
		udto.setName(name);
		udto.setNickname(nickname);
		udto.setBirthdate(birthdate);
		
		return "/user/createaccount";
	}
	//--------------------------------------------------회원가입 끝----------------------------------------------------------------------------------------
	
	
	//--------------------------------------------------로그인 시작----------------------------------------------------------------------------------------
	
	@RequestMapping(value="/user/login")
	public String login (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		UserDTO udto = new UserDTO();
		udto.setId(id);
		udto.setPwd(pwd);
		
		return "/user/login";
	}
	
	//--------------------------------------------------로그인 끝----------------------------------------------------------------------------------------
	
	
	//--------------------------------------------------아이디 찾기 시작----------------------------------------------------------------------------------------
	
	@RequestMapping(value="/user/findid")
	public String findid (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		String name = request.getParameter("name");
		String birthdate = request.getParameter("birthdate");
		
		UserDTO udto = new UserDTO();
		udto.setName(name);
		udto.setBirthdate(birthdate);
		
		return "/user/findid";
	}
	

		@RequestMapping(value="/user/findid2")
		public String findid2 (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			String id = request.getParameter("id");
			
			UserDTO udto = new UserDTO();
			udto.setId(id);
			
			return "/user/findid2";
	
}
		
		//--------------------------------------------------아이디 찾기 끝----------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------비밀번호 찾기 시작----------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/findpw")
		public String findpw (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String birthdate = request.getParameter("birthdate");
			
			UserDTO udto = new UserDTO();
			udto.setId(id);
			udto.setName(name);
			udto.setBirthdate(birthdate);
			
			return "/user/findpw";
		}
		
		@RequestMapping(value="/user/findpw2")
		public String findpw2 (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			String pwd = request.getParameter("pwd");
			
			UserDTO udto = new UserDTO();
			udto.setPwd(pwd);
			
			return "/user/findpw2";
		}
		
		//--------------------------------------------------비밀번호 찾기 끝---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------마이페이지 시작---------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/myfage")
		public String myfage (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			/*String stu_num = request.getParameter("stu_num");
			log.info(stu_num);*/
			log.info("test");
			return "/user/myfage";
		}
		
		//--------------------------------------------------마이페이지 끝---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------로그인 후 홈페이지 시작---------------------------------------------------------------------------------------
		@RequestMapping(value="/user/index1")
		public String index1 (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			/*String stu_num = request.getParameter("stu_num");
			log.info(stu_num);*/
			log.info("test");
			return "/user/index1";
	}
		//--------------------------------------------------로그인 후 홈페이지 끝---------------------------------------------------------------------------------------

		
		@RequestMapping(value="/user/koreanTable")
		public String divtest (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			/*String stu_num = request.getParameter("stu_num");
			log.info(stu_num);*/
			log.info("test");
			return "/user/koreanTable";
	}
}