package io.github.xaphira.feign.dto.medical;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class ValueCodingDto {

    private String system;
    private String code;
    private String display;

}