package io.github.xaphira.feign.dto.medical;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class ExtensionDto {

    private String url;
    private ExtensionDto extension;
    private ValueCodingDto valueCoding;
    private String valueString;
    private String valueCode;

}