package domain;


public class LocDeVeci {

	private int idLoc;
	private int suprafata;
	private int idParcela;
	private int numar;
	private byte[] poza;
	private boolean isMonument;
	private int idCimitir;
	private int nrDecedati;
	private int nrConcesionari;
	public int getNrDecedati() {
		return nrDecedati;
	}

	public void setNrDecedati(int nrDecedati) {
		this.nrDecedati = nrDecedati;
	}

	public int getNrConcesionari() {
		return nrConcesionari;
	}

	public void setNrConcesionari(int nrConcesionari) {
		this.nrConcesionari = nrConcesionari;
	}

	public LocDeVeci() {

	}

	public LocDeVeci(int suprafata, int idParcela, int numar,
			byte[] poza, boolean isMonument, int idCimitir, int nrDecedati, int nrConcesionari) {

		this.suprafata = suprafata;
		this.idParcela = idParcela;
		this.numar = numar;
		this.poza = poza;
		this.isMonument = isMonument;
		this.idCimitir = idCimitir;
		this.nrDecedati = nrDecedati;
		this.nrConcesionari = nrConcesionari;
	}
	
	public LocDeVeci(int idLoc, int suprafata, int idParcela, int numar,
			byte[] poza, boolean isMonument, int idCimitir, int nrDecedati, int nrConcesionari) {

		this.idLoc = idLoc;
		this.suprafata = suprafata;
		this.idParcela = idParcela;
		this.numar = numar;
		this.poza = poza;
		this.isMonument = isMonument;
		this.idCimitir = idCimitir;
		this.nrDecedati = nrDecedati;
		this.nrConcesionari = nrConcesionari;
	}

	public int getIdLoc() {
		return idLoc;
	}

	public void setIdLoc(int idLoc) {
		this.idLoc = idLoc;
	}

	public int getSuprafata() {
		return suprafata;
	}

	public void setSuprafata(int suprafata) {
		this.suprafata = suprafata;
	}

	public int getIdParcela() {
		return idParcela;
	}

	public void setIdParcela(int idParcela) {
		this.idParcela = idParcela;
	}

	public int getNumar() {
		return numar;
	}

	public void setNumar(int numar) {
		this.numar = numar;
	}

	public byte[] getPoza() {
		return poza;
	}

	public void setPoza(byte[] poza) {
		this.poza = poza;
	}

	public boolean isMonument() {
		return isMonument;
	}

	public void setMonument(boolean isMonument) {
		this.isMonument = isMonument;
	}

	public int getIdCimitir() {
		return idCimitir;
	}

	public void setIdCimitir(int idCimitir) {
		this.idCimitir = idCimitir;
	}

	@Override
	public String toString() {
		return "LocDeVeci [idLoc=" + idLoc + ", suprafata=" + suprafata
				+ ", idParcela=" + idParcela + ", numar=" + numar + ", poza="
				+ poza + ", isMonument=" + isMonument + ", idCimitir="
				+ idCimitir +", nrDecedati="+ nrDecedati 
				+ ", nrConcesionari ="+nrConcesionari +"]";
	}
}
