package plant;

public class PlantVO {
	
	private String plant_num;
    private String plant_sciname;
    private String plant_name;
    private String plant_type;
    private String plant_fert;
    private String plant_watersp;
    private String plant_light;
	private String plant_managelv;
	private String plant_watersu;
	private String plant_waterfa;
	private String plant_waterwi;
	private String plant_img;
	private String plant_flang;
	private String plant_humid;
	private String plant_place;
	
	
   
    public PlantVO(){}
    public PlantVO(String plant_num, String plant_humid ,String plant_place, String plant_flang, String plant_sciname, String plant_managelv, String plant_name, String plant_type, String plant_fert, String plant_watersp, String plant_watersu, String plant_waterfa, String plant_waterwi, String plant_light, String plant_img){
    	
    	this.plant_flang = plant_flang;
    	this.plant_num = plant_num;
    	this.plant_fert = plant_fert;
    	this.plant_light = plant_light;
    	this.plant_name = plant_name;
    	this.plant_sciname = plant_sciname;
    	this.plant_type = plant_type;
    	this.plant_watersp = plant_watersp;
    	this.plant_managelv = plant_managelv;
    	this.plant_watersu = plant_watersu;
    	this.plant_waterfa = plant_waterfa;
    	this.plant_waterwi = plant_waterwi;
    	this.plant_img = plant_img;
    	this.plant_humid = plant_humid;
    	this.plant_place = plant_place;
    
}
	public String getPlant_num() {
		return plant_num;
	}
	public void setPlant_num(String plant_num) {
		this.plant_num = plant_num;
	}
	public String getPlant_sciname() {
		return plant_sciname;
	}
	public void setPlant_sciname(String plant_sciname) {
		this.plant_sciname = plant_sciname;
	}
	public String getPlant_name() {
		return plant_name;
	}
	public void setPlant_name(String plant_name) {
		this.plant_name = plant_name;
	}
	public String getPlant_type() {
		return plant_type;
	}
	public void setPlant_type(String plant_type) {
		this.plant_type = plant_type;
	}
	public String getPlant_fert() {
		return plant_fert;
	}
	public void setPlant_fert(String plant_fert) {
		this.plant_fert = plant_fert;
	}
	public String getPlant_watersp() {
		return plant_watersp;
	}
	public void setPlant_watersp(String plant_watersp) {
		this.plant_watersp = plant_watersp;
	}
	public String getPlant_light() {
		return plant_light;
	}
	public void setPlant_light(String plant_light) {
		this.plant_light = plant_light;
	}
	public String getPlant_managelv() {
		return plant_managelv;
	}
	public void setPlant_managelv(String plant_managelv) {
		this.plant_managelv = plant_managelv;
	}
	public String getPlant_watersu() {
		return plant_watersu;
	}
	public void setPlant_watersu(String plant_watersu) {
		this.plant_watersu = plant_watersu;
	}
	public String getPlant_waterfa() {
		return plant_waterfa;
	}
	public void setPlant_waterfa(String plant_waterfa) {
		this.plant_waterfa = plant_waterfa;
	}
	public String getPlant_waterwi() {
		return plant_waterwi;
	}
	public void setPlant_waterwi(String plant_waterwi) {
		this.plant_waterwi = plant_waterwi;
	}
	public String getPlant_img() {
		return plant_img;
	}
	public void setPlant_img(String plant_img) {
		this.plant_img = plant_img;
	}

	public String getPlant_flang() {
		return plant_flang;
	}
	public void setPlant_flang(String plant_flang) {
		this.plant_flang = plant_flang;
	}
	public String getPlant_humid() {
		return plant_humid;
	}
	public void setPlant_humid(String plant_humid) {
		this.plant_humid = plant_humid;
	}
	public String getPlant_place() {
		return plant_place;
	}
	public void setPlant_place(String plant_place) {
		this.plant_place = plant_place;
	}
}