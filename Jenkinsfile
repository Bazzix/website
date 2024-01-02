name: CI/CD Pipeline

on:
  push:
    branches:
      - main
      - develop
      - '*'

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Repository
      uses: actions/checkout@v2

    - name: Set up Apache and PHP
      run: |
        sudo apt-get update -y
        sudo apt-get install -y apache2
        sudo systemctl start apache2
        sudo systemctl enable apache2

    - name: Build and Publish Website
      if: github.ref == 'refs/heads/main'
      run: |
        # Build and publish on port 82 for the main branch
        sudo cp -r . /var/www/html
        sudo sed -i 's/80/82/' /etc/apache2/sites-available/000-default.conf
        sudo systemctl restart apache2

    - name: Build Website
      if: github.ref == 'refs/heads/develop'
      run: |
        # Build the product for the develop branch without publishing

    - name: Cleanup
      run: |
        sudo systemctl stop apache2
