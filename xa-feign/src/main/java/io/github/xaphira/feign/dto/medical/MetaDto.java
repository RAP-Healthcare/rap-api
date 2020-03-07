package io.github.xaphira.feign.dto.medical;

import lombok.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@ToString
public class MetaDto {

    private List<String> profile;

}