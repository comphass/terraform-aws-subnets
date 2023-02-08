# terraform-aws-subnets
This project has the objective to practice how to provide a private and public subnet in AWS.


![diagram](https://res.cloudinary.com/practicaldev/image/fetch/s--tHFs4ymp--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/ph8prp17m1834x2yhzu6.png)

this project was based on this [article](https://dev.to/victordgr8t/launching-a-vpc-with-public-subnet-and-private-subnet-in-aws-using-terraform-5976)

 

## Configuration  

<br>

### Initializing Backend  
```bash
aws-vault exec PROFILE -- terraform init -backend=true -backend-config="config/lab/backend.hcl"
```

