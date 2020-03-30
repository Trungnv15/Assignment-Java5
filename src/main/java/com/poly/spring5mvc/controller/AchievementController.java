package com.poly.spring5mvc.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.spring5mvc.model.Records;
import com.poly.spring5mvc.model.Staffs;
import com.poly.spring5mvc.service.AchievementService;
import com.poly.spring5mvc.service.DepartmentService;
import com.poly.spring5mvc.service.MailerService;
import com.poly.spring5mvc.service.StaffService;
import com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException;

@Controller
public class AchievementController {
	@Autowired
	JavaMailSender emailSender;

	@Autowired
	DepartmentService DepartmentService;

	@Autowired
	private StaffService StaffService;

	@Autowired
	AchievementService AchievementService;

	@Autowired
	MailerService MailerService;

	boolean isSuscess;
	int IdStaffLocal;
	boolean isSend;

	@RequestMapping("/achievement")
	public String Achievement(ModelMap model)

	{
		if (isSuscess) {
			model.addAttribute("message", "Sửa thành công!");
		}
		if (isSend) {
			model.addAttribute("message", "Đã thêm bản ghi và gửi Email!");

		}
		List<Staffs> listStaff = StaffService.getStaffs();
		model.addAttribute("listStaff", listStaff);
		isSend = false;
		isSuscess = false;
		return "achievementView/reward-points";
	}

	@RequestMapping(value = "/update-achievement", method = RequestMethod.POST, params = "update")
	public String updateAchievement(ModelMap model, @RequestParam("Id") int Id,
			@RequestParam("RewardPoint") int RewardPoint, @RequestParam("PenaltyPoints") int PenaltyPoints) {
		
		Staffs staff = StaffService.getStaffById(Id);
		int idStaff = staff.getDepartment().getDepartsId();
		AchievementService.updateAchievement(Id, RewardPoint, PenaltyPoints);

		DepartmentService.updateDepartmentPoint(idStaff);

		isSuscess = true;
		return "redirect: achievement";

	}

	@RequestMapping(value = "/update-achievement", params = "discipline")
	public String DisciplineStaff(ModelMap model, @RequestParam("Id") int TheIdStaff) {

		IdStaffLocal = TheIdStaff;

		Staffs staff = StaffService.getStaffById(TheIdStaff);
		List<Staffs> ListDisciplineStaff = AchievementService.getDisciplineByStaffId(TheIdStaff);

		Records record = new Records();
		model.addAttribute("addDiscipline", record);
		model.addAttribute("disciplineTemp", ListDisciplineStaff);
		model.addAttribute("staffTemp", staff);
		return "achievementView/achievement-management";
	}

	// add record mới + gửi Email
	@RequestMapping(value = "/add-record", method = RequestMethod.POST)
	public String addRecord(ModelMap model, @ModelAttribute("addDiscipline") Records record)
			throws MessagingException, javax.mail.MessagingException {
		// Lưu bản ghi
		AchievementService.addReason(record);

		// lấy người dùng nhận được email
		Staffs infoStaffSend = StaffService.getStaffById(IdStaffLocal);

		// Get date
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		String timeTemp = dtf.format(now);

		// Set các trường
		String receiver = infoStaffSend.getEmail();
		String subject = "Đã nghi nhận một bản ghi mới vào lúc " + timeTemp;
		String context = "Nội dung:" + record.getReason();

		// tạo Email
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(receiver);
		message.setSubject(subject);
		message.setText(context);

		// Gửi
		this.emailSender.send(message);
		isSend = true;
		System.out.println("THÔNG TIN NGHI NHẬN: " + receiver + subject + context);

		return "redirect:achievement";
	}

	@RequestMapping(value = "delete-chievement")
	public String deleteRecord(@RequestParam("chievementId") int theId, ModelMap model) {

		Staffs staff = StaffService.getStaffById(IdStaffLocal);
		List<Staffs> ListDisciplineStaff = AchievementService.getDisciplineByStaffId(IdStaffLocal);

		model.addAttribute("disciplineTemp", ListDisciplineStaff);
		model.addAttribute("staffTemp", staff);
		AchievementService.deleteRecord(theId);
		return "redirect: achievement";

	}

}
