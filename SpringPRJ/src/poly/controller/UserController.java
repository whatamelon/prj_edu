package poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.jdbc.StringUtils;

import poly.dto.PagingDTO;
import poly.dto.UserDTO;
import poly.service.IUserService;
import poly.util.CmmUtil;

@SuppressWarnings("unused")
@Controller
public class UserController {
	private Logger log = Logger.getLogger(this.getClass());
	

	
	//--------------------------------------------------회원가입 시작----------------------------------------------------------------------------------------
	
@Autowired
		private IUserService userService;

	
	@RequestMapping(value="/user/createaccount")
	public String createaccount (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
	
		return "/user/createaccount";
	}

	@RequestMapping(value="/user/createAccountProc")
	public String createAccountProc (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		log.info("createAcountProcStrat");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String birthdate = request.getParameter("birthdate");
		
		log.info("id :" + id);
		log.info("pwd :" + pwd);
		log.info("name :" + name);
		log.info("nickname :" + nickname);
		log.info("birthdate :" + birthdate);
		
		UserDTO uDTO = new UserDTO();
		uDTO.setUsr_id(id);
		uDTO.setPassword(pwd);
		uDTO.setUsr_name(name);
		uDTO.setUsr_nickname(nickname);
		uDTO.setUsr_birthdate(birthdate);
		
		int result = userService.insertUser(uDTO);
		
		return "/user/index";
	}
	//--------------------------------------------------회원가입 끝----------------------------------------------------------------------------------------
	
	
	//--------------------------------------------------로그인 시작----------------------------------------------------------------------------------------
	
	@RequestMapping(value="/user/login")
	public String login (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		log.info("logintest");
		return "/user/login";
	}
	
	//--------------------------------------------------로그인 페이지 끝----------------------------------------------------------------------------------------
	
	//--------------------------------------------------로그인 proc 시작----------------------------------------------------------------------------------------
	
	@RequestMapping(value="user/loginProc")
	public String loginProc(HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		
		  String usr_id = CmmUtil.nvl(request.getParameter("usr_id"));
	      log.info("usr_id : " + usr_id);
	      String password = CmmUtil.nvl(request.getParameter("password"));
	      log.info("password : " + password);
	      String usr_nickname = CmmUtil.nvl(request.getParameter("usr_nickname"));
	      log.info("usr_nickname : " + usr_nickname);
	      
	      UserDTO uDTO = new UserDTO();
	      
	      uDTO.setUsr_id(usr_id);
	      log.info("usr_id : " + uDTO.getUsr_id());
	      
	      uDTO.setPassword(password);
	      log.info("password : " + uDTO.getPassword());
	      
	      uDTO.setUsr_nickname(usr_nickname);
	      log.info("usr_nickname : " + uDTO.getUsr_nickname());
	      
	      uDTO = userService.login(uDTO);

	         
	      if (
	         uDTO.getUsr_id() == null ||
	         uDTO.getUsr_name() == null ||
	         uDTO.getPassword() == null ||
	         uDTO.getUsr_nickname() == null ||
	         uDTO.getUsr_birthdate() == null 
	         
	           )
	      
	      {
	    	  log.info("userLoginProc End~~!!");
	    	  return "/user/login";
	      } else {
	         session.setAttribute("uDTO", uDTO);
	         log.info("userLoginProc End~~!!");
	         
	         if (uDTO.getUsr_id().equals("asdf")) {
	        	 return "redirect:/user/admin.do";
	         }
	         else {
	         return "redirect:/user/index1.do";
	         }
	      } 
	}
	
	//--------------------------------------------------로그인proc 끝----------------------------------------------------------------------------------------
	
	//--------------------------------------------------세션접속된 홈페이지 시작---------------------------------------------------------------------------------------
	@RequestMapping(value="/user/index1")
	public String index1 (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
	
		log.info("test");
		return "/user/index1";
}
	//--------------------------------------------------세션접속된 홈페이지 끝---------------------------------------------------------------------------------------
	
	
	//--------------------------------------------------세션접속된 홈페이지 시작---------------------------------------------------------------------------------------
	@RequestMapping(value="/user/admin")
	public String admin (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
	
		log.info("test");
		return "/user/admin";
}
	//--------------------------------------------------세션접속된 홈페이지 끝---------------------------------------------------------------------------------------
	
	//--------------------------------------------------아이디찾기시작----------------------------------------------------------------------------------------
	
	@RequestMapping(value="/user/findid")
	public String findid (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
		log.info("findid1test");
		return "/user/findid";
	}
	
