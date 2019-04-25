package com.exam.order.validator;

import com.exam.order.model.User;
import com.exam.order.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator {
	@Autowired
	private UserService userService;

	@Override
	public boolean supports(Class<?> aClass) {
		return User.class.equals(aClass);
	}
	
	private static final String PATTERN_PHONE_NUMBER = "\\d{10}|(?:\\d{3}-){2}\\d{4}|\\(\\d{3}\\)\\d{3}-?\\d{4}";
	private static final String PATTERN_EMAIL = "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";

	@Override
	public void validate(Object o, Errors errors) {
		User user = (User) o;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
		if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
			errors.rejectValue("username", "Size.userForm.username");
		}
		if (userService.findByUsername(user.getUsername()) != null) {
			errors.rejectValue("username", "Duplicate.userForm.username");
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
		if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
			errors.rejectValue("password", "Size.userForm.password");
		}

		if (!user.getPasswordConfirm().equals(user.getPassword())) {
			errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fullname", "NotEmpty");
		if (user.getFullname().length() < 6 || user.getFullname().length() > 32) {
			errors.rejectValue("fullname", "Size.userForm.fullname");
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address", "NotEmpty");
		if (user.getAddress().length() < 6) {
			errors.rejectValue("address", "Size.userForm.address");
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
		if (user.getEmail().length() < 6 || user.getEmail().length() > 32) {
			errors.rejectValue("email", "Size.userForm.email");
			if (!user.getEmail().matches(PATTERN_EMAIL)) {     
            	errors.rejectValue("email", "Format.userForm.email");
            }
		}

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "NotEmpty");
		if (user.getPhone().length() < 6 || user.getPhone().length() > 32) {
			errors.rejectValue("phone", "Size.userForm.phone");
			if (!user.getPhone().matches(PATTERN_PHONE_NUMBER)) {     
            	errors.rejectValue("phone", "Format.customerForm.phone");
            }
		}
	}
}
