package environment.domain;

/**
 * User object
 * 
 * @author Aayush Makharia
 * 
 */
public class Environment {
	private Integer chem_id;
	private String env_type;
	private String location;
	/**
	 * @return the chem_id
	 */
	public Integer getChem_id() {
		return chem_id;
	}
	/**
	 * @param chem_id the chem_id to set
	 */
	public void setChem_id(Integer chem_id) {
		this.chem_id = chem_id;
	}
	/**
	 * @return the env_type
	 */
	public String getEnv_type() {
		return env_type;
	}
	/**
	 * @param env_type the env_type to set
	 */
	public void setEnv_type(String env_type) {
		this.env_type = env_type;
	}
	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}
	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}
}