	//--------------------------------------------------아이디찾기끝----------------------------------------------------------------------------------------
	
	
	//--------------------------------------------------아이디 찾기 proc 시작----------------------------------------------------------------------------------------
	
		@RequestMapping(value="/user/findidProc")
		public String findidProc (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			
			String usr_name = CmmUtil.nvl(request.getParameter("name"));
		      log.info("usr_name : " + usr_name);
		      String usr_birthdate = CmmUtil.nvl(request.getParameter("birthdate"));
		      log.info("usr_birthdate : " +usr_birthdate);
		      
		      UserDTO uDTO = new UserDTO();
		      
		      uDTO.setUsr_name(usr_name);
		      log.info("usr_name : " + uDTO.getUsr_name());
		      
		      uDTO.setUsr_birthdate(usr_birthdate);
		      log.info("usr_birthdate : " + uDTO.getUsr_birthdate());
		      
		      uDTO = userService.findid(uDTO);

		         model.addAttribute("uDTO", uDTO);
		         log.info("userFindidProc End~~!!");
		         return "/user/findid2";
		      
		}
		
		//--------------------------------------------------아이디 찾기 proc끝----------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------비밀번호 찾기 페이지 시작----------------------------------------------------------------------------------------
	
		@RequestMapping(value="/user/findpw")
		public String findpw (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			log.info("findpwtest");
			return "/user/findpw";
		}
		
		//--------------------------------------------------비밀번호 찾기 페이지 끝----------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------비번찾기 proc 시작----------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/findpwProc")
		public String findpwProc (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			
			
			String usr_id = CmmUtil.nvl(request.getParameter("id"));
		      log.info("usr_id : " + usr_id);
			String usr_name = CmmUtil.nvl(request.getParameter("name"));
		      log.info("usr_name : " + usr_name);
		      String usr_birthdate = CmmUtil.nvl(request.getParameter("birthdate"));
		      log.info("usr_birthdate : " +usr_birthdate);
		      
		      UserDTO uDTO = new UserDTO();
		      
		      uDTO.setUsr_id(usr_id);
		      log.info("usr_id : " + uDTO.getUsr_id());
		      
		      uDTO.setUsr_name(usr_name);
		      log.info("usr_name : " + uDTO.getUsr_name());
		      
		      uDTO.setUsr_birthdate(usr_birthdate);
		      log.info("usr_birthdate : " + uDTO.getUsr_birthdate());
		      
		      uDTO = userService.findpw(uDTO);

		         model.addAttribute("uDTO", uDTO);
		         log.info("userFindpwProc End~~!!");
		         return "/user/findpw2";
		      
		}
		//--------------------------------------------------비밀번호 찾기proc끝---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------userInfoCheck 시작---------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/userInfoCheck")
		public String myfageCheck (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			log.info("userInfoChecktest");
			return "/user/userInfoCheck";
		}
		
		//--------------------------------------------------userInfoCheck 끝---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------userInfoCheckPROCPROC 시작---------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/userInfoCheckProc")
		public String userInfoCheckProc (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			
			
			String password = request.getParameter("password");
			log.info("pwd : "  + password);
			boolean validPassword = false;
		      if (session != null) {
		    	  
		    	  UserDTO uDTO = (UserDTO)session.getAttribute("uDTO");
		    	  String sPassword= uDTO.getPassword();
		    	  log.info("sPassword : "  + sPassword);
		    	  
		    	  if( password != null && !"".equals(sPassword)) {
		    		  validPassword = password.equals(sPassword);
		    	  }
		      }
			
		      
		      // 유효하지 않을경우.
		      if(!validPassword) {
		    	  
		    	  log.info("18");
		    	  return "redirect:/user/index1.do";
		      }
		    log.info("userInfoCheckProc End~~!!");
		    return "redirect:/user/userInfoUpdate.do";
		}
		
		//--------------------------------------------------userInfoCheckPROC 끝---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------userInfoUpdate 시작---------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/userInfoUpdate")
		public String userInfoUpdate (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			log.info("userInfoUpdateTest");
			return "/user/userInfoUpdate";
		}
		
		//--------------------------------------------------회원정보수정 시작---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------userInfoUpdatePROC 시작---------------------------------------------------------------------------------------
		
