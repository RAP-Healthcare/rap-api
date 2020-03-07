package io.github.xaphira.feign.dto.medical;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class TelecomDto {

    private String system;
    private String value;
    private String use;

}