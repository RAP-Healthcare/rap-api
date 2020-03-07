package com.example.resttemplatedemo.dto.medical;

public class TypeDto {

    private CodingDto codingDto;
    private String text;

    public CodingDto getCodingDto() {
        return codingDto;
    }

    public void setCodingDto(CodingDto codingDto) {
        this.codingDto = codingDto;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}