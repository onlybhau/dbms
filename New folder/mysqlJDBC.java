import java.net.UnknownHostException;

import java.util.*;
import java.sql.*;
public class teb94
{
	public static void main(String[] args) throws ClassNotFoundException
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("CONNCECTED...");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HiddenLeaf","teb94","dataispower");
			Statement st = con.createStatement();
			Scanner sc = new Scanner(System.in);
			System.out.println("1.Display records 2.Insert 3.Delete record : ");
			int a = sc.nextInt();
			switch(a)
			{
			case 1:
				String q = "select * from boats";
				ResultSet rs = st.executeQuery(q);
				while(rs.next())
				{
					System.out.print(rs.getInt(1));
					System.out.print("---");
					System.out.print(rs.getString(2));
					System.out.print("---");
					System.out.print(rs.getString(3));
					System.out.print("\n");
				}
				break;
			case 2:
				Scanner sc1 = new Scanner(System.in);
				System.out.println("Enter ID, NAME, COLOR OF BOAT : ");
				int id = sc1.nextInt();
				String name = sc1.next();
				String color = sc1.next();
				String q1 = "insert into boats values("+id+",'"+name+"','"+color+"')";
				System.out.println(q1);
				st.executeUpdate(q1);
				System.out.println("Inserted properly...");
				break;
			case 3:
				Scanner sc2 = new Scanner(System.in);
				System.out.println("Enter ID if the BOAT to be DELETED: ");
				int id2 = sc2.nextInt();
				String q2 = "delete from boats where bid = "+id2+"";
				System.out.println(q2);
				st.executeUpdate(q2);
				System.out.println("Deleted properly...");
				break;
			}
			
			
			con.close();
		}
		catch(SQLException ex)
		{
            System.out.println("Failure");
        }
	}
}
