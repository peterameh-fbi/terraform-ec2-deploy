#!/bin/bash
# Update packages
sudo apt-get update -y

# Install Apache
sudo apt-get install -y apache2

# Create a test index.html
echo "<h1>Hello from Terraform EC2 in ap-northeast-3!</h1>" | sudo tee /var/www/html/index.html

# Start Apache
sudo systemctl enable apache2
sudo systemctl start apache2
