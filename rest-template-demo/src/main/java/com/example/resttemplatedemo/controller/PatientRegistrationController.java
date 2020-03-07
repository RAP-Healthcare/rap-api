package com.example.resttemplatedemo.controller;


import com.example.resttemplatedemo.dto.medical.PatientRegistrationDto;
import com.example.resttemplatedemo.dto.medical.ResponseDto;
import com.example.resttemplatedemo.service.PatientRegistrationImplService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PatientRegistrationController {

    protected final Log log = LogFactory.getLog(getClass());

    @Autowired
    private PatientRegistrationImplService patientRegistrationImplService;

    @RequestMapping(value = "/rap/post/patient/register/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ResponseDto> patientRegistration(@RequestBody(required = true) PatientRegistrationDto patientRegistrationDto) throws Exception {
        log.info("Request : "+patientRegistrationDto.toString());
        return new ResponseEntity<ResponseDto>(patientRegistrationImplService.patientRegister(patientRegistrationDto), HttpStatus.OK);
    }

}
