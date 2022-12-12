using System;
using System.Security.Cryptography.X509Certificates;

public class Accountant
{
	private string id,username;
	public Accountant(string id,string username)
	{
		this.id = id;
		this.username = username;
	}
	public string Id { 
		get { return id; }
		set { id = value; }
	}
	public string name
	{
		get { return username; }
		set { username = value; }
	}
}
