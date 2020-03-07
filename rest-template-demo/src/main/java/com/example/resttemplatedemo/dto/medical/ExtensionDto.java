package com.example.resttemplatedemo.dto.medical;

import java.util.List;

public class ExtensionDto {

    private String url;
    private List<ExtensionDto> extension;
    private ValueCodingDto valueCoding;
    private String valueString;
    private String valueCode;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<ExtensionDto> getExtension() {
        return extension;
    }

    public void setExtension(List<ExtensionDto> extension) {
        this.extension = extension;
    }

    public ValueCodingDto getValueCoding() {
        return valueCoding;
    }

    public void setValueCoding(ValueCodingDto valueCoding) {
        this.valueCoding = valueCoding;
    }

    public String getValueString() {
        return valueString;
    }

    public void setValueString(String valueString) {
        this.valueString = valueString;
    }

    public String getValueCode() {
        return valueCode;
    }

    public void setValueCode(String valueCode) {
        this.valueCode = valueCode;
    }
}