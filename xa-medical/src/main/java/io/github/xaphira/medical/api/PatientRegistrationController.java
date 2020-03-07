package io.github.xaphira.medical.api;

import io.github.xaphira.feign.dto.common.FilterDto;
import io.github.xaphira.feign.dto.master.CityDatatableResponseDto;
import io.github.xaphira.feign.dto.medical.PatientRegistrationDto;
import io.github.xaphira.medical.service.PatientRegistrationImplService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class PatientRegistrationController {

    @Autowired
    private PatientRegistrationImplService patientRegistrationImplService;

    @RequestMapping(value = "/rap/post/patient/register/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> patientRegistration(Authentication authentication,
                                                      @RequestBody(required = true)PatientRegistrationDto patientRegistrationDto) throws Exception {
        return new ResponseEntity<String>(patientRegistrationImplService.patientRegister(patientRegistrationDto), HttpStatus.OK);
    }

}
