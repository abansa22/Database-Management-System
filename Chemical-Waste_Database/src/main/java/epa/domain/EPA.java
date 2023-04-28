package epa.domain;

/**
 * User object
 * 
 * @author Aayush Makharia
 * 
 */
public class EPA {
	
	private Integer ind_id;
	private String envType;
	private String chemName;
	/**
	 * @return the ind_id
	 */
	public Integer getInd_id() {
		return ind_id;
	}
	/**
	 * @param ind_id the ind_id to set
	 */
	public void setInd_id(Integer ind_id) {
		this.ind_id = ind_id;
	}
	/**
	 * @return the envType
	 */
	public String getEnvType() {
		return envType;
	}
	/**
	 * @param envType the envType to set
	 */
	public void setEnvType(String envType) {
		this.envType = envType;
	}
	/**
	 * @return the chemName
	 */
	public String getChemName() {
		return chemName;
	}
	/**
	 * @param chemName the chemName to set
	 */
	public void setChemName(String chemName) {
		this.chemName = chemName;
	}
	
	
}
