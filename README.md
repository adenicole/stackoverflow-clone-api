# stackoverflow-clone-api

[![Version](https://img.shields.io/static/v1?label=version&message=2.0.0&color=blue)](https://shields.io/)
[![NPM](https://img.shields.io/static/v1?label=npm&message=6.8.5&color=blue)](https://shields.io/)
[![NODE](https://img.shields.io/static/v1?label=node&message=10.12.8&color=success)](https://shields.io/)
[![MYSQL](https://img.shields.io/static/v1?label=mysql&message=8.0.10&color=blueviolet)](https://shields.io/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://shields.io/)

__[Demo Video](https://www.youtube.com/watch?v=3jDIEf5vNp8)__

Backend repo of the application stackoverflow-clone runing in a seperate container using a microservice architecture to be deployed on the same server as stackoverflow-client(front-end.


#### Back-end
* For handling server requests: `Node.js with Express.js Framework`
* As Database: `MySQL`
* API tested using: `POSTMAN`

### Original Tech Stack
* For handling server requests: `C#`
* As Database: `Microsoft SQL Server`
* `.NET` as well

## Guidelines to setup
1. Create a `.env` file and the format should be as given in `.env.example`.
2. Run these commands then - 
    ```
    npm run installDep (To install all the dependencies)
    
    npm run auditDep (Run this to audit fix all the vulnerabilities)
    ```
3. Run `databaseConfig.sql` file in the mysql client
    ```
    source <file path>/data/databaseConfig.sql
    ```
4. _(Optional)_ Run `seed.sql` file in the mysql client for seed data
    ```
    source <file path>/data/seed.sql
    ```
    _Note: Change the database name in `databaseConfig.sql` & `seed.sql` under `USE` command_
    
5. Start the servers
    ```
   for running both the servers simultaneously:
    
    npm run dev
    

## API Endpoints

#### Base Url - `http://localhost:5000/api`


## Future Scope
* Setup `Sequelize` with `MySQL` in the `API`.
* Deploy the database to cloud, API, and client side.

  
#### IMAGES
<img src="/demo/images/1.png" width=340px /><img src="/demo/images/2.png" width=340px />
<img src="/demo/images/3.png" width=340px /><img src="/demo/images/4.png" width=340px />
<img src="/demo/images/5.png" width=340px /><img src="/demo/images/6.png" width=340px />
<img src="/demo/images/7.png" width=340px /><img src="/demo/images/8.png" width=340px />
<img src="/demo/images/9.png" width=340px /><img src="/demo/images/10.png" width=340px />
<img src="/demo/images/11.png" width=340px /><img src="/demo/images/12.png" width=340px />
