package io.github.xaphira.notification.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.github.xaphira.common.aspect.ResponseSuccess;
import io.github.xaphira.common.exceptions.BaseControllerException;
import io.github.xaphira.common.http.ApiBaseResponse;
import io.github.xaphira.common.utils.SuccessCode;
import io.github.xaphira.feign.dto.notification.PushNotificationDto;
import io.github.xaphira.feign.dto.notification.SubscriptionDto;
import io.github.xaphira.notification.service.WebPushNotificationService;

@RequestMapping("/api/notification")
@RestController
public class WebPushNotificationCtrl extends BaseControllerException {

    @Autowired
    private WebPushNotificationService service;

	@ResponseSuccess(SuccessCode.OK_SCR007)
    @RequestMapping(value = "/push/subscribe/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> subscribe(Authentication authentication,
			@RequestHeader(name = HttpHeaders.ACCEPT_LANGUAGE, required = false) String locale,
    		@RequestBody SubscriptionDto subscription) throws Exception {
		service.subscribe(subscription, authentication.getName());
		return new ResponseEntity<ApiBaseResponse>(new ApiBaseResponse(), SuccessCode.OK_SCR007.getStatus());
    }

	@ResponseSuccess(SuccessCode.OK_SCR008)
    @RequestMapping(value = "/push/send/v.1", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<ApiBaseResponse> sendNotify(Authentication authentication,
			@RequestHeader(name = HttpHeaders.ACCEPT_LANGUAGE, required = false) String locale,
			@RequestBody PushNotificationDto message) throws Exception {
		service.notify(message, authentication.getName());
		return new ResponseEntity<ApiBaseResponse>(new ApiBaseResponse(), SuccessCode.OK_SCR008.getStatus());
    }

}
