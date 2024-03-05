package com.kissmepls.spring.mvc_hibernate_aop.entity;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@Entity
@Table (name = "employee_details")
public class Detail
{
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "id")
    private int id;

    @Column (name = "city")
    private String city;

    @Column (name = "phone")
    private String phone;

    @Column (name = "email")
    private String eMail;

    @Column (name = "date_of_birth")
    private String birthDay;

    @Column (name = "date_hired")
    private String hiderDay;

    public Detail()
    {
    }

    public Detail(String city, String phone, String eMail, String birthDay, String hiderDay)
    {
        this.city = city;
        this.phone = phone;
        this.eMail = eMail;
        this.birthDay = birthDay;
        this.hiderDay = hiderDay;
    }

    @Override
    public String toString()
    {
        return "Detail{" +
                "id=" + id +
                ", city='" + city + '\'' +
                ", phone='" + phone + '\'' +
                ", eMail='" + eMail + '\'' +
                ", birthDay='" + birthDay + '\'' +
                ", hiderDay='" + hiderDay + '\'' +
                '}';
    }
}
