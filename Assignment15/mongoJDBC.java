package teb94;
import java.net.UnknownHostException;
import java.util.*;
import com.mongodb.*;
public class mongoJDBC {
	private static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) throws UnknownHostException
	{
		try
		{
		Mongo m = new Mongo("localhost",27017);
		System.out.println("Connected successfully..");
		DB d = m.getDB("HiddenLeaf2");
		System.out.println("Got database..");
		DBCollection col = d.getCollection("emp");
		System.out.println("Got collection...");
		

		
		
		System.out.println("1.Display 2.Insert 3.Delete");
		int choice = sc.nextInt();
			switch(choice)
			{
			case 1:
				DBCursor cur = col.find();
				while(cur.hasNext())
				{
					System.out.print(cur.next());
				}
				break;
			case 2:
				System.out.println("Enter eno, name, skills respectively : ");
				int no = sc.nextInt();
				String name = sc.next();
				String skills = sc.next();
				BasicDBObject doc = new BasicDBObject("eno",no).append("ename",name).append("skills",skills);
				col.insert(doc);
				System.out.println("Inserted successfully...");
				break;
			case 3:
				
				//DBObject rem = col.findOne();
				BasicDBObject searchQuery = new BasicDBObject();
				searchQuery.put("skills", "akash");
				col.remove(searchQuery);
				System.out.println("Removed successfully...");
				break;
			}
			
			
		}
		catch(UnknownHostException ex)
		{
			System.out.println("Failure...");
		}
		
	}
}

