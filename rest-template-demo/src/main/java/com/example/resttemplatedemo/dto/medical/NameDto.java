package com.example.resttemplatedemo.dto.medical;

import java.util.List;

public class NameDto {

    private String family;
    private List<String> given;

    public String getFamily() {
        return family;
    }

    public void setFamily(String family) {
        this.family = family;
    }

    public List<String> getGiven() {
        return given;
    }

    public void setGiven(List<String> given) {
        this.given = given;
    }
}