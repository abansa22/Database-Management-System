package industry.service;


import industry.dao.IndustryDao;
import industry.domain.Industry;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class IndustryService {
	private IndustryDao entity1Dao = new IndustryDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Industry form) throws IndustryException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Industry entity1 = entity1Dao.findById(form.getId());
		if(entity1.getId()!=null && entity1.getId().equals(form.getId())) throw new IndustryException("This user name has been registered!");
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
//	public void login(Industry form) throws IndustryException, ClassNotFoundException, InstantiationException, IllegalAccessException {
//		Industry user = entity1Dao.findById(form.getUsername());
//		if(user.getUsername()==null) throw new IndustryException("The user is not in the database");
//		
//		String password = user.getPassword();
//		
//		if(password!=null && !password.equals(form.getPassword()))
//			throw new IndustryException(" The password is not right");
//		
//	}
}
