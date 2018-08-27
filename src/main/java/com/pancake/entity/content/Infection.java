package com.pancake.entity.content;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Infection extends TxContent{


    private String strainName;    //病毒名称

    private String virusSpecies;  //病毒种类

	private String genbankAccession;  //传染病名称

	private String sequenceLength;  //报告单位

	private String collectionDate;  //报告单位

	private String host;  //报告单位

	private String genbankHost;  //报告单位

	private String country;  //报告单位

	private String molType;  //报告单位

	private String segment;

	private String proteinName;  //报告单位

    public Infection() {
    }



    public Infection( String strainName, String virusSpecies, String genbankAccession, String sequenceLength,
			String collectionDate, String host, String genbankHost, String country, String molType, String segment,
			String proteinName) {
		super("Infection");

		this.strainName = strainName;
		this.virusSpecies = virusSpecies;
		this.genbankAccession = genbankAccession;
		this.sequenceLength = sequenceLength;
		this.collectionDate = collectionDate;
		this.host = host;
		this.genbankHost = genbankHost;
		this.country = country;
		this.molType = molType;
		this.segment = segment;
		this.proteinName = proteinName;
	}

    public Infection(String contentType,  String strainName, String virusSpecies, String genbankAccession, String sequenceLength,
			String collectionDate, String host, String genbankHost, String country, String molType,String segment,
			String proteinName) {
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
		this.segment = segment;
		this.proteinName = proteinName;
	}

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
	public String getSegment() {
		return segment;
	}
	public void setSegment(String segment) {
		this.segment = segment;
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
	public String getProteinName() {
		return proteinName;
	}
	public void setProteinName(String proteinName) {
		this.proteinName = proteinName;
	}

}
