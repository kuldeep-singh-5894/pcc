package pcc.com;

public class Player {
	
	int id, age;
	String name, tname, role, batting, bowling, position;
	byte[] im;
	
	public Player(int id, String name, int age, String role, String batting, String bowling, String tname, String position, byte[] im) {
		this.id=id;
		this.name=name;
		this.tname=tname;
		this.age=age;
		this.role=role;
		this.batting=batting;
		this.bowling=bowling;
		this.position=position;
		this.im=im;
	}
	
	public Player() {
			
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getBatting() {
		return batting;
	}

	public void setBatting(String batting) {
		this.batting = batting;
	}

	public String getBowling() {
		return bowling;
	}

	public void setBowling(String bowling) {
		this.bowling = bowling;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public byte[] getIm() {
		return im;
	}

	public void setIm(byte[] im) {
		this.im = im;
	}
	
}
