package javabeans;

public class Reservation {

	private String name;
	private String noHp;
	private String email;
	private String date;
	private String time;
	private String noPax;
	private String bookingNo;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNoHp() {
		return noHp;
	}

	public void setNoHp(String noHp) {
		this.noHp = noHp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	public String getNoPax() {
		return noPax;
	}

	public void setNoPax(String noPax) {
		this.noPax = noPax;
	}
	public String getBookingNo() {
		return bookingNo;
	}

	public void setBookingNo(String bookingNo) {
		this.bookingNo = bookingNo;
	}
	
	public boolean storeData() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8555/webapp?autoReconnect=false&useSSL=false","username", "password");
			String sql = "INSERT INTO reservation (name, noHp,email, date, time) VALUES (?,?)";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, getName());
			statement.setString(2, getNoHp());
			statement.setString(3, getEmail());
			statement.setString(4, getDate());
			statement.setString(5, getTime());
			statement.executeUpdate();
			statement.close();
			con.close();
			return true;	
			
		}catch(Exception ex) {
			return false;
		}
		
	}
	public boolean updateData(int id) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8555/webapp?autoReconnect=false&useSSL=false","username", "password");
			String sql = "UPDATE courses SET name =?, noHp = ? , email = ?, date = ?, time = ? WHERE course_id=?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setString(1, getName());
			statement.setString(2, getNoHp());
			statement.setString(3, geEmail());
			statement.setString(4, getDate());
			statement.setString(5, getTime());
			statement.setInt(3, id);
			statement.executeUpdate();
			statement.close();
			con.close();
			return true;
			
			
		}catch(Exception ex) {
			return false;
		}
	}
	
	public boolean deleteData(int id) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8555/webapp?autoReconnect=false&useSSL=false","username", "password");
			String sql = "DELETE From courses WHERE course_id = ?";
			PreparedStatement statement = con.prepareStatement(sql);
			statement.setInt(1, id);
			statement.executeUpdate();
			statement.close();
			con.close();
			return true;
			
			
		}catch(Exception ex) {
			return false;
		}
}
