package com.pancake.entity.content;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Created by chao on 2018/6/2.
 */
@JsonIgnoreProperties(ignoreUnknown = true)
public class Record extends TxContent {
//    private String id;
//    private String patientId;
//    private String patientName;
//    private String diagnosisDate;  //诊断日期
//    private String infectionName;  //传染病名称
//    private String reportOrganization;  //报告单位
    private String strainName;    //病毒名称

    private String virusSpecies;  //病毒种类

    private String genbankAccession;  //传染病名称

    private String sequenceLength;  //报告单位

    private String collectionDate;  //报告单位

    private String host;  //报告单位

    private String genbankHost;  //报告单位

    private String country;  //报告单位

    private String molType;  //报告单位

//    private String segment;

//    private String proteinName;  //报告单位

    public Record() {

        super("Record");
    }

    public Record( String strainName, String virusSpecies, String genbankAccession, String sequenceLength,
                      String collectionDate, String host, String genbankHost, String country, String molType) {
        super("Record");

        this.strainName = strainName;
        this.virusSpecies = virusSpecies;
        this.genbankAccession = genbankAccession;
        this.sequenceLength = sequenceLength;
        this.collectionDate = collectionDate;
        this.host = host;
        this.genbankHost = genbankHost;
        this.country = country;
        this.molType = molType;

    }

    public Record(String contentType,  String strainName, String virusSpecies, String genbankAccession, String sequenceLength,
                     String collectionDate, String host, String genbankHost, String country, String molType) {
        super(contentType);

        this.strainName = strainName;
        this.virusSpecies = virusSpecies;
        this.genbankAccession = genbankAccession;
        this.sequenceLength = sequenceLength;
        this.collectionDate = collectionDate;
        this.host = host;
        this.genbankHost = genbankHost;
        this.country = country;
        this.molType = molType;

    }
//    public Record(String id, String patientId, String patientName, String diagnosisDate,
//                  String infectionName, String reportOrganization) {
//        super("Record");
//        this.id = id;
//        this.patientId = patientId;
//        this.patientName = patientName;
//        this.diagnosisDate = diagnosisDate;
//        this.infectionName = infectionName;
//        this.reportOrganization = reportOrganization;
//    }
//
//    public Record(String contentType, String id, String patientId, String patientName, String diagnosisDate,
//                  String infectionName, String reportOrganization) {
//        super(contentType);
//        this.id = id;
//        this.patientId = patientId;
//        this.patientName = patientName;
//        this.diagnosisDate = diagnosisDate;
//        this.infectionName = infectionName;
//        this.reportOrganization = reportOrganization;
//    }

    @Override
    public String toString() {
        String rtn = null;
        try {
            rtn = (new ObjectMapper()).writeValueAsString(this);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return rtn;
    }

//    public String getId() {
//        return id;
//    }
//
//    public void setId(String id) {
//        this.id = id;
//    }
//
//    public String getPatientId() {
//        return patientId;
//    }
//
//    public void setPatientId(String patientId) {
//        this.patientId = patientId;
//    }
//
//    public String getPatientName() {
//        return patientName;
//    }
//
//    public void setPatientName(String patientName) {
//        this.patientName = patientName;
//    }
//
//    public String getDiagnosisDate() {
//        return diagnosisDate;
//    }
//
//    public void setDiagnosisDate(String diagnosisDate) {
//        this.diagnosisDate = diagnosisDate;
//    }
//
//    public String getInfectionName() {
//        return infectionName;
//    }
//
//    public void setInfectionName(String infectionName) {
//        this.infectionName = infectionName;
//    }
//
//    public String getReportOrganization() {
//        return reportOrganization;
//    }
//
//    public void setReportOrganization(String reportOrganization) {
//        this.reportOrganization = reportOrganization;
//    }

    public String getStrainName() {
        return strainName;
    }
    public void setStrainName(String strainName) {
        this.strainName = strainName;
    }
    public String getVirusSpecies() {
        return virusSpecies;
    }
    public void setVirusSpecies(String virusSpecies) {
        this.virusSpecies = virusSpecies;
    }
    public String getGenbankAccession() {
        return genbankAccession;
    }
    public void setGenbankAccession(String genbankAccession) {
        this.genbankAccession = genbankAccession;
    }
    public String getSequenceLength() {
        return sequenceLength;
    }

    public void setSequenceLength(String sequenceLength) {
        this.sequenceLength = sequenceLength;
    }
    public String getCollectionDate() {
        return collectionDate;
    }
    public void setCollectionDate(String collectionDate) {
        this.collectionDate = collectionDate;
    }
    public String getHost() {
        return host;
    }
    public void setHost(String host) {
        this.host = host;
    }
    public String getGenbankHost() {
        return genbankHost;
    }
    public void setGenbankHost(String genbankHost) {
        this.genbankHost = genbankHost;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
    public String getMolType() {
        return molType;
    }
    public void setMolType(String molType) {
        this.molType = molType;
    }

}
