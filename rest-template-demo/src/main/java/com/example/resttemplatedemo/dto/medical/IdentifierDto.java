package com.example.resttemplatedemo.dto.medical;

public class IdentifierDto {

    private String use;
    private TypeDto type;
    private String system;
    private String value;

    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    public TypeDto getType() {
        return type;
    }

    public void setType(TypeDto type) {
        this.type = type;
    }

    public String getSystem() {
        return system;
    }

    public void setSystem(String system) {
        this.system = system;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}