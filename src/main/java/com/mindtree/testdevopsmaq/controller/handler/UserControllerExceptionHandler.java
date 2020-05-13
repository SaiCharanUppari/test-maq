package com.mindtree.testdevopsmaq.controller.handler;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.mindtree.testdevopsmaq.exception.WrongPasswordException;

@ControllerAdvice
public class UserControllerExceptionHandler {

	@ExceptionHandler(WrongPasswordException.class)
	public ModelAndView wrongPassword(Exception e, Throwable cause, Model model) {
		model.addAttribute("errormessage", e.getLocalizedMessage());
		ModelAndView mview = new ModelAndView();
		mview.setViewName("WrongPasswordErrorPage");
		return mview;

	}

}

