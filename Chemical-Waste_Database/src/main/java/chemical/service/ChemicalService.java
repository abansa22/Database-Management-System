package chemical.service;


import chemical.dao.ChemicalDao;
import chemical.domain.Chemical;

/**
 * logic functions such as register, login
 * @author Aayush Makharia
 *
 */
public class ChemicalService {
	private ChemicalDao chemicalDao = new ChemicalDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Chemical form) throws ChemicalException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Chemical chem = chemicalDao.findById(form.getId());
		if(chem.getId()!=null && chem.getId().equals(form.getId())) throw new ChemicalException("This user name has been registered!");
		chemicalDao.add(form);
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
//	public void login(Chemical form) throws ChemicalException, ClassNotFoundException, InstantiationException, IllegalAccessException {
//		Chemical user = entity1Dao.findByUsername(form.getId());
//		if(user.getId()==null) throw new ChemicalException("The user is not in the database");
//		
//		String password = user.getPassword();
//		
//		if(password!=null && !password.equals(form.getPassword()))
//			throw new ChemicalException(" The password is not right");
//		
//	}
}
