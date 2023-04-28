package environment.service;


import environment.dao.EnvironmentDao;
import environment.domain.Environment;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class EnvironmentService {
	private EnvironmentDao entity1Dao = new EnvironmentDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Environment form) throws EnvironmentException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Environment entity1 = entity1Dao.findByEnvType(form.getEnv_type());
		if(entity1.getEnv_type()!=null && entity1.getEnv_type().equals(form.getEnv_type())) throw new EnvironmentException("This user name has been registered!");
		entity1Dao.add(form);
	}
	/**
	 * Login function
	 * @param form
	 * @return
	 * @throws UserException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
//	public void login(Environment form) throws EnvironmentException, ClassNotFoundException, InstantiationException, IllegalAccessException {
//		Environment user = entity1Dao.findByUsername(form.getEnv_type());
//		if(user.getEnv_type()==null) throw new EnvironmentException("The user is not in the database");
//		
//		String password = user.getPassword();
//		
//		if(password!=null && !password.equals(form.getPassword()))
//			throw new EnvironmentException(" The password is not right");
//		
//	}
}
