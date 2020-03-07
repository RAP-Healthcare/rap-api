package io.github.xaphira.feign.dto.medical;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class IdentifierDto {

    private String use;
    private TypeDto type;
    private String system;
    private String value;

}