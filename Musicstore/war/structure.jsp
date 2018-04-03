<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Structure </title>
    
    <link href="css/structure.css" rel="stylesheet">
      
        

    
   

    <style>
	tr ul li{text-align:left}
	tr ol li {text-align:left}
	
	</style>
  </head>

  <body>

    <h1>PROJECT STRUCTURE</h1>

<table id="">
<tr id="firstrow" ><th>Concept</th>                  <th>Sql</th>      <th>Sql Example</th>  <th>Cloud DataStore</th>    <th>Cloud example</th></tr>
<tr>              <td><b>Category of object</b></td>       <td>Table</td>	  <td><ul><li>Item</li><li>Instrument</li><li>Photo</li><li>User</li><li>Order</li></ul></td>			     <td>Kind</td>     <td><ul><li>Item</li><li>Instrument</li><li>Photo</li><li>User</li><li>Order</li></ul></td></tr>
<tr>             <td><b>One object</b></td>                <td>Row</td>      <td>User{Email,<br>name,password}</td>          <td>Entity</td>      <td>User(Email,<br>name,password)</td></tr>
<tr><td><b>Individual data for an object</b></td>      <td>Field</td><td>Item{company}<br>User{password}</td><td>Property</td><td>Item{company}<br>User{password}</td></tr>
<tr><td><b>Unique ID for an object  </b></td><td>Primary Key </td><td>Any field</td><td>Key</td><td>Any property</td></tr>
<tr>

   <td><b>Trigger     <ol><li>Database manipulation (DML)</li><li>Database definition (DDL)</li><li>Database operation</li></ol>    </b></td>
   <td><ol><li>Delete,Insert or Update</li><li>Create,Alter or Drop</li><li>Logoff,Logon and Shutdown</li></ol> </td>    
   <td><ol><li>DELETE TABLE Tablename; </li><li>ALTER TABLE table_name;</li><li>CREATE LOGIN (name of Windows User) FROM WINDOWS;</li></ol></td>
   <td>Key</td>
   <td>
		<ol>
		<li>Delete:<br>
			We can easly delete data manully from console.
		
			<br>Insert & Update:<br>ofy().save().entity(ENTITYNAME).now();</li>
		<li>Create:<br>factory().register(ENTITYNAME.class)<br>
			Alter & Drop:<br>we can also alter the table from java entity class by creating new Property</li>
		<li>Managed with the help of session:<br> HttpSession sess=req.getSession();</li>
		<ol>
	</td>
</tr>

<tr>
		<td><b>Stored Procedure</b></td>
		<td>A stored procedure is a set of precompiled
		SQL statements that are used to perform a special
		task.</td>
		<td>CREATE PROCEDURE <owner>.<procedure name></td>
		<td>DATASTORE</td>
		<td>public static void register(String name, String type, String photo_Id){<br>		
		Instrument inst=new Instrument(name,type,photo_Id);
		ofy().save().entity(inst).now();		
		ObjectifyService.ofy().clear();}
	</td></tr>

</table>
    
    
  </body>
</html>
