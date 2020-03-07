package io.github.xaphira.feign.dto.medical;

import io.github.xaphira.feign.dto.common.CommonResponseDto;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(callSuper=false)
@ToString
public class PatientRegistrationResponseDto extends CommonResponseDto<PatientRegistrationDto> {
}
