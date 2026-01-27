#!/bin/bash
yum update -y
yum install -y nginx
systemctl enable nginx

# Create custom index.html
cat > /usr/share/nginx/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
  <head></head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>

EOF

# Start nginx
systemctl start nginx