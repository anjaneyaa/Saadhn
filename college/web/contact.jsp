 
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.util.Properties"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Service Box - Contact</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
 
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" />    
    
 
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.lightbox-0.5.css" media="screen" />
 
<style>
    p{
        color:rebeccapurple;
    }
</style>
 
<script type="text/javascript">
$(function() {
    $('#map a').lightBox();
});
</script>
</head>
<body>
    
    
             <div style="height:1000px;width:103%;" >
            <div class="row"></div>
            <div class="container" style="height:100px; ">
                <div class="row">
                <div class="col-12 row" style="height:100px; background: url(images/tooplate_header.png) right bottom no-repeat, url(images/saadhn.gif) left top no-repeat; background-size: contain;">
                <div class="col-4" style="height: 100px;"></div>
                    <div class="col-8">                      
                        <div id="tooplate_menu">
            <ul >
                <li><a href="index.jsp" >Home</a></li>         
                
                <li><a href="services.jsp">Services</a></li>
                <li><a href="locator.jsp">Locator</a></li>
                <li><a href="about.jsp"  >About Us</a></li>
                <li><a href="contact.jsp " class="current">Contact Us</a></li>  
                <li><a href="Reg.jsp " class="last">Register/Login</a></li>    
            </ul>    	
        </div>    
                        </div>
                     </div>
                </div>
                <div class="row"></div>
    
    
<div id="tooplate_main" >
    
		<div id="tooplate_content">
        	
      		<h2>Get In Touch </h2>
            <p>This page allows get it touch with you and its vital to have it both functional and attractive.<br>Use the form below to send us an email.you can also use the contact info. on the right corner if you prefer. <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong></strong></a><a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong></strong></a></p>
            <div class="cleaner h40"></div>
        
           
           	<div class="col_w420 float_l">
                <div id="contact_form">
            
                    <h4>Contact Form</h4>
                    
                    <form method="post" name="contact" action="mail">

						<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
						<div class="cleaner h10"></div>

						<label for="email">Email:</label> <input type="text" class="validate-email required input_field" name="email" id="email" />
						<div class="cleaner h10"></div>

						<label for="subject">Subject:</label> <input type="text" class="validate-subject required input_field" name="subject" id="subject"/>
						<div class="cleaner h10"></div>

						<label for="text">Message:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
						<div class="cleaner h10"></div>                

						<input type="submit" value="Send" id="submit" name="submit" class="submit_btn float_l" />

						<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />

					</form>
                    <%--       <%
                           String to = request.getParameter("email");
                String subject = request.getParameter("subject");
                String message =  request.getParameter("text");
                
                String user = "anjani.ies.26@gmail.com";
                String pass = "Anjanik366@";

                //SendMail.send(to,subject, message, user, pass);
          //  }     
           Properties props = new Properties();

        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");	
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session sessio = Session.getDefaultInstance(props,new Authenticator() 
        {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() 
            {
                return new PasswordAuthentication(user, pass);
            }
        });

        try 
        {
            Message mess = new MimeMessage(sessio);
            
            mess.setFrom(new InternetAddress(user));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            mess.setSubject(subject);
            mess.setText(message);

            Transport.send(mess);
            
           // JOptionPane.showMessageDialog(null,"Email sended!");
          // q1.setText("Email sended!");
            
        } catch (MessagingException e) 
        {
            //JOptionPane.showMessageDialog(null,"Something happened!");
           // q1.setText("Something happened!");
            throw new RuntimeException(e);
        }
                        %>   --%>
    
                </div> 
            </div>
            
            <div class="col_w420 float_r" style="text-align: center">
                <h4>Our Location</h4>
                
				<div >
				   <a href='image.jsp'><img width="200px" height="200px" src="images/map.png" alt="" /></a>
                   
                </div>                
                
				<div class="cleaner h30"></div>
                
                <h4>Email : info@saadhn.com</h4>
               
                <h6><strong> Company Name : Saadhn</strong></h6>
                IES CAMPUS   <br />
                BHOPAL <br />
				<br /><br />
                Tel :0755-2492231<br />
				
            </div>
            
            <div class="cleaner"></div>
        </div> 
        
    </div>  
    
    <div id="tooplate_footer">
         <a href="" target="_blank">© All Rights Reserved | Design by IES-College Students</a>
    	 
	</div> 
            </div>
             </div>
 
</body>
</html>