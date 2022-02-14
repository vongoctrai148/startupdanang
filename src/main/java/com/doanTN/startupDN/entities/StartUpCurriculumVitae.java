package com.doanTN.startupDN.entities;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "startupcurriculumvitae")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class StartUpCurriculumVitae {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "userid")
    private Users user;
    private String country;
    private String province;
    private String district;
    private String subdistrict;
    private String houseno;
    private String contactemail;
    private String contactphone;
}
