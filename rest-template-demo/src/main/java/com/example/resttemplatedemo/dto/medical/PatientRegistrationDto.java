package com.example.resttemplatedemo.dto.medical;

import java.util.List;

public class PatientRegistrationDto {

    private String resourceType;
    private String id;
    private TextDto text;
    private MetaDto meta;
    private List<ExtensionDto> extension;
    private List<IdentifierDto> identifier;
    private String active;
    private List<NameDto> name;
    private List<TelecomDto> telecom;
    private String gender;
    private String birthDate;
    private List<AddressDto> address;

    public String getResourceType() {
        return resourceType;
    }

    public void setResourceType(String resourceType) {
        this.resourceType = resourceType;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public TextDto getText() {
        return text;
    }

    public void setText(TextDto text) {
        this.text = text;
    }

    public MetaDto getMeta() {
        return meta;
    }

    public void setMeta(MetaDto meta) {
        this.meta = meta;
    }

    public List<ExtensionDto> getExtension() {
        return extension;
    }

    public void setExtension(List<ExtensionDto> extension) {
        this.extension = extension;
    }

    public List<IdentifierDto> getIdentifier() {
        return identifier;
    }

    public void setIdentifier(List<IdentifierDto> identifier) {
        this.identifier = identifier;
    }

    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }

    public List<NameDto> getName() {
        return name;
    }

    public void setName(List<NameDto> name) {
        this.name = name;
    }

    public List<TelecomDto> getTelecom() {
        return telecom;
    }

    public void setTelecom(List<TelecomDto> telecom) {
        this.telecom = telecom;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public List<AddressDto> getAddress() {
        return address;
    }

    public void setAddress(List<AddressDto> address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "PatientRegistrationDto{" +
                "resourceType='" + resourceType + '\'' +
                ", id='" + id + '\'' +
                ", text=" + text +
                ", meta=" + meta +
                ", extension=" + extension +
                ", identifier=" + identifier +
                ", active='" + active + '\'' +
                ", name=" + name +
                ", telecom=" + telecom +
                ", gender='" + gender + '\'' +
                ", birthDate='" + birthDate + '\'' +
                ", address=" + address +
                '}';
    }
}