package services;

import java.util.List;

import dto.LocDeVeciDTO;
import exceptions.BusinessException;

public interface ServiceLocuriDeVeci {
	
	
	

	/**
	 * Returneaza locurile de veci  caror termen de concesionare a expirat
	 * in anii precedenti 
	 * 
	 * @return
	 *     Lista continand locurile de veci  caror termen de concesionare a expirat
	 *     in anii precedenti. Elementele listei inglobeaza inclusiv datele perso-
	 *     nale ale detinatorului, inmormantatului etc.
	 * 
	 */
	public List<LocDeVeciDTO> getLocuriDeVeciExpirate(int anulExpirarii);
	
	/**
	 * Returneaza locurile de veci  caror termen de concesionare a expirat
	 * in anul specificat
	 * 
	 * @return
	 *     Lista continand locurile de veci  caror termen de concesionare a expirat
	 *     in anul specificat. Elementele listei inglobeaza inclusiv datele perso-
	 *     nale ale detinatorului, inmormantatului etc.
	 * 
	 */
	public List<LocDeVeciDTO> getLocuriDeVeciExpirate();
	
	
	/*OBSERVATIE: In eventualitatea in care se retine si adresa de mail pe baza ID-ului
	 *locului de veci expirat si pe o structura predefinita a mesajului s-ar putea trimite
	 *un email de informare concesionarului care sa echivaleze cerinta functionala "redac-
	 *tarea unei scrisori catre concesionar prin care sa fie atentionat asupra situatiei 
	 *platii locului de veci" */
	public void trimiteEmailConcesionar (int locDeVeciExpirat);
	
	/**
	 * Returneaza locurile de veci caror termen de expira in anul in curs
	 * 
	 * @return
	 *     Lista continand locurile de veci  caror termen de concesionare expira
	 *     in anul in curs. Elementele listei inglobeaza inclusiv datele perso-
	 *     nale ale detinatorului, inmormantatului etc.
	 * 
	 */
	public List<LocDeVeciDTO> getLocuriDeVeciExpirandInAnulCurent();
	
	/**
	 * Returneaza locurile de veci platite in anul in curs
	 * 
	 * @return
	 *     Lista continand locurile de veci platite in anul in curs.
	 *     Elementele listei inglobeaza inclusiv datele personale ale detinatorului, 
	 *     inmormantatului etc.
	 * 
	 */
	public List<LocDeVeciDTO> getLocuriDeVeciPlatiteInAnulInCurs();
	
	public void adaugaLocDeVeci(LocDeVeciDTO locDeVeci) throws BusinessException;
	
	public void actualizeazaLocDeVeci(LocDeVeciDTO locDeVeci) throws BusinessException;
	
	//+ Export raspuns, de stabilit date membru ale unui obiect incapsulandu-l etc.
}