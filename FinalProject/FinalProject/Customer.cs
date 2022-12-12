using System;

public class Customer
{
	int age;
	string name, phoneNumber, email,id;
	Address address;
	public Customer(string id, string name, string phoneNumber, string email, int age, Address address)
	{
		this.id = id;
		this.age = age;
		this.address = address;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
	} 
	public string Address
	{
		get { return  address};
		set { address = value};
	}
}
