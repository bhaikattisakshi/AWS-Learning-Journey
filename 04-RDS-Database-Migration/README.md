# Database Migration to Amazon RDS

## 📌 Project Overview

This project demonstrates the migration of a MySQL database environment to **Amazon RDS for MySQL** and establishes a secure connection between an **Amazon EC2 instance** and the RDS database.
The project also demonstrates basic **CRUD operations** on the database.

## 🏗️ Architecture

EC2 Instance
      |
      | MySQL - Port 3306
      ↓
Amazon RDS for MySQL
      |
      ↓
AWS_PROJECT Database
      |
      ↓
Learners Table

## 🛠️ AWS Services Used

- Amazon EC2
- Amazon RDS for MySQL
- Amazon VPC
- Amazon EC2 Security Groups

## ⚙️ Configuration

### Amazon RDS
- Database Engine: MySQL
- Database Name: AWS_PROJECT
- Port: 3306
- RDS instance configured inside AWS VPC
- Database access restricted through Security Groups

### EC2

The EC2 instance was used as the application environment to connect to the RDS MySQL database.
The MySQL client was used to establish the connection.

## 🔐 Security

The RDS database was configured to allow MySQL traffic on port `3306` from the EC2 environment.
The database was not exposed unnecessarily to the public internet.

## 🔗 RDS Connection

The EC2 instance successfully connected to the RDS MySQL database using:

```bash
mysql -h <RDS-ENDPOINT> -P 3306 -u admin -p
