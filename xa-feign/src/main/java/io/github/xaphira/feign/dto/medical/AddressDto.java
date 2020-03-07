package io.github.xaphira.feign.dto.medical;

import lombok.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class AddressDto {

    private List<String> line;
    private String city;
    private String state;
    private String postalCode;
    private String country;

}