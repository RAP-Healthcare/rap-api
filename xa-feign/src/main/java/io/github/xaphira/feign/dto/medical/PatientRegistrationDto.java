package io.github.xaphira.feign.dto.medical;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class PatientRegistrationDto {

    private String resourceType;
    private String id;
    private TextDto text;
    private MetaDto meta;
    private ExtensionDto extension;
    private IdentifierDto identifier;
    private String active;
    private NameDto name;
    private TelecomDto telecom;
    private String gender;
    private String birthDate;
    private AddressDto address;

}