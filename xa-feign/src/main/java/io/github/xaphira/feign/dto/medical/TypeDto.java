package io.github.xaphira.feign.dto.medical;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class TypeDto {

    private CodingDto codingDto;
    private String text;

}