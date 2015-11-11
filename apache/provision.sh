yum -y update
yum -y install httpd
service httpd start
chkconfig httpd on
lsof -i |grep http

touch /var/www/html/index.html
cd /var/www/html
echo '<html>
<head>
<title> The Library</title>
</head>
<body>
    <h2> Welcome to the library!
</h2>
    <br /> <hr> <br />
    <img src="images/library.jpg">
</body>
</html>
'>index.html
mkdir /var/www/html/images
cd /var/www/html/images


touch /var/www/html/members.html
touch /var/www/html/admin.html

chown -R apache:apache /var/www/html