		@RequestMapping(value="/user/userInfoUpdateProc" , method=RequestMethod.POST)
		public String userInfoUpdateProc (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session, UserDTO uDTO) throws Exception{
			
			
			log.info("********************************************************************************");
		      log.info("usr_seq_no : " + uDTO.getUsr_seq_no());
		      log.info("usr_id : " + uDTO.getUsr_id());
		      log.info("usr_name : " + uDTO.getUsr_name());
		      log.info("usr_birthdate : " + uDTO.getUsr_birthdate());
		      log.info("password : " + uDTO.getPassword());
		      log.info("usr_nickname : " + uDTO.getUsr_nickname());
		     
				
				log.info("test..................");
				log.info(uDTO.getUsr_id());
				
				int result = userService.updateUser(uDTO);
		      
		         model.addAttribute("uDTO", uDTO);
		         log.info("mypageProc End~~!!");
		      return "/user/index1";
		}
		
		//--------------------------------------------------userInfoUpdatePROC 끝---------------------------------------------------------------------------------------
		
		
		//--------------------------------------------------회원탈퇴 시작---------------------------------------------------------------------------------------
		
		
		@RequestMapping(value="/user/userBye")
		public String userBye (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
			log.info("userBye");
			return "/user/userBye";
		}
		
	      
        @RequestMapping(value="user/userDelete")
        public String userDelete(HttpServletRequest request, Model model,HttpSession session) throws Exception{
      	  log.info(this.getClass()+"usrDelete start~~~~~!!!!!!");
      	  
           String usr_seq_no = request.getParameter("usr_seq_no");
           
           log.info("usr_seq_no : " + usr_seq_no);
           
           int result = userService.deleteUser(usr_seq_no);
           
           log.info("usr_seq_no"+usr_seq_no);
           
           if(result == 1){
              model.addAttribute("msg", "탈퇴되었습니다.");
              model.addAttribute("url", "/main.do");
           }else{
              model.addAttribute("msg", " 실패하였습니다.");
              model.addAttribute("url", "/main.do");
           }
           
           log.info("result : "+result);
           
           log.info(this.getClass()+"usrDelete END~~~~~!!!!!!");
           
           return "/notice_alert";
        }
		
		//--------------------------------------------------회원탈퇴 끝---------------------------------------------------------------------------------------
        
        
        //-----------------------------------------------------------------------회원관리 게시판 매핑 시작------------------------------------------------------------------------------------------------------------------------------
        
        //-----------------------------------------------------------------------회원관리 게시판 페이징 매핑 시작------------------------------------------------------------------------------------------------------------------------------
                             
                                  @RequestMapping(value="user/adminuserTable", method={RequestMethod.GET,RequestMethod.POST})
                                        public String adminuserTable(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
                                           log.info(this.getClass().getName() + ".adminuserTable start!");
                                           int totalCount = userService.getUserListTotalCount();
                                           int pageNum = 1;
                                           int pageCount = 10;      
                                           pageCount = Integer.parseInt(CmmUtil.nvl(request.getParameter("pageCount"),"10"));
                                           pageNum = Integer.parseInt(CmmUtil.nvl(request.getParameter("pageNum"),"1"));
                                           System.out.println(totalCount +"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
                                           // 페이징 Dto 생성
                                           PagingDTO paging = new PagingDTO();
                                           paging.setPage_num(pageNum);
                                           paging.setPage_count(pageCount);
                                           paging.setTotal_count(totalCount);

                                           List<UserDTO> rList = userService.getUserList2(paging);
                                           System.out.println(rList.size()+": SIZE <<<<<<<<<<<<<<<<<<<<<");
                                           
                                           if (rList==null){
                                              rList = new ArrayList<UserDTO>();
                                           }

                                           model.addAttribute("rList", rList);

                                           model.addAttribute("paging", paging);

                                           rList = null;
                                        
                                           log.info(this.getClass().getName() + ".adminuserTable end!");
                                           
                                           return "/user/adminuserTable";
                                        }
                                
         //-----------------------------------------------------------------------회원관리 게시판 페이징 매핑 끝------------------------------------------------------------------------------------------------------------------------------      

                                
         //-----------------------------------------------------------------------회원관리 상세보기 시작------------------------------------------------------------------------------------------------------------------------------      
                  
                        		
                        		@RequestMapping(value="/user/adminuserInfo")
                        		public String adminuserInfo (HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) throws Exception{
                        			log.info("adminuserInfo");
                        			return "/user/adminuserInfo";
                        		}
                        		
                        		
        //-----------------------------------------------------------------------회원관리 상세보기 끝------------------------------------------------------------------------------------------------------------------------------      

                                
            //-----------------------------------------------------------------------회원관리 게시판 매핑 끝------------------------------------------------------------------------------------------------------------------------------                       
                                
}