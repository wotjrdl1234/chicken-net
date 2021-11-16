package com.kh.spring.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.service.MemberServiceImpl2;
import com.kh.spring.member.model.vo.Member;
import com.kh.spring.menu.model.service.MenuService;
import com.kh.spring.menu.model.vo.Menu;

@SessionAttributes("loginUser")
@Controller
public class MemberCountroller {
	private static final Logger logger = LoggerFactory.getLogger(MemberCountroller.class);


	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired 
	private MemberService memberService;
	
	@Autowired 
	private MemberServiceImpl2 memberServiceImpl2;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("logout.me")
	public String logoutMember(SessionStatus status) {
		status.setComplete();
		return "redirect:/";
	}

	@RequestMapping("enrollForm.me")
	public String enrollFrom() {
		
		return "member/memberEnrollForm";
	}

	@RequestMapping("insert.me")
	public String insertMember(@ModelAttribute Member m, HttpSession session) {


		System.out.println(m);

		System.out.println("암호화 전 : " + m.getUserPwd());


		String encPwd = bCryptPasswordEncoder.encode(m.getUserPwd());
		System.out.println("암호화 후 : " + encPwd);

		m.setUserPwd(encPwd);

		memberService.insertMember(m);
		session.setAttribute("msg", "회원가입 성공");
		return "redirect:/";
	}

	
	@RequestMapping("login.me")
	public String loginMember(Member m, Model model) throws Exception {
		Member loginUser = memberService.loginMember(bCryptPasswordEncoder, m);
		
		model.addAttribute("loginUser", loginUser);
		return "redirect:/"; 
	}

	@RequestMapping("myPage.me")
	public String myPage() {
		return "member/myPage";
	}

	@RequestMapping("update.me")
	public String updateMember(@ModelAttribute Member m, Model model, HttpSession session) throws Exception{
		Member userInfo = memberServiceImpl2.updateMember(m);

		model.addAttribute("loginUser", userInfo);
		session.setAttribute("msg", "수정완료");
	     return "redirect:/";
	}

	@RequestMapping("delete.me")
	public String deleteMember(String userId) {

		memberService.deleteMember(userId);
		return "redirect:logout.me";
	}

	@RequestMapping("updatePwd.me")
	public String updatePwd(@ModelAttribute Member m, @RequestParam("originPwd") String originPwd,
			@RequestParam("updatePwd") String updatePwd, @RequestParam("checkPwd") String checkPwd, Model model)
			throws Exception {

		if (bCryptPasswordEncoder.matches(originPwd, m.getUserId())) {
			if(updatePwd==checkPwd) {
				m.setUserPwd(updatePwd);
				Member userInfo = memberService.updatePwd(m);

				model.addAttribute("loginUser", userInfo);
			}
		}
		return "member/myPage"; 
	}
	
	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public String mainPage(HttpServletRequest request, HttpServletResponse response, Model model)throws Exception{
		
		
		ArrayList<Menu> menu = menuService.menuList();	
		
		ArrayList<Board> list = boardService.selectList();
		
		
		model.addAttribute("list", list);
		model.addAttribute("menu", menu);
		
		
		return "main";
	}
	
}
