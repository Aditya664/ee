<%@ page import="project.DBClass"%>
<%@ page import="java.sql.*"%>
<%
try
{
	Connection con = DBClass.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,sercurityQuestion varchar(200),answer varchar(200),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2 = "create table product(id int,name varchar(500),category varchar(200),price int ,active varchar(200))";
	String q3 = "create table cart(email varchar(100),product_id int, quanitity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNo bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(20))";
	String q4 = "create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
	//System.out.println(q1);
	//st.execute(q1);
	System.out.println(q4);
	st.execute(q4);
	//System.out.println(q3);
	//st.execute(q3);
	System.out.println("Success");
}
catch(Exception e){
	System.out.println(e);
}

%>